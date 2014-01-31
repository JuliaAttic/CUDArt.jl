import CUDArt
using Base.Test

##########################
# Low-level memory tests #
##########################
devlist = CUDArt.devices(dev->true)
for dev in devlist
    CUDArt.device(dev)
    p = CUDArt.malloc(Uint8, 1)
    p2 = CUDArt.malloc(Uint16, 100)
    CUDArt.free(p)
    CUDArt.free(p2)
    a = rand(5,3)
    g = CUDArt.CudaArray(a)
    gp = CUDArt.CudaPitchedArray(a)
    CUDArt.free(g)
    CUDArt.free(gp)
    # Also test finalizer calls
    g = CUDArt.CudaArray(a)
    g = CUDArt.CudaPitchedArray(a)
    CUDArt.device_reset(dev)
end

gc()  # check for finalizer errors

# Test free when the allocated device is not the current device
if length(devlist) > 1
    CUDArt.device(devlist[1])
    p1a = CUDArt.malloc(Uint8, 1)
    p1 = CUDArt.malloc(Uint16, 100)
    CUDArt.device(devlist[2])
    p2 = CUDArt.malloc(Uint16, 100)
    CUDArt.free(p1)
    CUDArt.free(p2)
    CUDArt.free(p1a)
    CUDArt.device_reset(devlist[1])
    CUDArt.device_reset(devlist[2])    
end

gc()

# Check whether gc/finalizers lead to bad behavior across
# device resets (the pointer address is reproducible)
CUDArt.device(0)
a = rand(5,3)
g = CUDArt.CudaArray(a)
CUDArt.device_reset(0)
@test isempty(CUDArt.cuda_ptrs)
CUDArt.device(0)
g = CUDArt.CudaArray(a)
gc()   # Check that this doesn't delete the new g
@test !isempty(CUDArt.cuda_ptrs)
h_g = CUDArt.to_host(g)
CUDArt.free(g)
@test isempty(CUDArt.cuda_ptrs)
@test h_g == a
CUDArt.device_reset(0)

gc()

##############################################
# Test CUDA array types and kernel execution #
##############################################
result = CUDArt.devices(dev->CUDArt.capability(dev)[1] >= 2, nmax=1) do devlist
    # Copying memory to and from device
    @test length(devlist) == 1
    CUDArt.device(devlist[1])
    # Test CudaArrays and CudaPitchedArrays
    for AT in (CUDArt.CudaArray, CUDArt.CudaPitchedArray)
        g = AT(Float64, (5,3))
        h = CUDArt.to_host(g)
        @test typeof(h) == Array{Float64,2}
        @test size(h) == (5,3)
        g2 = AT(1:5)
        h2 = CUDArt.to_host(g2)
        @test typeof(h2) == Array{Int,1}
        @test h2 == 1:5
        # fill!
        fill!(g2, uint8(0))
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
        @test isequal(h, nans(size(g)))
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
    # Executing kernels
    a = rand(Float32, 3, 4)
    b = rand(Float32, 3, 4)
    c = CUDArt.CuModule("vadd.ptx") do md
        vadd = CUDArt.CuFunction(md, "vadd")
        ga = CUDArt.CudaArray(a)
        gb = CUDArt.CudaArray(b)
        gc = CUDArt.CudaArray(Float32, size(a))
        CUDArt.launch(vadd, 12, 1, (ga, gb, gc))
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
        results = Array(Any, int(2.5*length(devlist)))
        streams = [(CUDArt.device(dev); CUDArt.Stream()) for dev in devlist]
        i = 1
        nextidx() = (idx=i; i+=1; idx)
        @sync begin
            for idev = 1:length(devlist)
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
                        CUDArt.wait(stream)
                        tstop = time()
                        results[idx] = (tstart, tstop, dev)
                    end
                end
            end
        end
        for i = 1:length(results)
            r = results[i]
            @test sleeptime <= (r[2]-r[1]) <= 1.2*sleeptime
            @test r[3] == devlist[mod1(i, 2)]
        end
        nothing
    end
end
