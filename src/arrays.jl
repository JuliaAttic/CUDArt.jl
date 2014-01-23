###############
#
# Arrays on GPU
#
###############

abstract AbstractCudaArray{T,N}

length(g::AbstractCudaArray) = prod(g.dims)
size(g::AbstractCudaArray) = g.dims
function size{T,N}(g::AbstractCudaArray{T,N}, d::Integer)
    d >= 1 ? (d <= N ? g.dims[d] : 1) : error("Invalid index of dimension.")
end
ndims{T,N}(g::AbstractCudaArray{T,N}) = N
eltype{T,N}(g::AbstractCudaArray{T,N}) = T
pointer(g::AbstractCudaArray) = g.ptr

to_host{T}(g::AbstractCudaArray{T}) = copy!(Array(T, size(g)), g)


###########################
# Low-level memory handling
###########################
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

typealias Ptrs Union(Ptr, CudaDevicePtr, rt.cudaPitchedPtr)
typealias CudaPtrs Union(CudaDevicePtr, rt.cudaPitchedPtr)

cudamemcpykind(dstp::Ptr, srcp::Ptr) = rt.cudaMemcpyHostToHost
cudamemcpykind(dstp::CudaPtrs, srcp::Ptr) = rt.cudaMemcpyHostToDevice
cudamemcpykind(dstp::Ptr, srcp::CudaPtrs) = rt.cudaMemcpyDeviceToHost
cudamemcpykind(dstp::CudaPtrs, srcp::CudaPtrs) = rt.cudaMemcpyDeviceToDevice
cudamemcpykind(dst::Ptrs, src::Ptrs) = error("This should never happen") # avoid a useless ambiguity warning
cudamemcpykind(dst, src::Ptrs) = cudamemcpykind(pointer(dst), src)
cudamemcpykind(dst::Ptrs, src) = cudamemcpykind(dst, pointer(src))
cudamemcpykind(dst, src) = cudamemcpykind(pointer(dst), pointer(src))

#################################################
#
#  CudaArray: contiguous array on GPU
#
#################################################

type CudaArray{T,N} <: AbstractCudaArray{T,N}
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

convert{T}(::Type{Ptr{T}}, g::CudaArray{T}) = pointer(g).ptr
convert(::Type{Ptr{None}}, g::CudaArray) = convert(Ptr{None}, pointer(g))

function free(g::CudaArray)
    if convert(Ptr{None},g.ptr) != C_NULL
        free(g.ptr)
        g.ptr = CudaDevicePtr(eltype(g))
    end
end

function copy!{T}(dst::Union(Array{T},CudaArray{T}), src::Union(Array{T},CudaArray{T}))
    if length(dst) != length(src)
        throw(ArgumentError("Inconsistent array length."))
    end
    nbytes = length(src) * sizeof(T)
    rt.cudaMemcpy(dst, src, nbytes, cudamemcpykind(dst, src))
    return dst
end

function fill!{T}(X::CudaArray{T}, val)
    valT = convert(T, val)
    func = ptxdict[("fill_contiguous", T)]
    nsm = attribute(device(), rt.cudaDevAttrMultiProcessorCount)
    launch(func, 32*nsm, 256, (rawpointer(X), length(X), valT))
    X
end

############################################################################
#
#  CudaPitchedArray: layout-optimized 1-, 2- and 3-dimensional arrays on GPU
#
############################################################################

type CudaPitchedArray{T,N} <: AbstractCudaArray{T,N}
    ptr::rt.cudaPitchedPtr
    dims::NTuple{N,Int}
end

CudaPitchedArray(T::Type, dims::Integer...) = CudaPitchedArray(T, dims)

function CudaPitchedArray(T::Type, dims::Dims)
    nd = length(dims)
    1 <= nd <= 3 || error("Supports only dimensions 1, 2, or 3")
    p = Array(rt.cudaPitchedPtr, 1)
    ext = CudaExtent(T, dims)
    rt.cudaMalloc3D(p, ext)
    g = CudaPitchedArray{T,length(dims)}(p[1], dims)
    finalizer(g, free)
    g
end

CudaPitchedArray{T,N}(a::Array{T,N}) = copy!(CudaPitchedArray(T, size(a)), a)
CudaPitchedArray{T,N}(a::AbstractArray{T,N}) = CudaPitchedArray(convert(Array{T,N}, a))

convert(::Type{rt.cudaPitchedPtr}, g::CudaPitchedArray) = pointer(g)

function free(g::CudaPitchedArray)
    p = g.ptr.ptr
    if p != C_NULL
        rt.cudaFree(p)
#         g.ptr.ptr = C_NULL
    end
end

pitchedptr(g::CudaPitchedArray) = pointer(g)
function pitchedptr(a::Array)
    1 <= ndims(a) <= 3 || error("Supports only dimensions 1, 2, or 3")
    rt.cudaPitchedPtr(pointer(a), size(a,1)*sizeof(eltype(a)), size(a,1), size(a,2))
end

pitch(g::CudaArray) = size(g,1)*sizeof(eltype(g))
pitch(g::CudaPitchedArray) = g.ptr.pitch

rawpointer(g::CudaArray) = g.ptr
rawpointer(g::CudaPitchedArray) = g.ptr.ptr

CudaExtent{T}(a::AbstractCudaArray{T}) = CudaExtent(pitch(a), size(a,2), size(a,3))

function copy!{T}(dst::Union(Array{T},CudaPitchedArray{T}), src::Union(Array{T},CudaPitchedArray{T}))
    if size(dst) != size(src)
        throw(DimensionMismatch("Size $size(dst) of dst is not equal to $size(src) of src"))
    end
    copy!(dst, map(d->1:d, size(dst)), src, map(d->1:d, size(src)))
end

function copy!{T}(dst::Union(Array{T},CudaPitchedArray{T}), dstI::(Union(Int,Range1{Int})...), src::Union(Array{T},CudaPitchedArray{T}), srcI::(Union(Int,Range1{Int})...))
    nd = length(srcI)
    if length(dstI) != nd
        throw(DimensionMismatch("Destination of $length(dstI) dimensions differs from dimensionality $nd of src"))
    end
    for i = 1:nd
        length(dstI[i]) == length(srcI[i]) || throw(DimensionMismatch("In dimension $i, destination range of length $length(dstI[i]) but source range has length $length(srcI[i])"))
        first(dstI[i]) >= 1 && last(dstI[i]) <= size(dst, i) || throw(DimensionMismatch("In dimension $i, destination range of $(dstI[i]) is not within array dimension of $size(dst,i)"))
        first(srcI[i]) >= 1 && last(srcI[i]) <= size(src, i) || throw(DimensionMismatch("In dimension $i, source range of $(srcI[i]) is not within array dimension of $size(src,i)"))
    end
    ext = CudaExtent(eltype(src),map(length, srcI))
    srcpos = CudaPos(eltype(src),map(first, srcI))
    dstpos = CudaPos(eltype(dst),map(first, dstI))
    params = [rt.cudaMemcpy3DParms(C_NULL, srcpos, pitchedptr(src), C_NULL, dstpos, pitchedptr(dst), ext, cudamemcpykind(dst, src))]
    rt.cudaMemcpy3D(params)
    dst
end

function get!{T}(dst::Union(Array{T},CudaPitchedArray{T}), src::Union(Array{T},CudaPitchedArray{T}), srcI::(Union(Int,Range1{Int})...), default)
    nd = length(srcI)
    if ndims(dst) != nd
        throw(DimensionMismatch("Destination of $ndims(dst) dimensions differs from dimensionality $nd of src"))
    end
    for i = 1:nd
        size(dst,i) == length(srcI[i]) || throw(DimensionMismatch("In dimension $i, destination has dimension $length(dstI[i]) but source range has length $length(srcI[i])"))
    end
    srcII = ntuple(nd, i->isa(srcI[i], Int) ? (srcI[i]:srcI[i]) : srcI[i])
    dstIc, srcIc = Base.indcopy(size(src), srcII)
    if srcIc != srcII
        fill!(dst, default)
        copy!(dst, dstIc, src, srcIc)
    else
        copy!(dst, dstIc, src, srcIc)
    end
    dst
end

function fill!{T}(X::CudaPitchedArray{T}, val)
    valT = convert(T, val)
    func = ptxdict[("fill_pitched", T)]
    nsm = attribute(device(), rt.cudaDevAttrMultiProcessorCount)
    blockspergrid, threadsperblock = ndims(X) == 1 ? (32*nsm, 256) : (32*nsm, (16,16))
    launch(func, blockspergrid, threadsperblock, (rawpointer(X), size(X,1), size(X,2), size(X,3), div(pitch(X), sizeof(T)), valT))
    X
end
