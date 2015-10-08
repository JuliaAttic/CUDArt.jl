cubox(p::CudaPtr) = cubox(p.ptr)
cubox(a::CdArray) = cubox(rawpointer(a))
cubox{T}(x::T) = T[x]

function launch(f::CuFunction, grid::CudaDims, block::CudaDims, args::Tuple; shmem_bytes::Int=4, stream=null_stream)
    gx = get_dim_x(grid)
    gy = get_dim_y(grid)
    gz = get_dim_z(grid)

    tx = get_dim_x(block)
    ty = get_dim_y(block)
    tz = get_dim_z(block)

    kernel_args = [cubox(arg) for arg in args]

    checkdrv(ccall((:cuLaunchKernel, libcuda), Cint, (
        Ptr{Void},  # function
        Cuint,  # grid dim x
        Cuint,  # grid dim y
        Cuint,  # grid dim z
        Cuint,  # block dim x
        Cuint,  # block dim y
        Cuint,  # block dim z
        Cuint,  # shared memory bytes,
        Ptr{Void}, # stream
        Ptr{Ptr{Void}}, # kernel parameters,
        Ptr{Ptr{Void}}), # extra parameters
        f.handle, gx, gy, gz, tx, ty, tz, shmem_bytes, stream, kernel_args, C_NULL))
end

# Note this is asynchronous wrt the host, but you can wait on the stream
function cudasleep(secs; dev::Integer=device(), stream=null_stream)
    device(dev)
    rate = attribute(dev, rt.cudaDevAttrClockRate)
    func = ptxdict[dev].fns["clock_block"]
    twatchdog = 1.95  # watchdog timer kicks in after 2 secs
    while secs > 0
        tics = Int64(1000*rate*min(twatchdog, secs))  # rate is in kHz
        secs -= twatchdog
        launch(func, 1, 1, (tics,), stream=stream)
    end
end
