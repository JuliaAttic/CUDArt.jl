using CUDArt
import CUDAdrv
using Base.Test

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
# Test function for issue #41
function func41(a, dims)
    b = reinterpret(eltype(a), a, dims)
    Cint[size(b)...]
end

result = devices(dev->capability(dev)[1] >= 2, nmax=1) do devlist
    # Copying memory to and from device
    @test length(devlist) == 1
    device(devlist[1])
    # Test CudaArrays and CudaPitchedArrays
    for AT in (CudaArray, CudaPitchedArray)
        g = AT(Float64, (5,3))
        if AT == CudaPitchedArray
            p = pointer(g)
            @test p.xsize == 5
            @test p.ysize == 3
        end
        h = to_host(g)
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
        h2 = to_host(g2)
        @test typeof(h2) == Array{Int,1}
        @test h2 == [1:5;]
        if AT == CudaPitchedArray
            p = pointer(g2)
            @test p.xsize == 5
            @test p.ysize == 1
        end
        # fill!
        fill!(g2, 0x00)
        h2 = to_host(g2)
        @test h2 == zeros(Int, 5)
        fill!(g2, 0)
        h2 = to_host(g2)
        @test h2 == zeros(Int, 5)
        fill!(g, 0.0)
        h = to_host(g)
        @test all(h .== 0)
        fill!(g, 0)
        h = to_host(g)
        @test all(h .== 0)
        fill!(g, 8.4)
        h = to_host(g)
        @test all(h .== 8.4)
        fill!(g, NaN)
        h = to_host(g)
        @test isequal(h, fill(NaN, size(g)))
        gbig = AT(Int32, (2000,1000))
        fill!(gbig, -17)
        hbig = to_host(gbig)
        @test all(hbig .== -17) && size(hbig) == (2000,1000)
        # Element-type conversions
        h32 = rand(Float32, (5,3))
        g64 = AT(Float64, (5,3))
        copy!(g64, h32)
        # AbstractArray fallbacks
        s32 = view(h32, 5:-1:1, :)
        copy!(g64, s32)
    end
    # Getting portions of an array
    h_src = reshape(1.0:15.0, 3, 5)
    d_src = CudaPitchedArray(h_src)
    d_dest = CudaPitchedArray(Float64, (1, 2))
    get!(d_dest, d_src, (2,2:3), NaN)
    h_dest = to_host(d_dest)
    @test h_dest == [5 8]
    get!(d_dest, d_src, (2,0:1), NaN)
    h_dest = to_host(d_dest)
    @test isequal(h_dest, [NaN 2])
    get!(d_dest, d_src, (3,5:6), 7.3)
    h_dest = to_host(d_dest)
    @test isequal(h_dest, [15 7.3])
    # Copies between CudaPitchedArrays and CudaArrays
    A = rand(map(UInt16, 5:11), 7, 2)
    GA = CudaArray(A)
    GP = CudaPitchedArray(eltype(A), size(A))
    copy!(GP, GA)
    H = to_host(GP)
    @test H == A
    A[3,2] = 0
    copy!(GP, A)
    copy!(GA, GP)
    H = to_host(GA)
    @test H == A
    # HostArray (pinned memory)
    A = HostArray(Int32, (6,4))
    A[2,2] = 7
    @test A[2,2] == 7
    G = CudaArray(A)
    device_synchronize()
    A[2,2] = 3
    @test A[2,2] == 3
    copy!(A, G)
#     @test A[2,2] == 3  # asynchronous
    device_synchronize()
    @test A[2,2] == 7
    S = unsafe_wrap(Array, pointer(A)+48, (6,2), false)  # a "SubArray"
    B = rand(map(Int32, 1:15), 6, 2)
    GB = CudaArray(B)
    copy!(S, GB)
    device_synchronize()
    @test A[:,3:4] == B
    GB = CudaPitchedArray(2B)
    copy!(S, GB)
    device_synchronize()
    @test A[:,3:4] == 2B
    # test vec
    let
        m = 20
        n = 5
        Am = rand(m, n)
        Av = rand(n)
        d_Am = CudaArray(Am)
        d_Av = CudaArray(Av)
        d_Amvec = vec(d_Am)
        d_Avvec = vec(d_Av)
        @test to_host(d_Amvec) == vec(Am)
        @test to_host(d_Avvec) == Av
    end
    # Issue #41
    a = CudaArray(zeros(2))
    @test func41(a, (2,1,1,1)) == Cint[2,1,1,1]
    # Comment in PR #50
    cudasleep(1)
end

gc()  # check for finalizer errors

#########################################
# Streams, multiple devices, and wait() #
#########################################
devices(dev->CUDArt.capability(dev)[1] >= 2, nmax=1) do devlist
    sleeptime = 0.5
    dev = first(devlist)
    device(dev)
    stream = Stream()
    # Force one run to precompile
    cudasleep(sleeptime; dev=dev, stream=stream)
    wait(stream)
    # Since the frequency is dynamic, cudasleep can be unreliable (at
    # least on some GPUs), so do a median-of-3
    sleeptimes = Float64[0, 0, 0]
    for i = 1:3
        tstart = time()
        cudasleep(sleeptime; dev=dev, stream=stream)
        wait(stream)
        tstop = time()
        sleeptimes[i] = tstop - tstart
    end
    @test 0.75*sleeptime <= median(sleeptimes) <= 1.25*sleeptime
end

if devcount() > 1
    devices(dev->true, nmax=2) do devlist
        sleeptime = 0.5
        results = Array{Any}(ceil(Int, 2.5*length(devlist)))
        streams = [(device(dev); Stream()) for dev in devlist]
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
                        cudasleep(sleeptime; dev=dev, stream=stream)
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
