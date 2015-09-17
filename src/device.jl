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

name(p::rt.cudaDeviceProp) = bytestring(convert(Ptr{Uint8}, pointer([p.name])))

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

function devices(f::Function, devlist::Union(Integer,AbstractVector))
    local ret
    mdutils = [CuModule() for i = 1:length(devlist)]
    try
        init!(mdutils, devlist)
        ret = f(devlist)
    finally
        close!(mdutils, devlist)
    end
    ret
end

# A cache of useful CUDA kernels that gets loaded and closed
# by devices(f, devlist)
const global ptxdict = Dict()

function init!(mdutils::Array{CuModule}, devlist)
    funcnames = ["fill_contiguous", "fill_pitched"]
    funcexts  = ["double","float","int64","uint64","int32","uint32","int16","uint16","int8","uint8"]
    datatypes = [Float64,Float32,Int64,Uint64,Int32,Uint32,Int16,Uint16,Int8,Uint8]
    utilfile  = joinpath(Pkg.dir(), "CUDArt/deps/utils.ptx")
    # initialize all devices
    for idev = 1:length(devlist)
        dev = devlist[idev]
        device(dev)
        # allocate and destroy memory to force initialization
        free(malloc(Uint8, 1))
        # Load the utility functions
        mdutils[idev] = CuModule(utilfile, false)
        for func in funcnames
            for i = 1:length(funcexts)
                ptxdict[(dev, func, datatypes[i])] = CuFunction(mdutils[idev], func*"_"*funcexts[i])
            end
        end
        ptxdict[(dev, "clock_block")] = CuFunction(mdutils[idev], "clock_block")
    end
end

function close!(mdutils::Array{CuModule}, devlist)
    for idev = 1:length(devlist)
        if mdutils[idev].handle != C_NULL
            unload(mdutils[idev])
        end
        device_reset(devlist[idev])
    end
end
