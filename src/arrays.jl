# Arrays on GPU

immutable CudaDevicePtr{T}
    ptr::Ptr{T}
end
CudaDevicePtr() = CudaDevicePtr(C_NULL)
CudaDevicePtr(T::Type) = CudaDevicePtr(convert(Ptr{T},C_NULL))
convert{T}(::Type{Ptr{T}}, p::CudaDevicePtr{T}) = p.ptr
convert{T}(::Type{Ptr{None}}, p::CudaDevicePtr{T}) = convert(Ptr{None}, p.ptr)

function malloc(T::Type, n::Integer)
    p = Ptr{Void}[0]
    nbytes = sizeof(T)*n
    rt.cudaMalloc(p, nbytes)
    CudaDevicePtr(convert(Ptr{T},p[1]))
end
malloc(nbytes::Integer) = malloc(Uint8, nbytes)

free(p::CudaDevicePtr) = rt.cudaFree(p)

#################################################
#
#  CudaArray: contiguous array on GPU
#
#################################################

type CudaArray{T,N}
    ptr::CudaDevicePtr{T}
    dims::NTuple{N,Int}
end

CudaArray(T::Type, dims::Integer...) = CudaArray(T, dims)

function CudaArray(T::Type, dims::Dims)
    n = prod(dims)
    p = malloc(T, n)
    g = CudaArray{T,length(dims)}(p, dims)
    finalizer(g, free)
    g
end

CudaArray{T,N}(a::Array{T,N}) = copy!(CudaArray(T, size(a)), a)
CudaArray{T,N}(a::AbstractArray{T,N}) = CudaArray(convert(Array{T,N}, a))

length(g::CudaArray) = prod(g.dims)
size(g::CudaArray) = g.dims
ndims{T,N}(g::CudaArray{T,N}) = N
eltype{T,N}(g::CudaArray{T,N}) = T
pointer(g::CudaArray) = g.ptr
convert{T}(::Type{Ptr{T}}, g::CudaArray{T}) = pointer(g).ptr
convert(::Type{Ptr{None}}, g::CudaArray) = convert(Ptr{None}, pointer(g))

function size{T,N}(g::CudaArray{T,N}, d::Integer) 
    d >= 1 ? (d <= N ? g.dims[d] : 1) : error("Invalid index of dimension.")
end

function free(g::CudaArray)
    if convert(Ptr{None},g.ptr) != C_NULL
        free(g.ptr)
        g.ptr = CudaDevicePtr(eltype(g))
    end
end

cudamemcpykind(dstp::Ptr, srcp::Ptr) = rt.cudaMemcpyHostToHost
cudamemcpykind(dstp::CudaDevicePtr, srcp::Ptr) = rt.cudaMemcpyHostToDevice
cudamemcpykind(dstp::Ptr, srcp::CudaDevicePtr) = rt.cudaMemcpyDeviceToHost
cudamemcpykind(dstp::CudaDevicePtr, srcp::CudaDevicePtr) = rt.cudaMemcpyDeviceToDevice
cudamemcpykind(dst::Union(Ptr, CudaDevicePtr), src::Union(Ptr, CudaDevicePtr)) = error("This should never happen") # avoid a useless ambiguity warning
cudamemcpykind(dst, src::Union(Ptr, CudaDevicePtr)) = cudamemcpykind(pointer(dst), src)
cudamemcpykind(dst::Union(Ptr, CudaDevicePtr), src) = cudamemcpykind(dst, pointer(src))
cudamemcpykind(dst, src) = cudamemcpykind(pointer(dst), pointer(src))

function copy!{T}(dst::Union(Array{T},CudaArray{T}), src::Union(Array{T},CudaArray{T}))
    if length(dst) != length(src)
        throw(ArgumentError("Inconsistent array length."))
    end
    nbytes = length(src) * sizeof(T)
    rt.cudaMemcpy(dst, src, nbytes, cudamemcpykind(dst, src))
    return dst
end

to_host{T}(g::CudaArray{T}) = copy!(Array(T, size(g)), g)

# function copy!{T}(dst::Union(Array{T},CudaArray{T}), dstI::NTuple, src::Union(Array{T},CudaArray{T}), srcI::NTuple)
#     if length(dst) != length(src)
#         throw(ArgumentError("Inconsistent array length."))
#     end
#     nbytes = length(src) * sizeof(T)
#     rt.cudaMemcpy(dst, src, nbytes, cudamemcpykind(dst, src))
#     return dst
# end