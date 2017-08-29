using CUDArt
import CUDAdrv
using Base.Test

dev = CUDAdrv.CuDevice(0)
ctx = CUDAdrv.CuContext(dev)

CUDArt.clean_cache()   # for deterministic testing purposes


## basic compilation & execution

let
    CUDArt.@compile dev kernel """
    __global__ void kernel()
    {
    }
    """

    CUDAdrv.cudacall(kernel, 1, 1, ())
end

@test_throws CompileError let
    CUDArt.@compile dev kernel """
    __global__ void kernel()
    {
        invalid code
    }
    """
end

@test_throws CUDAdrv.CuError let
    CUDArt.@compile dev wrongname """
    __global__ void kernel()
    {
    }
    """
end


## argument passing

dims = (16, 16)
len = prod(dims)

CUDArt.@compile dev kernel_copy """
__global__ void kernel_copy(const float *input, float *output)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    output[i] = input[i];
}
"""

let
    input = round.(rand(Cfloat, dims) * 100)

    input_dev = CUDAdrv.CuArray(input)
    output_dev = CUDAdrv.CuArray{Cfloat}(dims)

    CUDAdrv.cudacall(kernel_copy, 1, len,
                     Tuple{Ptr{Cfloat}, Ptr{Cfloat}},
                     input_dev, output_dev)
    output = Array(output_dev)
    @test input ≈ output
end


CUDAdrv.destroy!(ctx)
