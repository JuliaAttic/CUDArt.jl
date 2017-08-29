using CUDAdrv, CUDArt
using Base.Test

using Compat

dev = CuDevice(0)
ctx = CuContext(dev)

CUDArt.@compile dev kernel_vadd """
    __global__ void kernel_vadd(const float *a, const float *b, float *c)
    {
        int i = blockIdx.x *blockDim.x + threadIdx.x;
        c[i] = a[i] + b[i];
    }
"""

dims = (3,4)
a = round.(rand(Float32, dims) * 100)
b = round.(rand(Float32, dims) * 100)

d_a = CuArray(a)
d_b = CuArray(b)
d_c = similar(d_a)

len = prod(dims)
cudacall(kernel_vadd, len, 1, Tuple{Ptr{Cfloat},Ptr{Cfloat},Ptr{Cfloat}}, d_a, d_b, d_c)
c = Array(d_c)
@test a+b ≈ c

destroy!(ctx)
