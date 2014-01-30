# cudabox(a::CudaArray) = convert(Ptr{None}, a)
# cudabox(a::AbstractArray) = error("Must be a CudaArray")
# cudabox(p::CudaDevicePtr) = convert(Ptr{None}, p)
# cudabox{T<:Number}(v::T) = T[v]
# 
# # function launch(func::CuFunction, gridDim::CudaDims, blockDim::CudaDims, args::Tuple; shmem_bytes::Integer = 4, stream::Stream = null_stream())
# function launch(func, gridDim::CudaDims, blockDim::CudaDims, args::Tuple; shmem_bytes::Integer = 4, stream::Stream = null_stream())
#     @show gridDim
#     @show blockDim
#     rt.cudaConfigureCall(dim3(gridDim), dim3(blockDim), shmem_bytes, stream.ptr)
#     offset = 0
#     for arg in args
#         @show typeof(arg)
#         @show arg.ptr
#         barg = cudabox(arg)
#         sz = sizeof(barg)
#         offset += (offset % sz)  # improve memory-alignment
#         @show offset
#         @show sz
#         @show barg
#         rt.cudaSetupArgument(Ptr{Void}[barg], sz, offset)
#         offset += sz
#     end
#     rt.cudaLaunch(func.handle)
# end

cubox(p::CudaDevicePtr) = cubox(p.ptr)
cubox(a::AbstractCudaArray) = cubox(rawpointer(a))
cubox{T}(x::T) = T[x]

function launch(f::CuFunction, grid::CudaDims, block::CudaDims, args::Tuple; shmem_bytes::Int=4, stream=null_stream())
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
        f.handle, gx, gy, gz, tx, ty, tz, shmem_bytes, stream.handle, kernel_args, 0))
end

# Note this is asynchronous wrt the host
function cudasleep(secs; dev::Integer=device(), stream=null_stream)
    device(dev)
    rate = attribute(dev, rt.cudaDevAttrClockRate)
    tics = int64(1000*rate*secs)  # rate is in kHz
    func = ptxdict["clock_block"]
    launch(func, 1, 1, (tics,), stream=stream)
end
