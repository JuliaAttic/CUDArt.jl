function devcount()
    ret = Ref{Cint}()
    rt.cudaGetDeviceCount(ret)
    Int(ret[])
end

function device()
    ret = Ref{Cint}()
    rt.cudaGetDevice(ret)
    Int(ret[])
end

device(dev::Integer) = (rt.cudaSetDevice(dev); dev)

# instantiate the primary contexts
const contexts = Dict{Int,CUDAdrv.CuContext}()
for dev in 0:devcount()-1
    pctx = CUDAdrv.CuPrimaryContext(CUDAdrv.CuDevice(dev))
    contexts[dev] = CUDAdrv.CuContext(pctx)
end

device_reset() = device_reset(device())

function device_reset(dev::Integer)
    # clear all items on this device from `cuda_ptrs`, so they don't get freed later
    todelete = Any[]
    for (p, pdev) in cuda_ptrs
        if pdev == dev
            finalize(p)
            push!(todelete, p)
        end
    end
    for p in todelete
        delete!(cuda_ptrs, p)
    end

    # reset the context, invalidating all derived contexts
    pctx = CUDAdrv.CuPrimaryContext(CUDAdrv.CuDevice(dev))
    CUDAdrv.unsafe_reset!(pctx, false)

    # reset the device, and instantiate a new primary context
    rt.cudaDeviceReset()
    contexts[dev] = CUDAdrv.CuContext(pctx)
end

device_synchronize() = rt.cudaDeviceSynchronize()

device_properties(dev::Integer) = (aprop = Array{rt.cudaDeviceProp}(1); rt.cudaGetDeviceProperties(aprop, dev); aprop[1])

attribute(dev::Integer, code::Integer) = (ret = Cint[0]; rt.cudaDeviceGetAttribute(ret, code, dev); Int(ret[1]))

function capability(dev::Integer)
    (attribute(dev,rt.cudaDevAttrComputeCapabilityMajor), attribute(dev,rt.cudaDevAttrComputeCapabilityMinor))
end

name(p::rt.cudaDeviceProp) = unsafe_string(convert(Ptr{UInt8}, pointer([p.name])))

# criteria = dev -> Bool
function devices(criteria::Function; nmax::Integer = typemax(Int), status=:any)
    devlist = find(map(criteria, 0:devcount().-1)).-1
    if status == :any
    elseif status == :free
        devlist = filter_free(devlist)
    end
    isempty(devlist) && error("No suitable devices found")
    devlist[1:min(nmax, length(devlist))]
end

# do syntax, f(devlist)
function devices(f::Function, criteria::Function;
                 nmax::Integer = typemax(Int), status = :any)
    devlist = devices(criteria, nmax=nmax, status=status)
    devices(f, devlist)
end

function devices(f::Function, devlist::Union{Integer,AbstractVector})
    local ret
    try
        init(devlist)
        ret = f(devlist)
    finally
        close(devlist)
    end
    ret
end

function filter_free(devlist)
    @static if libnvml != nothing
        ccall(("nvmlInit", libnvml), UInt32, ())
        freelist = Int[]
        for i in devlist
            devref = Ref{Ptr{Void}}(0)
            ccall(("nvmlDeviceGetHandleByIndex", libnvml),
                  UInt32, (UInt32, Ptr{Void}), i, devref)
            status = ccall(("nvmlDeviceGetComputeRunningProcesses", libnvml),
                           UInt32, (Ptr{Void}, UInt32, Ptr{Void}),
                           devref, Ref{UInt32}(0), C_NULL)
            if status == 0
                push!(freelist, i)
            end
        end
        ccall(("nvmlShutdown", libnvml), UInt32, ())
        return freelist
    elseif !isempty(nvidia_smi)
        smi = readstring(`$nvidia_smi`)
        if contains(smi, "No running")
            return devlist
        end
        idx = search(smi, r"[Pp]rocesses:")
        isempty(idx) && error("Neither search string found")
        lines = split(smi[last(idx):end], '\n')
        freeset = Set(devlist)
        for line in lines
            m = match(r"^\| +([0-9]+)", line)
            if m !== nothing
                length(m.captures) == 1 || error("Expected only a single capture")
                dev = parse(Int, m.captures[1])
                delete!(freeset, dev)
            end
        end
        return collect(freeset)
    else
        Base.warn_once(
        """
        Neither NVML nor nvidia-smi are available.
        Please check your setup and install either one.
        `CUDArt.filter_free` will not work.
        """)
        return devlist
    end
end

function wait_free(devlist; check_interval=10)
    f = filter_free(devlist)
    length(f) < length(devlist) && warn("Waiting for GPU devices ", devlist)
    while length(f) < length(devlist)
        sleep(check_interval)
        f = filter_free(devlist)
    end
end

# A cache of useful CUDA kernels that gets loaded and closed
# by devices(f, devlist)
immutable PtxUtils
    mod::CUDAdrv.CuModule
    fns::Dict{Any,CUDAdrv.CuFunction}
end
const global ptxdict = Dict{Integer,PtxUtils}()

function init(devlist::Union{Integer,AbstractVector})
    funcnames = ["fill_contiguous", "fill_pitched"]
    funcexts  = ["double","float","int64","uint64","int32","uint32","int16","uint16","int8","uint8"]
    datatypes = [Float64,Float32,Int64,UInt64,Int32,UInt32,Int16,UInt16,Int8,UInt8]
    utilfile  = joinpath(dirname(@__DIR__), "deps", "utils.ptx")

    # initialize all devices
    for dev in devlist
        # It has already been initialized.
        if haskey(ptxdict, dev)
            continue
        end

        device(dev)
        # allocate and destroy memory to force initialization
        free(malloc(UInt8, 1))
        # Load the utility functions.
        ptx = PtxUtils(CUDAdrv.CuModuleFile(utilfile), Dict{Any,CUDAdrv.CuFunction}())
        for func in funcnames
            for (dtype, ext) in zip(datatypes, funcexts)
                ptx.fns[(func, dtype)] = CUDAdrv.CuFunction(ptx.mod, func * "_" * ext)
            end
        end
        ptx.fns["clock_block"] = CUDAdrv.CuFunction(ptx.mod, "clock_block")
        ptxdict[dev] = ptx
    end
end

function close(devlist::Union{Integer,AbstractVector})
    for dev in devlist
        if haskey(ptxdict, dev)
            # CUDAdrv unloads the module using a finalizer
            delete!(ptxdict, dev)
        end
        device_reset(dev)
    end
end
