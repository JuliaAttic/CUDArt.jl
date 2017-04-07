__precompile__()

module CUDArt

using CUDAdrv

using Compat
import Compat: UTF8String, ASCIIString

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
    pitchel, pitchbytes,
    device_synchronize, synchronize,
    Stream, null_stream, cudasleep,
    destroy, free, cudafinalizer, wait_free

import Base: ==, -, +, getindex, setindex!
import Base: length, size, ndims, eltype, similar, pointer, stride,
    copy, convert, reinterpret, show, summary,
    copy!, get!, fill!, launch, wait, unsafe_convert, vec

# Prepare the CUDA runtime API bindings
include("libcudart-6.5.jl")
import .CUDArt_gen
const rt = CUDArt_gen

# To load PTX code, we also need access to the driver API module utilities
if is_windows()
    const libcuda = Libdl.find_library(["nvcuda"], [""])
else # linux or mac
    const libcuda = Libdl.find_library(["libcuda"], ["/usr/lib/", "/usr/local/cuda/lib"])
end

if isempty(libcuda)
    error("CUDA driver API library cannot be found")
end

include("version.jl")
include("types.jl")
include("device.jl")
include("stream.jl")
#include("event.jl")
include("pointer.jl")
include("arrays.jl")
include("execute.jl")

include("precompile.jl")
_precompile_()

function __init__()
    c_async_send_cudastream[] = cfunction(async_send_cudastream, Void, (rt.cudaStream_t, rt.cudaError_t, Ptr{Void}))
end

end
