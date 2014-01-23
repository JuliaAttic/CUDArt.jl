import CUDArt
using Base.Test

result = CUDArt.devices(dev->CUDArt.capability(dev)[1] >= 2, 1) do devlist
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
