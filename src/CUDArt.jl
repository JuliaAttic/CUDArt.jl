module CUDArt

using Compat

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

import Base: length, size, ndims, eltype, similar, pointer, stride,
    copy, convert, reinterpret, show, summary,
    copy!, get!, fill!, wait

# Prepare the CUDA runtime API bindings
include("libcudart-6.5.jl")
import .CUDArt_gen
const rt = CUDArt_gen

# To load PTX code, we also need access to the driver API module utilities
@windows? (
begin
    const libcuda = find_library(["nvcuda"], [""])
end
: # linux or mac
begin
    const libcuda = find_library(["libcuda"], ["/usr/lib/"])
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

end
