import CUDArt
using Base.Test
using Compat

#########################
# Device init and close #
#########################
@test length(CUDArt.ptxdict) == 0
CUDArt.init(0)
@test in(0, keys(CUDArt.ptxdict))
CUDArt.close(0)
@test length(CUDArt.ptxdict) == 0

#########################
# Test CUDA array types #
#########################
result = CUDArt.devices(dev->CUDArt.capability(dev)[1] >= 2, nmax=1) do devlist
    # Copying memory to and from device
    @test length(devlist) == 1
    CUDArt.device(devlist[1])
    # Test CudaArrays and CudaPitchedArrays
    for AT in (CUDArt.CudaArray, CUDArt.CudaPitchedArray)
        g = AT(Float64, (5,3))
        if AT == CUDArt.CudaPitchedArray
            p = pointer(g)
            @test p.xsize == 5
            @test p.ysize == 3
        end
        h = CUDArt.to_host(g)
        @test typeof(h) == Array{Float64,2}
        @test size(h) == (5,3)
        g2 = AT(1:5)
        g3 = similar(g2)
        @test eltype(g3) == eltype(g2)
        @test size(g3) == size(g2)
        g3 = similar(g2, Float32)
        @test eltype(g3) == Float32
        g3 = similar(g2, (7,))
        @test eltype(g3) == Int
        @test size(g3) == (7,)
        @test typeof(g3) == AT{Int, 1}
        h2 = CUDArt.to_host(g2)
        @test typeof(h2) == Array{Int,1}
        @test h2 == [1:5;]
        if AT == CUDArt.CudaPitchedArray
            p = pointer(g2)
            @test p.xsize == 5
            @test p.ysize == 1
        end
        # fill!
        fill!(g2, 0x00)
        h2 = CUDArt.to_host(g2)
        @test h2 == zeros(Int, 5)
        fill!(g2, 0)
        h2 = CUDArt.to_host(g2)
        @test h2 == zeros(Int, 5)
        fill!(g, 0.0)
        h = CUDArt.to_host(g)
        @test all(h .== 0)
        fill!(g, 0)
        h = CUDArt.to_host(g)
        @test all(h .== 0)
        fill!(g, 8.4)
        h = CUDArt.to_host(g)
        @test all(h .== 8.4)
        fill!(g, NaN)
        h = CUDArt.to_host(g)
        @test isequal(h, fill(NaN, size(g)))
        gbig = AT(Int32, (2000,1000))
        fill!(gbig, -17)
        hbig = CUDArt.to_host(gbig)
        @test all(hbig .== -17) && size(hbig) == (2000,1000)
    end
    # Getting portions of an array
    h_src = reshape(1.0:15.0, 3, 5)
    d_src = CUDArt.CudaPitchedArray(h_src)
    d_dest = CUDArt.CudaPitchedArray(Float64, (1, 2))
    get!(d_dest, d_src, (2,2:3), NaN)
    h_dest = CUDArt.to_host(d_dest)
    @test h_dest == [5 8]
    get!(d_dest, d_src, (2,0:1), NaN)
    h_dest = CUDArt.to_host(d_dest)
    @test isequal(h_dest, [NaN 2])
    get!(d_dest, d_src, (3,5:6), 7.3)
    h_dest = CUDArt.to_host(d_dest)
    @test isequal(h_dest, [15 7.3])
    # Copies between CudaPitchedArrays and CudaArrays
    A = rand(@compat(map(UInt16, 5:11)), 7, 2)
    GA = CUDArt.CudaArray(A)
    GP = CUDArt.CudaPitchedArray(eltype(A), size(A))
    copy!(GP, GA)
    H = CUDArt.to_host(GP)
    @test H == A
    A[3,2] = 0
    copy!(GP, A)
    copy!(GA, GP)
    H = CUDArt.to_host(GA)
    @test H == A
    # HostArray (pinned memory)
    A = CUDArt.HostArray(Int32, (6,4))
    A[2,2] = 7
    @test A[2,2] == 7
    G = CUDArt.CudaArray(A)
    CUDArt.device_synchronize()
    A[2,2] = 3
    @test A[2,2] == 3
    copy!(A, G)
#     @test A[2,2] == 3  # asynchronous
    CUDArt.device_synchronize()
    @test A[2,2] == 7
    S = pointer_to_array(pointer(A)+48, (6,2), false)  # a "SubArray"
    B = rand(@compat(map(Int32, 1:15)), 6, 2)
    GB = CUDArt.CudaArray(B)
    copy!(S, GB)
    CUDArt.device_synchronize()
    @test A[:,3:4] == B
    GB = CUDArt.CudaPitchedArray(2B)
    copy!(S, GB)
    CUDArt.device_synchronize()
    @test A[:,3:4] == 2B
end

#####################
# Executing kernels #
#####################
result = CUDArt.devices(dev->CUDArt.capability(dev)[1] >= 2, nmax=1) do devlist
    CUDArt.device(devlist[1])
    a = rand(Float32, 3, 4)
    b = rand(Float32, 3, 4)
    c = CUDArt.CuModule("vadd.ptx") do md
        vadd = CUDArt.CuFunction(md, "vadd")
        ga = CUDArt.CudaArray(a)
        gb = CUDArt.CudaArray(b)
        gc = CUDArt.CudaArray(Float32, size(a))
        CUDArt.launch(vadd, length(a), 1, (ga, gb, gc))
        CUDArt.to_host(gc)
    end
    @test_approx_eq c (a+b)
end

gc()  # check for finalizer errors

#########################################
# Multiple devices, streams, and wait() #
#########################################
if CUDArt.devcount() > 1
    CUDArt.devices(dev->true, nmax=2) do devlist
        sleeptime = 0.5
        results = Array(Any, ceil(Int, 2.5*length(devlist)))
        streams = [(CUDArt.device(dev); CUDArt.Stream()) for dev in devlist]
        # Force one run to precompile
        CUDArt.cudasleep(sleeptime; dev=devlist[1], stream=streams[1])
        wait(streams[1])
        i = 1
        nextidx() = (idx=i; i+=1; idx)
        @sync begin
            for idev = 1:length(devlist)
                sleep(0.01)
                @async begin
                    while true
                        idx = nextidx()
                        if idx > length(results)
                            break
                        end
                        tstart = time()
                        dev = devlist[idev]
                        stream = streams[idev]
                        CUDArt.cudasleep(sleeptime; dev=dev, stream=stream)
                        wait(stream)
                        tstop = time()
                        results[idx] = (tstart, tstop, dev)
                    end
                end
            end
        end
        for i = 1:length(results)
            r = results[i]
            @test sleeptime <= (r[2]-r[1]) <= 1.1*sleeptime
            @test r[3] == devlist[mod1(i, 2)]
        end
        @test results[end][2]-results[1][1] < 1.1*sleeptime*ceil(Int, length(results)/length(devlist))
        nothing
    end
end
