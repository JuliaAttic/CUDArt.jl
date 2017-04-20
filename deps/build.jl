using Compat


## API routines

# these routines are the bare minimum we need from the API during build;
# keep in sync with the actual implementations in src/

macro apicall(libpath, fn, types, args...)
    quote
        lib = Libdl.dlopen($(esc(libpath)))
        sym = Libdl.dlsym(lib, $(esc(fn)))

        status = ccall(sym, Cint, $(esc(types)), $(map(esc, args)...))
        status != 0 && error("error $status calling $fn")
    end
end

function version(libpath)
    ref = Ref{Cint}()
    @apicall(libpath, :cudaRuntimeGetVersion, (Ptr{Cint}, ), ref)
    return VersionNumber(ref[] ÷ 1000, mod(ref[], 100) ÷ 10)
end

function devcount(libpath)
    ref = Ref{Cint}()
    @apicall(libpath, :cudaGetDeviceCount, (Ptr{Cint},), ref)
    return ref[]
end

function attribute(libpath, attr, dev)
    ref = Ref{Cint}()
    @apicall(libpath, :cudaDeviceGetAttribute, (Ptr{Cint}, Cint, Cint), ref, attr, dev)
    return ref[]
end

const cudaDevAttrComputeCapabilityMajor = 75
const cudaDevAttrComputeCapabilityMinor = 76
function capability(libpath, dev)
    major = attribute(libpath, cudaDevAttrComputeCapabilityMajor, dev)
    minor = attribute(libpath, cudaDevAttrComputeCapabilityMinor, dev)
    return VersionNumber(major, minor)
end


## discovery routines

const ext = joinpath(@__DIR__, "ext.jl")

"Return path of CUDA toolkit and the runtime library."
function find_cuda()
    cudapath_envs = ["CUDA_PATH", "CUDA_HOME", "CUDA_ROOT"] 
    cudapath = Nullable{String}()
    if any(x -> haskey(ENV, x), cudapath_envs)
        cudapath_envs = cudapath_envs[map(x -> haskey(ENV, x), cudapath_envs)]
        if !all(i -> i == cudapath_envs[1], cudapath_envs)
            warn("Multiple, non-equivalent CUDA path variables found in environment.")
            cudapath = Nullable(ENV[first(cudapath_envs)])
            warn("Arbitrarily selecting CUDA at $(get(cudapath)). To ensure a consistent path, ensure only one CUDA path environment variable is set.")
        else
            cudapath = Nullable(ENV[first(cudapath_envs)])
        end
    end
    cudapaths = isnull(cudapath) ? [] : [get(cudapath)]

    libcudart_names = ["libcudart", "cudart"]
    libcudart = Libdl.find_library(libcudart_names, cudapaths)
    if isempty(libcudart)
        if is_windows()
            # location of cudart64_xx.dll or cudart32_xx.dll have to be in PATH env var
            # ex: C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v6.5\bin (by default, it is done by CUDA toolkit installer)
            dllnames = Sys.WORD_SIZE == 64 ?
                ["cudart64_70", "cudart64_65", "cudart64_60", "cudart64_55", "cudart64_50", "cudart64_50_35"] :
                ["cudart32_70", "cudart32_65", "cudart32_60", "cudart32_55", "cudart32_50", "cudart32_50_35"]
            libcudart = Libdl.find_library(dllnames)
        else # linux or mac
            libdir = Sys.WORD_SIZE == 64 ? "lib64" : "lib"
            libcudart = Libdl.find_library(libcudart_names,
                                ["/usr/local/cuda/$libdir", "/usr/local/cuda-6.5/$libdir", "/usr/local/cuda-6.0/$libdir",
                                 "/usr/local/cuda-5.5/$libdir", "/usr/local/cuda-5.0/$libdir", "/usr/local/cuda-7.0/$libdir"])
        end
    end
    isempty(libcudart) && error("CUDA runtime library cannot be found.")


    # find the full path of the library
    # NOTE: we could just as well use the result of `find_library,
    # but the user might have run this script with eg. LD_LIBRARY_PATH set
    # so we save the full path in order to always be able to load the correct library
    libcudart_path = Libdl.dlpath(libcudart)

    return cudapath, libcudart
end

"Return paths of libnvml library and nvidia-smi executable."
function find_nvml_smi()
    nvml_libdir = is_windows() ? joinpath(ENV["ProgramFiles"], "NVIDIA Corporation", "NVSMI") : ""
    if is_windows() && !isdir(nvml_libdir)
        error("Could not determine Nvidia driver installation location.")
    end
    libnvml = Libdl.find_library(["libnvidia-ml", "nvml"], [nvml_libdir])

    if isempty(libnvml)
        warn("NVML not found, resorting to nvidia-smi")
    end

    if is_windows()
        nvidiasmi = joinpath(nvml_libdir, "nvidia-smi.exe")
    else
        nvidiasmi = "nvidia-smi"
    end
    if !success(`$nvidiasmi`)
        warn("nvidia-smi failure")
        nvidiasmi = ""
    end

    if isempty(nvidiasmi) && isempty(libnvml)
        error("NVML nor nvidia-smi can be found.")
    end

    libnvml, nvidiasmi
end


## main build

function setup_ext()
    cudapath, libcudart_path = find_cuda()
    libnvml_path, nvidiasmi_path = find_nvml_smi()

    libcudart_version = version(libcudart_path)

    # check if we need to rebuild
    if isfile(ext)
        info("Checking validity of existing ext.jl.")
        @eval module Previous; include($ext); end
        if isdefined(Previous, :home) && Previous.cudapath == cudapath &&
        isdefined(Previous, :libcudart_version) && Previous.libcudart_version == libcudart_version &&
        isdefined(Previous, :libcudart_path)  && Previous.libcudart_path == libcudart_path &&
        isdefined(Previous, :libnvml_path)  && Previous.libnvml_path == libnvml_path
        isdefined(Previous, :nvidiasmi_path)  && Previous.nvidiasmi_path == nvidiasmi_path
            info("CUDArt.jl has already been built for this CUDA library, no need to rebuild.")
        end
    end

    # write ext.jl
    home = isnull(cudapath) ? "" : escape_string(get(cudapath))
    open(ext, "w") do fh
        write(fh, """
            const home = "$home"
            const libcudart_path = "$(escape_string(libcudart_path))"
            const libcudart_version = v"$libcudart_version"

            const libnvml_path = "$(escape_string(libnvml_path))"
            const nvidiasmi_path =  "$(escape_string(nvidiasmi_path))"
            """)
    end
    nothing
end

try
    setup_ext()
catch ex
    # if anything goes wrong, wipe the existing ext.jl to prevent the package from loading
    rm(ext; force=true)
    rethrow(ex)
end

include(ext)
include("compile.jl")
