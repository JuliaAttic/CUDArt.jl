devcount() = (ret = Cint[0]; rt.cudaGetDeviceCount(ret); int(ret[1]))

device() = (ret = Cint[0]; rt.cudaGetDevice(ret); int(ret[1]))
device(dev::Integer) = (rt.cudaSetDevice(dev); dev)

device_reset() = device_reset(device())
function device_reset(dev::Integer)
    # Clear all items on this device from cuda_ptrs, so they don't get freed later
    todelete = Any[]
    for (p,pdev) in cuda_ptrs
        if pdev == dev
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

attribute(dev::Integer, code::Integer) = (ret = Cint[0]; rt.cudaDeviceGetAttribute(ret, code, dev); int(ret[1]))

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
