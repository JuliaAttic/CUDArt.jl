module CUDArt_gen  # the generated module

# Determine the location of the CUDArt library.
function find_cudart_lib()
    return @windows? begin
        # location of cudart64_xx.dll or cudart32_xx.dll have to be in PATH env var
        # ex: C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v6.5\bin
        # (by default, it is done by CUDA toolkit installer)

        const dllnames = ["cudart$(WORD_SIZE)_$ver" for ver in (75, 70, 65, 60, 55, 50, "50_35")]
        Libdl.find_library(dllnames, [""])
    end : begin # linux or mac
        const libdir = (WORD_SIZE==64) ? "lib64" : "lib"
        const locations = ["/usr/local/$libdir", "/opt/$libdir"]
        const prefixes = ["cuda", ["cuda-$ver" for ver in ("7.5", "7.0", "6.5", "6.0", "5.5", "5.0")]...]
        const paths = [joinpath(loc, pref) for loc in locations, pref in prefixes]
        Libdl.find_library(["libcudart", "cudart"], vec(paths))
    end
end

const libcudart = find_cudart_lib()

if isempty(libcudart)
    error("CUDA runtime API library cannot be found")
end

# Determine the version of the CUDArt library.
function cudart_version()
    a = Cint[0]
    ccall((:cudaRuntimeGetVersion,libcudart),UInt32,(Ptr{Cint},),a)
    VersionNumber(div(a[1], 1000), div(a[1] % 100, 10))
end

# Figure out which wrapper (`gen-*` folder) to use.
function find_wrapper_ver(cudartver)
    # Get a list of versions we've got wrappers for.
    gendirs = filter(d->startswith(d, "gen-"), readdir(Pkg.dir("CUDArt")))
    wraps = [VersionNumber(d[5:end]) => d for d in gendirs]

    # Find the highest version we can use.
    wrapvers = sort(collect(keys(wraps)))
    idx = findlast(v -> v<=cudartver, wrapvers)

    # Fall-back to the olders one we have and print out a warning.
    if idx == 0
        idx = 1
        warn("CUDA version is very old, consider updating.")
    end

    return wrapvers[idx], wraps[wrapvers[idx]]
end
const (wrapver, wrapdir) = find_wrapper_ver(cudart_version())

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

include("../$wrapdir/gen_libcudart_h.jl")
include("../$wrapdir/gen_libcudart.jl")

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
