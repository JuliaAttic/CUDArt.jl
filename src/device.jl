devcount() = (ret = Cint[0]; rt.cudaGetDeviceCount(ret); Int(ret[1]))

device() = (ret = Cint[0]; rt.cudaGetDevice(ret); Int(ret[1]))
device(dev::Integer) = (rt.cudaSetDevice(dev); dev)

device_reset() = device_reset(device())
if VERSION < v"0.4.0-dev"
    finalize(x) = nothing
end
function device_reset(dev::Integer)
    # Clear all items on this device from cuda_ptrs, so they don't get
    # freed later
    todelete = Any[]
    for (p,pdev) in cuda_ptrs
        if pdev == dev
            finalize(p)
            push!(todelete, p)
        end
    end
    for p in todelete
        delete!(cuda_ptrs, p)
    end
    # Reset the device
    device(dev)
    rt.cudaDeviceReset()
end

device_synchronize() = rt.cudaDeviceSynchronize()

device_properties(dev::Integer) = (aprop = Array(rt.cudaDeviceProp, 1); rt.cudaGetDeviceProperties(aprop, dev); aprop[1])

attribute(dev::Integer, code::Integer) = (ret = Cint[0]; rt.cudaDeviceGetAttribute(ret, code, dev); Int(ret[1]))

capability(dev::Integer) = (attribute(dev,rt.cudaDevAttrComputeCapabilityMajor),
                            attribute(dev,rt.cudaDevAttrComputeCapabilityMinor))

name(p::rt.cudaDeviceProp) = bytestring(convert(Ptr{UInt8}, pointer([p.name])))

# criteria = dev -> Bool
function devices(criteria::Function; nmax::Integer = typemax(Int))
    devlist = find(map(criteria, 0:devcount().-1)).-1
    isempty(devlist) && error("No suitable devices found")
    devlist[1:min(nmax, length(devlist))]
end

# do syntax, f(devlist)
function devices(f::Function, criteria::Function; nmax::Integer = typemax(Int))
    devlist = devices(criteria, nmax=nmax)
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

# A cache of useful CUDA kernels that gets loaded and closed
# by devices(f, devlist)
immutable PtxUtils
    mod::CuModule
    fns::Dict{Any,CuFunction}
end
const global ptxdict = Dict{Integer,PtxUtils}()

function init(devlist::Union{Integer,AbstractVector})
    funcnames = ["fill_contiguous", "fill_pitched"]
    funcexts  = ["double","float","int64","uint64","int32","uint32","int16","uint16","int8","uint8"]
    datatypes = [Float64,Float32,Int64,UInt64,Int32,UInt32,Int16,UInt16,Int8,UInt8]
    utilfile  = joinpath(Pkg.dir(), "CUDArt/deps/utils.ptx")

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
        ptx = PtxUtils(CuModule(utilfile, false), Dict{Any,CuFunction}())
        for func in funcnames
            for (dtype,ext) in zip(datatypes, funcexts)
                ptx.fns[(func, dtype)] = CuFunction(ptx.mod, func*"_"*ext)
            end
        end
        ptx.fns["clock_block"] = CuFunction(ptx.mod, "clock_block")
        ptxdict[dev] = ptx
    end
end

function close(devlist::Union{Integer,AbstractVector})
    for dev in devlist
        if haskey(ptxdict, dev)
            unload(ptxdict[dev].mod)
            delete!(ptxdict, dev)
        end
        device_reset(dev)
    end
end
