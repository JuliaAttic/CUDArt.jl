module CUDArt

export
    device, devices, attribute, capability,
    driver_version, runtime_version,
    CuModule, CuFunction, unload,
    AbstractCudaArray, CudaArray, CudaPitchedArray, HostArray,
    AbstractCudaArray, CudaArray, CudaPitchedArray,
    to_host, pitchel, pitchbytes,
#     dim3, configure_call, 
    launch, device_synchronize, synchronize,
    Stream, null_stream, cudasleep,
    destroy, free, cudafinalizer

import Base: length, size, ndims, eltype, similar, pointer,
    convert, reinterpret, show,
    copy!, get!, fill!, wait

# Prepare the CUDA runtime API bindings
include("libcudart.jl")
import .CUDArt_gen
const rt = CUDArt_gen

# To load PTX code, we also need access to the driver API module utilities
const libcuda = find_library(["libcuda"], ["/usr/local/cuda"])
if isempty(libcuda)
    error("CUDA driver API library cannot be found")
end

include("version.jl")
include("types.jl")
include("device.jl")
include("stream.jl")
#include("event.jl")
include("module.jl")
include("arrays.jl")
include("execute.jl")

end
