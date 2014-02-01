cubox(p::CudaDevicePtr) = cubox(p.ptr)
cubox(a::AbstractCudaArray) = cubox(rawpointer(a))
cubox(a::HostArray) = cubox(rawpointer(a))
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
        f.handle, gx, gy, gz, tx, ty, tz, shmem_bytes, stream, kernel_args, 0))
end

# Note this is asynchronous wrt the host, but you can wait on the stream
function cudasleep(secs; dev::Integer=device(), stream=null_stream)
    device(dev)
    rate = attribute(dev, rt.cudaDevAttrClockRate)
    tics = int64(1000*rate*secs)  # rate is in kHz
    func = ptxdict[(dev, "clock_block")]
    launch(func, 1, 1, (tics,), stream=stream)
end
