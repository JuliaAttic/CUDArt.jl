using Compat


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

# find CUDA toolkit
function find_cuda()
    cuda_envvars = ["CUDA_PATH", "CUDA_HOME", "CUDA_ROOT"]
    cuda_envvars_set = filter(var -> haskey(ENV, var), cuda_envvars)
    if length(cuda_envvars_set) > 0
        cuda_paths = unique(map(var->ENV[var], cuda_envvars_set))
        if length(unique(cuda_paths)) > 1
            warn("Multiple CUDA path environment variables set: $(join(cuda_envvars_set, ", ", " and ")). ",
                 "Arbitrarily selecting CUDA at $(first(cuda_paths)). ",
                 "To ensure a consistent path, ensure only a single unique CUDA path is set.")
        end
        cuda_path = Nullable(first(cuda_paths))
    else
        cuda_path = Nullable{String}()
    end

    return cuda_path
end

# database of CUDA versions
const cuda_db = [v"4.0", v"4.2", v"5.0", v"6.0", v"6.5", v"7.0", v"7.5", v"8.0"]

# find CUDA runtime library
function find_libcudart(cuda_path)
    libcudart_names = ["libcudart", "cudart"]
    libcudart = Libdl.find_library(libcudart_names, isnull(cuda_path) ? [] : [get(cuda_path)])
    if isempty(libcudart)
        # take a guess at where CUDA is installed
        if is_windows()
            # location of cudart64_xx.dll or cudart32_xx.dll has to be in PATH env var
            # eg. C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v6.5\bin
            # (by default, it is set by CUDA toolkit installer)
            postfix = Sys.WORD_SIZE == 64 ? "64" : "32"
            dllnames = map(ver->"cudart$(postfix)_$(ver.major)$(ver.minor)", cuda_db)
            libcudart = Libdl.find_library(dllnames)
        else # linux or mac
            libdir = Sys.WORD_SIZE == 64 ? "lib64" : "lib"
            libcudart = Libdl.find_library(libcudart_names,
                                           ["/opt/cuda/$libdir", "/usr/local/cuda/$libdir"])
        end
    end
    isempty(libcudart) && error("CUDA runtime library cannot be found.")

    # find the full path of the library
    # NOTE: we could just as well use the result of `find_library,
    # but the user might have run this script with eg. LD_LIBRARY_PATH set
    # so we save the full path in order to always be able to load the correct library
    libcudart_path = Libdl.dlpath(libcudart)

    return libcudart_path
end

# find NVML library and SMI executable
function find_nvml_smi()
    nvml_libdir = is_windows() ? joinpath(ENV["ProgramFiles"], "NVIDIA Corporation", "NVSMI") : ""
    if is_windows() && !isdir(nvml_libdir)
        error("Could not determine NVIDIA driver installation location.")
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
    try
        success(`$nvidiasmi`)
    catch
        nvidiasmi = ""
        warn("nvidia-smi failure")
    end

    if isempty(nvidiasmi) && isempty(libnvml)
        error("NVML nor nvidia-smi can be found.")
    end

    libnvml, nvidiasmi
end

type Toolchain
    version::VersionNumber
    nvcc::String
    flags::Vector{String}
end


"""Database of maximally supported version of GCC for each version of CUDA."""
const gcc_support = (
    (v"5.0", v"4.6.4"),
    (v"5.5", v"4.7.3"),
    (v"6.0", v"4.8.1"),
    (v"6.5", v"4.8.2"),
    (v"7.0", v"4.9.2"),
    (v"7.5", v"4.9.2"),
    (v"8.0", v"5.3.1") )

# find CUDA C toolchain
function find_toolchain(version, cuda_path)
    # check availability NVCC
    if !isnull(cuda_path)
        nvcc = joinpath(get(cuda_path), "bin", "nvcc") * (is_windows() ? ".exe" : "")
    elseif !is_windows()
        try
            nvcc = chomp(readstring(pipeline(`which nvcc`, stderr=DevNull)))
        catch ex
            isa(ex, ErrorException) || rethrow(ex)
            error("Could not find NVIDIA CUDA compiler (nvcc); consider setting the CUDA_PATH environment variable.")
        end
    else
        error("Could not find NVIDIA CUDA compiler (nvcc); consider setting the CUDA_PATH environment variable.")
    end

    flags = [ "--compiler-bindir" ]

    # find a suitable host compiler
    if !is_windows()
        # Unix-like platforms: find compatible GCC binary

        # find the maximally supported version of gcc
        if version < gcc_support[1][1]
            error("no support for CUDA < $(gcc_support[1][1])")
        end
        gcc_maxver = Nullable{VersionNumber}()
        for versions in gcc_support
            if version == versions[1]
                gcc_maxver = Nullable(versions[2])
                break
            end
        end
        isnull(gcc_maxver) && error("Unsupported CUDA version $version.")

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

            if gcc_ver <= get(gcc_maxver)
                push!(gcc_possibilities, (gcc_path, gcc_ver))
            end
        end

        if length(gcc_possibilities) == 0
            error("Could not find a suitable host compiler (your CUDA v$version needs GCC <= $(get(gcc_maxver))).")
        end
        sort!(gcc_possibilities; rev=true, lt=(a, b) -> a[2]<b[2])
        push!(flags, gcc_possibilities[1][1])
    else
        # Windows: just use cl.exe

        vc_versions = ["VS140COMNTOOLS", "VS120COMNTOOLS", "VS110COMNTOOLS", "VS100COMNTOOLS"]
        !any(x -> haskey(ENV, x), vc_versions) && error("Compatible Visual Studio installation cannot be found; Visual Studio 2015, 2013, 2012, or 2010 is required.")
        vs_cmd_tools_dir = ENV[vc_versions[first(find(x -> haskey(ENV, x), vc_versions))]]
        hostccbin = joinpath(dirname(dirname(dirname(vs_cmd_tools_dir))), "VC", "bin", Sys.WORD_SIZE == 64 ? "amd64" : "", "cl.exe")

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

"Database of compute capabilities with matching shader model, and initial version of the
CUDA toolkit supporting this architecture."
const architectures = [
    # cap       SM          CUDA
    # NOTE: CUDA versions only checked starting with v4.0
    (v"1.0",    "sm_10",    v"4.0"),
    (v"1.1",    "sm_11",    v"4.0"),
    (v"1.2",    "sm_12",    v"4.0"),
    (v"1.3",    "sm_13",    v"4.0"),
    (v"2.0",    "sm_20",    v"4.0"),
    (v"2.1",    "sm_21",    v"4.0"),
    (v"3.0",    "sm_30",    v"4.2"),
    (v"3.2",    "sm_32",    v"6.0"),
    (v"3.5",    "sm_35",    v"5.0"),
    (v"3.7",    "sm_37",    v"6.5"),
    (v"5.0",    "sm_50",    v"6.0"),
    (v"5.2",    "sm_52",    v"7.0"),
    (v"5.3",    "sm_53",    v"7.5"),
    (v"6.0",    "sm_60",    v"8.0"),
    (v"6.1",    "sm_61",    v"8.0"),
    (v"6.2",    "sm_62",    v"8.0") ]


"Return the most recent supported architecture for a CUDA device's capability."
function select_architecture(cap::VersionNumber; cuda=nothing)
    # devices are compatible with code generated for lower compute models
    compat_architectures = filter(x -> x[1] <= cap, architectures)
    if cuda !== nothing
        compat_architectures = filter(x -> cuda >= x[3], compat_architectures)
    end
    if length(compat_architectures) == 0
        error("No support for requested device or software (compute model <= $cap" *
              cuda === nothing ? "" : ", CUDA >= $cuda).")
    end
    return compat_architectures[length(compat_architectures)][2]
end

const utilsfile = "utils"
const libfile = "libwrapcuda"

function build(toolchain, arch)
    compile_flags = vcat(toolchain.flags, ["--gpu-architecture", arch])

    cd(@__DIR__) do
        rm("$(libfile).$(Libdl.dlext)", force=true)
        is_windows() && rm("$(libfile).exp", force=true)
        rm("$(utilsfile).ptx", force=true)

        run(pipeline(`$(toolchain.nvcc) $(compile_flags) --shared wrapcuda.c -o $(libfile).$(Libdl.dlext)`; stdout=DevNull, stderr=STDERR))
        run(pipeline(`$(toolchain.nvcc) $(compile_flags) -ptx $(utilsfile).cu`; stdout=DevNull, stderr=STDERR))
    end

    cd(joinpath(@__DIR__, "..", "test")) do
        rm("vadd.ptx", force=true)
        run(pipeline(`$(toolchain.nvcc) $(compile_flags) -ptx vadd.cu`; stdout=DevNull, stderr=STDERR))
    end

    nothing
end

const ext = joinpath(@__DIR__, "ext.jl")

function main()
    # discover stuff
    cuda_path = find_cuda()
    libcudart_path = find_libcudart(cuda_path)
    libcudart_version = version(libcudart_path)
    libnvml_path, nvidiasmi_path = find_nvml_smi()
    toolchain = find_toolchain(libcudart_version, cuda_path)

    # select a compatible architecture and build code for it
    caps = [capability(libcudart_path, i) for i in 0:devcount(libcudart_path)-1]
    compat_cap = reduce((a,b)->a<b?a:b, caps)
    compat_arch = select_architecture(compat_cap; cuda=toolchain.version)
    build(toolchain, compat_arch)

    # check if we need to rebuild
    if isfile(ext)
        info("Checking validity of existing ext.jl.")
        @eval module Previous; include($ext); end
        if isdefined(Previous, :home) && Previous.cuda_path == cuda_path &&
        isdefined(Previous, :libcudart_version) && Previous.libcudart_version == libcudart_version &&
        isdefined(Previous, :libcudart_path)  && Previous.libcudart_path == libcudart_path &&
        isdefined(Previous, :libnvml_path)  && Previous.libnvml_path == libnvml_path
        isdefined(Previous, :nvidiasmi_path)  && Previous.nvidiasmi_path == nvidiasmi_path
            info("CUDArt.jl has already been built for this CUDA library, no need to rebuild.")
        end
    end

    # write ext.jl
    open(ext, "w") do fh
        write(fh, """
            const libcudart_path = "$(escape_string(libcudart_path))"
            const libcudart_version = v"$libcudart_version"

            const toolchain_version = v"$(toolchain.version)"
            const toolchain_nvcc = "$(escape_string(toolchain.nvcc))"
            const toolchain_flags = $(toolchain.flags)

            const architecture = "$compat_arch"

            const libnvml_path = "$(escape_string(libnvml_path))"
            const nvidiasmi_path =  "$(escape_string(nvidiasmi_path))"
            """)
    end
    nothing
end

try
    main()
catch ex
    # if anything goes wrong, wipe the existing ext.jl to prevent the package from loading
    rm(ext; force=true)
    rethrow(ex)
end
