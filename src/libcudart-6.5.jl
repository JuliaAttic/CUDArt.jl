module CUDArt_gen  # the generated module

# In the runtime API, these are all used only inside Ptrs,
# so these typealiases are safe (if you don't need access to
# struct elements)
typealias cudaUUID_t Void

function checkerror(code::Cuint)
    if code == cudaSuccess
        return nothing
    end
    # Because try/finally may disguise the source of the problem,
    # let's show a backtrace here
    warn("CUDA error triggered from:")
    Base.show_backtrace(STDOUT, backtrace())
    throw(bytestring(cudaGetErrorString(code)))
end

include("../gen-6.5/gen_libcudart_h.jl")

typealias cudaError_t cudaError

@windows? (
begin
    # location of cudart64_xx.dll or cudart32_xx.dll have to be in PATH env var
    # ex: C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v6.5\bin
    # (by default, it is done by CUDA toolkit installer)

    const dllnames = (WORD_SIZE==64) ?
        ["cudart64_70", "cudart64_65", "cudart64_60", "cudart64_55", "cudart64_50", "cudart64_50_35"] :
        ["cudart32_70", "cudart32_65", "cudart32_60", "cudart32_55", "cudart32_50", "cudart32_50_35"]
    const libcudart = Libdl.find_library(dllnames, [""])
end
: # linux or mac
begin
    const libdir = (WORD_SIZE==64) ? "lib64" : "lib"
    const libcudart = Libdl.find_library(["libcudart", "cudart"], ["/usr/local/cuda/$libdir", "/usr/local/cuda-6.5/$libdir", "/usr/local/cuda-6.0/$libdir", "/usr/local/cuda-5.5/$libdir", "/usr/local/cuda-5.0/$libdir", "/usr/local/cuda-7.0/$libdir"])
end)

if isempty(libcudart)
    error("CUDA runtime API library cannot be found")
end

include("../gen-6.5/gen_libcudart.jl")

# # Make cudaSetupArgument more convenient
# function cudaSetupArgument(arg, size, offset)
#   checkerror(ccall( (:cudaSetupArgument, libcudart), cudaError_t, (Ptr{Void}, Csize_t, Csize_t), &arg, size, offset))
# end

# Fix issues stemming from the inability to pass structs as args
const libwrapcuda = Libdl.find_library(["libwrapcuda"],[joinpath(Pkg.dir(), "CUDArt", "deps")])
isempty(libwrapcuda) && error("Cannot find libwrapcuda")

function cudaMalloc3D(p::Array{cudaPitchedPtr,1}, ext::cudaExtent)
    checkerror(ccall((:wrapcudaMalloc3D, libwrapcuda), cudaError_t, (Ptr{cudaPitchedPtr}, Ptr{cudaExtent}), p, &ext))
end
function cudaMemset3D(pitchedDevPtr::cudaPitchedPtr, value::UInt8, extent::cudaExtent)
  checkerror(ccall( (:wrapcudaMemset3D, libwrapcuda), cudaError_t, (Ptr{cudaPitchedPtr}, Cint, Ptr{cudaExtent}), &pitchedDevPtr, value, &extent))
end

# # Issue warning, not error, on bad cudaFree
# function cudaFree(devPtr)
#     code = ccall( (:cudaFree, libcudart), cudaError_t, (Ptr{Void},), devPtr)
#     if code != cudaSuccess
#         warn(string(bytestring(cudaGetErrorString(code)), " on ", devPtr))
#         Base.show_backtrace(STDOUT, backtrace())
#     end
# end

# Convenience constructors
cudaPitchedPtr() = cudaPitchedPtr(C_NULL, 0, 0, 0)
cudaPitchedPtr(pp::cudaPitchedPtr, xsize::Integer) = cudaPitchedPtr(pp.ptr, pp.pitch, xsize, pp.ysize)

end
