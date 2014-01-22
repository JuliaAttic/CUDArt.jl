typealias CudaDims Union(Integer, (Integer,), (Integer, Integer), (Integer, Integer, Integer))

const CudaExtent = rt.cudaExtent
CudaExtent(dims::CudaDims) = CudaExtent(get_size_x(dims), get_size_y(dims), get_size_z(dims))
CudaExtent{T}(::Type{T}, dims::CudaDims) = CudaExtent(get_size_x(dims)*sizeof(T), get_size_y(dims), get_size_z(dims))

const CudaPos = rt.cudaPos
CudaPos(dims::CudaDims) = CudaPos(get_size_x(dims)-1, get_size_y(dims)-1, get_size_z(dims)-1)
CudaPos{T}(::Type{T}, dims::CudaDims) = CudaPos((get_size_x(dims)-1)*sizeof(T), get_size_y(dims)-1, get_size_z(dims)-1)

get_size_x(g::Integer) = g
get_size_x(g::(Integer,)) = g[1]
get_size_x(g::(Integer, Integer)) = g[1]
get_size_x(g::(Integer, Integer, Integer)) = g[1]

get_size_y(g::Integer) = 1
get_size_y(g::(Integer,)) = 1
get_size_y(g::(Integer, Integer)) = g[2]
get_size_y(g::(Integer, Integer, Integer)) = g[2]

get_size_z(g::Integer) = 1
get_size_z(g::(Integer,)) = 1
get_size_z(g::(Integer, Integer)) = 1
get_size_z(g::(Integer, Integer, Integer)) = g[3]

# dim3 and utility functions
const Dim3 = rt.dim3

Dim3(dim::CudaDims) = Dim3(get_dim_x(dim), get_dim_y(dim), get_dim_z(dim))
Dim3(dims::Integer...) = Dim3(dims)

get_dim_x(g::CudaDims) = safe_uint32(get_size_x(g))
get_dim_y(g::CudaDims) = safe_uint32(get_size_y(g))
get_dim_z(g::CudaDims) = safe_uint32(get_size_z(g))

function safe_uint32(i::Integer)
    ui = uint32(i)
    if ui < i
        error("Invalid integer size")
    end
    ui
end

