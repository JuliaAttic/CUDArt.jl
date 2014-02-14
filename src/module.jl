# CUDA module management
# This uses the driver API

function checkdrv(code::Integer)
    if code != 0
        error(driver_error_descriptions[int(code)])
    end
    nothing
end

immutable CuModule
    handle::Ptr{Void}

    function CuModule(filename::ASCIIString, finalize::Bool = true)
        a = Array(Ptr{Void}, 1)
        checkdrv(ccall((:cuModuleLoad, libcuda), Cint, (Ptr{Ptr{Void}}, Ptr{Cchar}), a, filename))
        md = new(a[1])
        if finalize
            finalizer(md, unload)
        end
        md
    end
    CuModule() = new(C_NULL)
end

# do syntax, f(module)
function CuModule(f::Function, filename::ASCIIString)
    md = CuModule(filename, false)
    local ret
    try
        ret = f(md)
    finally
        unload(md)
    end
    ret
end

function unload(md::CuModule)
    checkdrv(ccall((:cuModuleUnload, libcuda), Cint, (Ptr{Void},), md.handle))
end

immutable CuFunction
    handle::Ptr{Void}

    function CuFunction(md::CuModule, name::ASCIIString)
        a = Array(Ptr{Void}, 1)
        checkdrv(ccall((:cuModuleGetFunction, libcuda), Cint, (Ptr{Ptr{Void}}, Ptr{Void}, Ptr{Cchar}), 
                       a, md.handle, name))
        new(a[1])
    end
end

# A cache of useful CUDA kernels
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

const driver_error_descriptions = (Int=>ASCIIString)[
        0 => "Success",
        1 => "Invalid value",
        2 => "Out of memory",
        3 => "Driver not initialized",
        4 => "Driver being shutdown",
        5 => "Profiler disabled",
        6 => "Profiler not initialized",
        7 => "Profiler already started",
        8 => "Profiler already stopped",
        100 => "No CUDA-capable device",
        101 => "Invalid device ordinal",
        200 => "Invalid kernel image",
        201 => "Invalid context",
        202 => "Context already current",
        205 => "Map operation failed",
        206 => "Unmap operation failed",
        207 => "Array mapped",
        208 => "Resource already mapped",
        209 => "No kernel image available/suitable for GPU",
        210 => "Resource already acquired",
        211 => "Resource not mapped",
        212 => "Resource not mapped as array",
        213 => "Resource not mapped as pointer",
        214 => "Uncorrectable ECC error detected",
        215 => "Unsupported limit",
        216 => "Context already in use",
        217 => "Peer access not supported",
        300 => "Invalid kernel source",
        301 => "File not found",
        302 => "Shared object symbol not found",
        303 => "Shared object initialization failed",
        304 => "OS call failed",
        400 => "Invalid handle",
        500 => "Named symbol not found",
        600 => "Not ready",
        700 => "Kernel launch failed",
        701 => "Launch out of resources",
        702 => "Launch timeout",
        703 => "Incompatible texturing mode",
        704 => "Peer access already enabled",
        705 => "Peer access not enabled",
        708 => "Primary context already active",
        709 => "Context destroyed",
        710 => "Assertion triggered failure",
        711 => "Too many peers",
        712 => "Host memory already registered",
        713 => "Host memory not registered",
        800 => "Operation not permitted",
        801 => "Operation not supported",
        999 => "Unknown error"
]
