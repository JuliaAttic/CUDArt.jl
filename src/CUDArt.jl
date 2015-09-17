isdefined(Base, :__precompile__) && __precompile__()

module CUDArt

export
    # pointer symbols
    CudaPtr, rawpointer, CUDA_NULL,
    # array symbols
    AbstractCudaArray, AbstractCudaVector, AbstractCudaMatrix,
    CudaArray, CudaVector, CudaMatrix, CudaVecOrMat,
    CudaPitchedArray, HostArray, to_host,
    # other symbols
    device, devices, device_reset, attribute, capability,
    driver_version, runtime_version,
    CuModule, CuFunction, unload,
    pitchel, pitchbytes,
    launch, device_synchronize, synchronize,
    Stream, null_stream, cudasleep,
    destroy, free, cudafinalizer

import Base: ==, -, +, getindex, setindex!
import Base: length, size, ndims, eltype, similar, pointer, stride,
    copy, convert, reinterpret, show, summary,
    copy!, get!, fill!, wait, unsafe_convert

# Prepare the CUDA runtime API bindings
include("libcudart-6.5.jl")
import .CUDArt_gen
const rt = CUDArt_gen

# To load PTX code, we also need access to the driver API module utilities
@windows? (
begin
    const libcuda = Libdl.find_library(["nvcuda"], [""])
end
: # linux or mac
begin
    const libcuda = Libdl.find_library(["libcuda"], ["/usr/lib/", "/usr/local/cuda/lib"])
end)

if isempty(libcuda)
    error("CUDA driver API library cannot be found")
end

include("version.jl")
include("types.jl")
include("module.jl")
include("device.jl")
include("stream.jl")
#include("event.jl")
include("pointer.jl")
include("arrays.jl")
include("execute.jl")

if isdefined(Base, :__precompile__)
    include("precompile.jl")
    _precompile_()
end

function __init__()
    c_async_send_cudastream[] = cfunction(async_send_cudastream, Void, (rt.cudaStream_t, rt.cudaError_t, Ptr{Void}))
end

end
