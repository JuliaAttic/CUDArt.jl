devcount() = (ret = Cint[0]; rt.cudaGetDeviceCount(ret); int(ret[1]))

device() = (ret = Cint[0]; rt.cudaGetDevice(ret); int(ret[1]))
device(dev::Integer) = rt.cudaSetDevice(dev)

devicereset() = rt.cudaDeviceReset()
devicereset(dev::Integer) = (device(dev); devicereset())

device_properties(dev::Integer) = (aprop = Array(rt.cudaDeviceProp, 1); rt.cudaGetDeviceProperties(aprop, dev); aprop[1])

attribute(dev::Integer, code::Integer) = (ret = Cint[0]; rt.cudaDeviceGetAttribute(ret, code, dev); int(ret[1]))

capability(dev::Integer) = (attribute(dev,rt.cudaDevAttrComputeCapabilityMajor),
                            attribute(dev,rt.cudaDevAttrComputeCapabilityMinor))

# criteria = dev -> Bool
devices(criteria::Function) = find(map(criteria, 0:devcount()-1))-1
function devices(criteria::Function, n)
    devlist = devices(criteria)
    devlist[1:min(n, length(devlist))]
end
    
# do syntax, f(devlist)
function devices(f::Function, criteria::Function, n = typemax(Int))
    devlist = devices(criteria, n)
    isempty(devlist) && error("No suitable devices found")
    devices(f, devlist)
end

function devices(f::Function, devlist::Union(Integer,AbstractVector))
    local ret
    try
        # initialize all devices
        for dev in devlist
            device(dev)
        end
        ret = f(devlist)
    finally
        for dev in devlist
            devicereset(dev)
        end
    end
    ret
end
