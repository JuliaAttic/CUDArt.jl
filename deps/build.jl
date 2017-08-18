using Compat

using CUDAapi


## API routines

# these routines are the bare minimum we need from the API during build;
# keep in sync with the actual implementations in src/

macro apicall(libpath, fn, types, args...)
    quote
        lib = Libdl.dlopen($(esc(libpath)))
        sym = Libdl.dlsym(lib, $(esc(fn)))

        status = ccall(sym, Cint, $(esc(types)), $(map(esc, args)...))
        status != 0 && error("CUDA error $status calling ", $fn)
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

# find NVML library and SMI executable
function find_nvml(driver_path)
    if is_windows()
        nvml_dir = joinpath(ENV["ProgramFiles"], "NVIDIA Corporation", "NVSMI")
        if !isdir(nvml_libdir)
            error("Could not determine NVIDIA driver installation location.")
        end
    else
        nvml_dir = driver_path
    end

    # find NVML library
    libnvml_path = nothing
    try
        libnvml_path = find_library(CUDAapi.libnvml, nvml_dir)
    catch ex
        isa(ex, ErrorException) || rethrow(ex)
        warn("NVML not found, resorting to nvidia-smi")
    end

    # find SMI binary
    nvidiasmi_path = nothing
    try
        nvidiasmi_path = find_binary("nvidia-smi", nvml_dir)
        if !success(`$nvidiasmi_path`)
            warn("nvidia-smi failure")
            nvidiasmi_path = nothing
        end
    catch ex
        isa(ex, ErrorException) || rethrow(ex)
        warn("nvidia-smi not found")
    end

    if nvidiasmi_path == nothing && libnvml_path == nothing
        if is_apple()
            warn("NVML nor nvidia-smi can be found.")
        else
            error("NVML nor nvidia-smi can be found.")
        end
    end

    return libnvml_path, nvidiasmi_path
end

# find CUDA C toolchain
type Toolchain
    version::VersionNumber
    nvcc::String
    flags::Vector{String}
end
function find_toolchain(version, toolkit_path)
    nvcc = find_binary("nvcc", toolkit_path)

    flags = [ "--compiler-bindir" ]

    # find a suitable host compiler
    if !(is_windows() || is_apple())
        # Unix-like platforms: find compatible GCC binary

        # find the maximally supported version of gcc
        gcc_range = CUDAapi.gcc_for_cuda(version)

        # enumerate possible names for the gcc binary
        # NOTE: this is coarse, and might list invalid, non-existing versions
        gcc_names = [ "gcc" ]
        for major in 3:7
            push!(gcc_names, "gcc-$major")
            for minor in 0:9
                push!(gcc_names, "gcc-$major.$minor")
                push!(gcc_names, "gcc$major$minor")
            end
        end

        # find the binary
        gcc_possibilities = []
        for gcc in gcc_names
            # check if the binary exists
            gcc_path = try
                chomp(readstring(pipeline(`which $gcc`, stderr=DevNull)))
            catch ex
                isa(ex, ErrorException) || rethrow(ex)
                continue
            end

            # parse the GCC version string
            verstring = chomp(readlines(`$gcc_path --version`)[1])
            m = match(Regex("^$gcc \\(.*\\) ([0-9.]+)"), verstring)
            if m === nothing
                warn("Could not parse GCC version info (\"$verstring\"), skipping this compiler.")
                continue
            end
            gcc_ver = VersionNumber(m.captures[1])

            if in(gcc_ver, gcc_range)
                push!(gcc_possibilities, (gcc_path, gcc_ver))
            end
        end

        if length(gcc_possibilities) == 0
            error("Could not find a suitable host compiler (your CUDA v$version needs GCC <= $(get(gcc_maxver))).")
        end
        sort!(gcc_possibilities; rev=true, lt=(a, b) -> a[2]<b[2])
        push!(flags, gcc_possibilities[1][1])
    elseif is_windows()
        # Windows: just use cl.exe

        vc_versions = ["VS140COMNTOOLS", "VS120COMNTOOLS", "VS110COMNTOOLS", "VS100COMNTOOLS"]
        !any(x -> haskey(ENV, x), vc_versions) && error("Compatible Visual Studio installation cannot be found; Visual Studio 2015, 2013, 2012, or 2010 is required.")
        vs_cmd_tools_dir = ENV[vc_versions[first(find(x -> haskey(ENV, x), vc_versions))]]
        hostccbin = joinpath(dirname(dirname(dirname(vs_cmd_tools_dir))), "VC", "bin", Sys.WORD_SIZE == 64 ? "amd64" : "", "cl.exe")

        push!(flags, hostccbin)
    elseif is_apple()
        # GCC is no longer supported on mac so let's just use clang
        hostccbin = chomp(readstring(pipeline(`which clang`, stderr=DevNull)))
        push!(flags, hostccbin)
    end

    # determine compilation options
    arch_envs = ["NVCC_ARCH", "GPU_ARCH", "DEVICE_ARCH"]
    if any(x -> haskey(ENV, x), arch_envs)
        arch_envs = arch_envs[map(x -> haskey(ENV, x), arch_envs)]
        if !all(i -> i == arch_envs[1], arch_envs)
            warn("GPU compilation options set via environment variables are not equivalent.")
            arch_env = ENV[first(arch_envs)]
            warn("selecting nvcc arch value: $(arch_envs).")
        else
            arch_env = ENV[first(arch_envs)]
        end
        append!(flags, [ "--gpu-architecture", arch_env ])
    end

    return Toolchain(version, nvcc, flags)
end


## main

const utilsfile = "utils"
const libfile = "libwrapcuda"

function build(toolchain, arch)
    compile_flags = vcat(toolchain.flags, ["--gpu-architecture", arch])

    cd(@__DIR__) do
        rm("$(libfile).$(Libdl.dlext)", force=true)
        is_windows() && rm("$(libfile).exp", force=true)
        rm("$(utilsfile).ptx", force=true)

        logging_run(`$(toolchain.nvcc) $(compile_flags) --shared wrapcuda.c -o $(libfile).$(Libdl.dlext)`)
        logging_run(`$(toolchain.nvcc) $(compile_flags) -ptx $(utilsfile).cu`)
    end

    cd(joinpath(@__DIR__, "..", "test")) do
        rm("vadd.ptx", force=true)
        logging_run(`$(toolchain.nvcc) $(compile_flags) -ptx vadd.cu`)
    end

    nothing
end

const ext = joinpath(@__DIR__, "ext.jl")
const ext_bak = ext * ".bak"

function main()
    ispath(ext) && mv(ext, ext_bak; remove_destination=true)

    # discover stuff
    toolkit_path = find_toolkit()
    libcudart_path = find_library("cudart", toolkit_path)
    libcudart_version = version(libcudart_path)
    driver_path = find_driver()
    libnvml_path, nvidiasmi_path = find_nvml(driver_path)

    # select the maximal capability compatible with all devices & the toolchain
    device_caps = [capability(libcudart_path, i) for i in 0:devcount(libcudart_path)-1]
    device_cap = reduce((a,b)->a<b?a:b, device_caps)
    toolchain_caps = CUDAapi.devices_for_cuda(libcudart_version)
    isempty(toolchain_caps) && error("No support for CUDA $(libcudart_version)")
    filter!(cap -> cap<=device_cap, toolchain_caps)
    isempty(toolchain_caps) && error("None of your devices supported by CUDA $(libcudart_version)")
    cap = maximum(toolchain_caps)

    # find a toolchain and build code
    toolchain = find_toolchain(libcudart_version, toolkit_path)
    arch = CUDAapi.shader(cap)
    build(toolchain, arch)

    # check if we need to rebuild
    if isfile(ext_bak)
        @debug("Checking validity of existing ext.jl.")
        @eval module Previous; include($ext_bak); end
        if  isdefined(Previous, :libcudart_path)    && Previous.libcudart_path == libcudart_path &&
            isdefined(Previous, :libcudart_version) && Previous.libcudart_version == libcudart_version &&
            isdefined(Previous, :toolchain_version) && Previous.toolchain_version == toolchain.version &&
            isdefined(Previous, :toolchain_nvcc)    && Previous.toolchain_nvcc == toolchain.nvcc &&
            isdefined(Previous, :toolchain_flags)   && Previous.toolchain_flags == toolchain.flags &&
            isdefined(Previous, :architecture)      && Previous.architecture == arch &&
            isdefined(Previous, :libnvml_path)      && Previous.libnvml_path == libnvml_path
            isdefined(Previous, :nvidiasmi_path)    && Previous.nvidiasmi_path == nvidiasmi_path
            info("CUDArt.jl has already been built for this CUDA library, no need to rebuild.")
            mv(ext_bak, ext)
            return
        end
    end

    # write ext.jl
    open(ext, "w") do fh
        write(fh, """
            const libcudart_path = $(repr(libcudart_path))
            const libcudart_version = $(repr(libcudart_version))

            const toolchain_version = $(repr(toolchain.version))
            const toolchain_nvcc = $(repr(toolchain.nvcc))
            const toolchain_flags = $(repr(toolchain.flags))

            const architecture = $(repr(arch))

            const libnvml_path = $(repr(libnvml_path))
            const nvidiasmi_path =  $(repr(nvidiasmi_path))
            """)
    end
    nothing
end

main()
