get_dim_x(g::Integer) = safe_uint32(g)
get_dim_x(g::(Integer,)) = safe_uint32(g[1])
get_dim_x(g::(Integer, Integer)) = safe_uint32(g[1])
get_dim_x(g::(Integer, Integer, Integer)) = safe_uint32(g[1])

get_dim_y(g::Integer) = uint32(1)
get_dim_y(g::(Integer,)) = uint32(1)
get_dim_y(g::(Integer, Integer)) = safe_uint32(g[2])
get_dim_y(g::(Integer, Integer, Integer)) = safe_uint32(g[2])

get_dim_z(g::Integer) = uint32(1)
get_dim_z(g::(Integer,)) = uint32(1)
get_dim_z(g::(Integer, Integer)) = uint32(1)
get_dim_z(g::(Integer, Integer, Integer)) = safe_uint32(g[3])

function safe_uint32(i::Integer)
    ui = uint32(i)
    if ui < i
        error("Invalid integer size")
    end
    ui
end

typealias CudaDim Union(Integer, (Integer,), (Integer, Integer), (Integer, Integer, Integer))

dim3(dim::CudaDim) = rt.dim3(get_dim_x(dim), get_dim_y(dim), get_dim_z(dim))
dim3(dims::Integer...) = dim3(dims)

# cudabox(a::CudaArray) = convert(Ptr{None}, a)
# cudabox(a::AbstractArray) = error("Must be a CudaArray")
# cudabox(p::CudaDevicePtr) = convert(Ptr{None}, p)
# cudabox{T<:Number}(v::T) = T[v]
# 
# # function launch(func::CuFunction, gridDim::CudaDim, blockDim::CudaDim, args::Tuple; shmem_bytes::Integer = 4, stream::Stream = null_stream())
# function launch(func, gridDim::CudaDim, blockDim::CudaDim, args::Tuple; shmem_bytes::Integer = 4, stream::Stream = null_stream())
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
cubox(a::CudaArray) = cubox(a.ptr)
cubox{T}(x::T) = T[x]

function launch(f::CuFunction, grid::CudaDim, block::CudaDim, args::Tuple; shmem_bytes::Int=4, stream=null_stream())
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
