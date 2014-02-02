# First, edit gen_libcudart_h.jl to delete the broken definition of
# cudaResourceDesc

module CUDArt_gen  # the generated module

# In the runtime API, these are all used only inside Ptrs,
# so these typealiases are safe (if you don't need access to
# struct elements)
typealias cudaArray Void
typealias cudaMipmappedArray Void
typealias CUstream_st Void
typealias CUevent_st Void
typealias cudaGraphicsResource Void
typealias cudaUUID_t Void

#immutable Array_256_Uint8

typealias cudaResourceDesc Void

function checkerror(code::Cuint)
    if code == cudaSuccess
        return nothing
    end
    # Because try/finally may disguise the source of the problem, let's show a backtrace here
    warn("CUDA error triggered from:")
    Base.show_backtrace(STDOUT, backtrace())
    throw(bytestring(cudaGetErrorString(code)))
end

include("../gen/gen_libcudart_h.jl")

typealias cudaError_t cudaError

const libcudart = find_library(["libcudart", "cudart"], ["/usr/local/cuda"])
if isempty(libcudart)
    error("CUDA runtime API library cannot be found")
end

include("../gen/gen_libcudart.jl")

# # Make cudaSetupArgument more convenient
# function cudaSetupArgument(arg, size, offset)
#   checkerror(ccall( (:cudaSetupArgument, libcudart), cudaError_t, (Ptr{None}, Csize_t, Csize_t), &arg, size, offset))
# end

# Fix issues stemming from the inability to pass structs as args
const libwrapcuda = find_library(["libwrapcuda"],[joinpath(Pkg.dir(), "CUDArt", "deps")])
isempty(libwrapcuda) && error("Cannot find libwrapcuda")

function cudaMalloc3D(p::Array{cudaPitchedPtr,1}, ext::cudaExtent)
    checkerror(ccall((:wrapcudaMalloc3D, libwrapcuda), cudaError_t, (Ptr{cudaPitchedPtr}, Ptr{cudaExtent}), p, &ext))
end
function cudaMemset3D(pitchedDevPtr::cudaPitchedPtr, value::Uint8, extent::cudaExtent)
  checkerror(ccall( (:wrapcudaMemset3D, libwrapcuda), cudaError_t, (Ptr{cudaPitchedPtr}, Cint, Ptr{cudaExtent}), &pitchedDevPtr, value, &extent))
end

# # Issue warning, not error, on bad cudaFree
# function cudaFree(devPtr)
#     code = ccall( (:cudaFree, libcudart), cudaError_t, (Ptr{None},), devPtr)
#     if code != cudaSuccess
#         warn(string(bytestring(cudaGetErrorString(code)), " on ", devPtr))
#         Base.show_backtrace(STDOUT, backtrace())
#     end
# end

# Convenience constructors
cudaPitchedPtr() = cudaPitchedPtr(C_NULL, 0, 0, 0)
cudaPitchedPtr(pp::cudaPitchedPtr, xsize::Integer) = cudaPitchedPtr(pp.ptr, pp.pitch, xsize, pp.ysize)

end
