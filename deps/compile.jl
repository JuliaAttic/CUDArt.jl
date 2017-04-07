using CUDAdrv
using Compat

type Toolchain
    version::VersionNumber
    nvcc::String
    flags::Vector{String}
end

"Database of compute capabilities with matching shader model, and initial version of the CUDA toolkit supporting this architecture."
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


"Return the most recent supported architecture for a CUDA device."
function architecture(dev::CuDevice=CuDevice(0); cuda=nothing)
    cap = capability(dev)
    # Devices are compatible with code generated for lower compute models
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


function discover_toolchain()
    # Check availability NVCC
    cudapath_envs = ["CUDA_PATH", "CUDA_HOME", "CUDA_ROOT"] 
    if haskey(ENV, "NVCC")
        nvcc = ENV["NVCC"]
    elseif any(x -> haskey(ENV, x), cudapath_envs)
        cudapath_envs = cudapath_envs[map(x -> haskey(ENV, x), cudapath_envs)]
        if !all(i -> i == cudapath_envs[1], cudapath_envs)
            warn("Multiple CUDA home paths set via environment variables, which are unique.")
            cudapath = ENV[first(cudapath_envs)]
            warn("selecting CUDA home path: $(cudapath).")
        else
            cudapath = ENV[first(cudapath_envs)]
        end
        nvcc = joinpath(cudapath, "bin", "nvcc") * (is_windows() ? ".exe" : "")
    elseif !is_windows()
        try
            nvcc = chomp(readstring(pipeline(`which nvcc`, stderr=DevNull)))
        catch ex
            !isa(ex, ErrorException) && rethrow(ex)
            rethrow(ErrorException("Could not find NVIDIA CUDA compiler (nvcc); consider setting the NVCC or the CUDA_PATH environment variable."))
        end
    else
        throw(ErrorException("Could not find NVIDIA CUDA compiler (nvcc); consider setting the NVCC or the CUDA_PATH environment variable."))
    end

    nvcc_ver = Nullable{VersionNumber}()
    for line in readlines(`$nvcc --version`)
        m = match(r"release ([0-9.]+)", line)
        if m !== nothing
            nvcc_ver = Nullable(VersionNumber(m.captures[1]))
        end
    end
    isnull(nvcc_ver) && error("Could not parse NVIDIA CUDA compiler version info.")
    version = get(nvcc_ver)

    flags = [ "--compiler-bindir" ]

    # collect possible hostcc executable names
    if !is_windows()
        # Determine host compiler version requirements; Source: "CUDA Getting Started Guide for Linux".
        hostcc_support = (
            (v"5.0", v"4.6.4"),
            (v"5.5", v"4.7.3"),
            (v"6.0", v"4.8.1"),
            (v"6.5", v"4.8.2"),
            (v"7.0", v"4.9.2"),
            (v"7.5", v"4.9.2"),
            (v"8.0", v"5.3.1") )
        if version < hostcc_support[1][1]
            error("no support for CUDA < $(hostcc_req[1][1])")
        end
        hostcc_maxver = Nullable{VersionNumber}()
        for hostcc in hostcc_support
            if version == hostcc[1]
                hostcc_maxver = Nullable(hostcc[2])
                break
            end
        end
        isnull(hostcc_maxver) && error("Unknown NVIDIA CUDA compiler version $version.")

        hostcc_names = [ "gcc" ]
        for ver in (v"4.4", v"4.5", v"4.6", v"4.7", v"4.8", v"4.9")
            push!(hostcc_names, "gcc-$(ver.major).$(ver.minor)")
            push!(hostcc_names, "gcc$(ver.major)$(ver.minor)")
        end

        # Check availability host compiler
        hostcc_possibilities = []
        for hostcc in hostcc_names
            hostcc_path = try
                chomp(readstring(pipeline(`which $hostcc`, stderr=DevNull)))
            catch ex
                !isa(ex, ErrorException) && rethrow(ex)
                continue
            end

            verstring = chomp(readlines(`$hostcc_path --version`)[1])
            m = match(Regex("^$hostcc \\(.*\\) ([0-9.]+)"), verstring)
            if m === nothing
                warn("Could not parse GCC version info (\"$verstring\"), skipping this compiler.")
                continue
            end
            hostcc_ver = VersionNumber(m.captures[1])

            if hostcc_ver <= get(hostcc_maxver)
                push!(hostcc_possibilities, (hostcc_path, hostcc_ver))
            end
        end
        if length(hostcc_possibilities) == 0
            error("Could not find a suitable host compiler (your NVCC $version needs GCC <= $(get(hostcc_maxver))).")
        end
        sort!(hostcc_possibilities; rev=true, lt=(a, b) -> a[2]<b[2])
        hostcc = hostcc_possibilities[1]

        push!(flags, hostcc[1])
    else # Windows
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

const toolchain = discover_toolchain()

const utilsfile = "utils"
const libfile = "libwrapcuda"

function build(dev::CuDevice=CuDevice(0))
    arch = architecture(dev; cuda=toolchain.version)
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

build()
