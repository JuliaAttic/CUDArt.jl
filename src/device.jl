devcount() = (ret = Cint[0]; rt.cudaGetDeviceCount(ret); int(ret[1]))

device() = (ret = Cint[0]; rt.cudaGetDevice(ret); int(ret[1]))
device(dev::Integer) = (rt.cudaSetDevice(dev); dev)

device_reset() = rt.cudaDeviceReset()
device_reset(dev::Integer) = (device(dev); device_reset())

device_synchronize() = rt.cudaDeviceSynchronize()

device_properties(dev::Integer) = (aprop = Array(rt.cudaDeviceProp, 1); rt.cudaGetDeviceProperties(aprop, dev); aprop[1])

attribute(dev::Integer, code::Integer) = (ret = Cint[0]; rt.cudaDeviceGetAttribute(ret, code, dev); int(ret[1]))

capability(dev::Integer) = (attribute(dev,rt.cudaDevAttrComputeCapabilityMajor),
                            attribute(dev,rt.cudaDevAttrComputeCapabilityMinor))
                            
name(p::rt.cudaDeviceProp) = bytestring(convert(Ptr{Uint8}, pointer([p.name])))

# criteria = dev -> Bool
function devices(criteria::Function; nmax::Integer = typemax(Int))
    devlist = find(map(criteria, 0:devcount()-1))-1
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
    try
        # initialize all devices
        for dev in devlist
            device(dev)
            # allocate and destroy memory to force initialization
            free(malloc(Uint8, 1))
        end
        ret = CuModule(joinpath(Pkg.dir(), "CUDArt/deps/utils.ptx")) do mdutils
            funcnames = ["fill_contiguous", "fill_pitched"]
            funcexts  = ["double","float","int64","uint64","int32","uint32","int16","uint16","int8","uint8"]
            datatypes = [Float64,Float32,Int64,Uint64,Int32,Uint32,Int16,Uint16,Int8,Uint8]
            for func in funcnames
                for i = 1:length(funcexts)
                    ptxdict[(func, datatypes[i])] = CuFunction(mdutils, func*"_"*funcexts[i])
                end
            end
            return f(devlist)
        end
    finally
        cudafinalize()
        for dev in devlist
            device_reset(dev)
        end
    end
    ret
end

# A cache of useful CUDA kernels
const global ptxdict = Dict()

# Items to clean up before resetting the device
let finalizer_list = {}
global cudafinalizer
cudafinalizer(obj, func) = push!(finalizer_list, (obj, func))
global cudafinalize
function cudafinalize()
    for item in finalizer_list
        item[2](item[1])
    end
    empty!(finalizer_list)
    nothing
end
end
