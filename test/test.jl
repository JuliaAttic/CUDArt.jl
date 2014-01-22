import CUDArt
using Base.Test

result = CUDArt.devices(dev->CUDArt.capability(dev)[1] >= 2, 1) do devlist
    # Copying memory to and from device
    @test length(devlist) == 1
    CUDArt.device(devlist[1])
    g = CUDArt.CudaArray(Float64, (4,4))
    h = CUDArt.to_host(g)
    @test typeof(h) == Array{Float64,2}
    @test size(h) == (4,4)
    g2 = CUDArt.CudaArray(1:5)
    h2 = CUDArt.to_host(g2)
    @test typeof(h2) == Array{Int,1}
    @test h2 == 1:5
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
