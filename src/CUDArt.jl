__precompile__()

module CUDArt

import CUDAdrv
using Compat

export
    # pointer symbols
    CudaPtr, rawpointer, CUDA_NULL,
    # array symbols
    AbstractCudaArray, AbstractCudaVector, AbstractCudaMatrix,
    CudaArray, CudaVector, CudaMatrix, CudaVecOrMat,
    CudaPitchedArray, HostArray, to_host,
    # other symbols
    device, devices, devcount, device_reset, attribute, capability,
    driver_version, runtime_version,
    pitchel, pitchbytes,
    device_synchronize, synchronize,
    Stream, null_stream, cudasleep,
    destroy, free, cudafinalizer, wait_free

import Base: ==, -, +, getindex, setindex!,
    length, size, ndims, eltype, similar, pointer, stride,
    copy, convert, reinterpret, show, summary,
    copy!, get!, fill!, wait, unsafe_convert, vec

# Prepare the CUDA runtime API bindings
include("libcudart-6.5.jl")
import .CUDArt_gen
const rt = CUDArt_gen

const ext = joinpath(dirname(@__DIR__), "deps", "ext.jl")
if isfile(ext)
    include(ext)
else
    error("Unable to load dependency file $ext.\nPlease run Pkg.build(\"CUDArt\") and restart Julia.")
end
const libcudart = libcudart_path
const libnvml = libnvml_path
const nvidia_smi = nvidiasmi_path

include("version.jl")
include("types.jl")
include("device.jl")
include("stream.jl")
include("pointer.jl")
include("arrays.jl")
include("compile.jl")
include("execute.jl")

include("precompile.jl")

function __init__()
    c_async_send_cudastream[] = cfunction(async_send_cudastream, Void, (rt.cudaStream_t, rt.cudaError_t, Ptr{Void}))
end

end
