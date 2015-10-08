###############################
# CUDA Array and memory types #
###############################

# Abstract CUDA array types
abstract AbstractCudaArray{T,N}
typealias AbstractCudaVector{T} AbstractCudaArray{T,1}
typealias AbstractCudaMatrix{T} AbstractCudaArray{T,2}

# copy method for AbstractCudaArray
copy(a::AbstractCudaArray; stream=null_stream) = copy!(similar(a),a;stream=stream)

# Set the following to true to store a backtrace
# at allocation time, to identify where each array comes from
const debugMemory = false

# Contiguous arrays on the GPU
if !debugMemory
    type CudaArray{T,N} <: AbstractCudaArray{T,N}
        ptr::CudaPtr{T}
        dims::NTuple{N,Int}
        dev::Int
    end
else
    type CudaArray{T,N} <: AbstractCudaArray{T,N}
        ptr::CudaPtr{T}
        dims::NTuple{N,Int}
        dev::Int
        bt

        function CudaArray(ptr::CudaPtr{T}, dims::NTuple{N,Int}, dev::Integer)
            new(ptr, dims, dev, backtrace())
        end
    end
end

# Vector and matrix aliases
typealias CudaVector{T} CudaArray{T,1}
typealias CudaMatrix{T} CudaArray{T,2}
typealias CudaVecOrMat{T} Union{CudaVector{T}, CudaMatrix{T}}

# Layout-optimized 1-, 2-, and 3-dimensional arrays
if !debugMemory
    type CudaPitchedArray{T,N} <: AbstractCudaArray{T,N}
        ptr::rt.cudaPitchedPtr
        dims::NTuple{N,Int}
        dev::Int
    end
else
    type CudaPitchedArray{T,N} <: AbstractCudaArray{T,N}
        ptr::rt.cudaPitchedPtr
        dims::NTuple{N,Int}
        dev::Int
        bt

        function CudaPitchedArray(ptr::rt.cudaPitchedPtr, dims::NTuple{N,Int}, dev::Integer)
            new(ptr, dims, dev, backtrace())
        end
    end
end

# Pinned memory on the host
type HostArray{T,N} <: AbstractArray{T,N}
    ptr::Ptr{Void}
    data::Array{T,N}
end

typealias CdArray{T} Union{DenseArray{T},HostArray{T},AbstractCudaArray{T}}
typealias ContiguousArray{T} Union{Array{T},HostArray{T},CudaArray{T}}

###################
# Implementations #
###################

length(g::AbstractCudaArray) = prod(g.dims)
size(g::AbstractCudaArray) = g.dims
function size{T,N}(g::AbstractCudaArray{T,N}, d::Integer)
    d >= 1 ? (d <= N ? g.dims[d] : 1) : error("Invalid index of dimension.")
end
ndims{T,N}(g::AbstractCudaArray{T,N}) = N
eltype{T,N}(g::AbstractCudaArray{T,N}) = T
device(A::AbstractCudaArray) = A.dev
device(A::AbstractArray) = -1  # for host

pointer(g::AbstractCudaArray) = g.ptr

to_host{T}(g::AbstractCudaArray{T}) = copy!(Array(T, size(g)), g)

summary(g::AbstractCudaArray) = string(g)

######################################
# CudaArray: contiguous array on GPU #
######################################

CudaArray(T::Type, dims::Integer...) = CudaArray(T, dims)

function CudaArray(T::Type, dims::Dims)
    n = prod(dims)
    p = malloc(T, n)
    CudaArray{T,length(dims)}(p, dims, device())
end

CudaArray{T,N}(a::Array{T,N}; stream=null_stream) = copy!(CudaArray(T, size(a)), a; stream=stream)
CudaArray{T,N}(a::HostArray{T,N}; stream=null_stream) = copy!(CudaArray(T, size(a)), a; stream=stream)
CudaArray{T,N}(a::AbstractArray{T,N}) = CudaArray(convert(Array{T,N}, a))

stride(g::CudaArray, dim::Integer) = prod(size(g)[1:dim-1])

similar(g::CudaArray, T, dims::Int...) = similar(g,T,dims)
similar(g::CudaArray, T, dims::Dims) = CudaArray(T, dims)
similar(g::CudaArray) = CudaArray(eltype(g), size(g))
similar(g::CudaArray, T) = CudaArray(T, size(g))
similar(g::CudaArray, dims::Dims) = CudaArray(eltype(g), dims)

unsafe_convert{T}(::Type{Ptr{T}}, g::CudaArray) = unsafe_convert(Ptr{T}, pointer(g))

# convert{T,N}(::Type{CudaArray{T,N}}, g::CudaArray{T,N}) = g
# convert{R,S,N}(::Type{CudaArray{R,N}}, g::CudaArray{S,N}) = CudaArray{R,N}(g.ptr, g.dims, g.dev)
reinterpret{T}(::Type{T}, g::CudaArray{T}) = g
function reinterpret{R,S}(::Type{R}, g::CudaArray{S})
    if sizeof(R) != sizeof(S)
        error("result shape not specified")
    end
    CudaArray{R,ndims(g)}(g.ptr, g.dims, g.dev)
end
function reinterpret{R,S}(::Type{R}, g::CudaArray{S}, dims::Dims)
    lenR = div(sizeof(S)*length(g),sizeof(R))
    if prod(dims) != lenR
        throw(DimensionMismatch("New dimensions $dims must be consistent with array of length $lenR"))
    end
    CudaArray{R,length(dims)}(g.ptr, dims, g.dev)
end

free(g::CudaArray) = free(pointer(g))

if debugMemory
    function show(io::IO, g::CudaArray)
        println(io, typeof(g))
        println(io, "  ptr: ", g.ptr)
        println(io, "  dims: ", g.dims)
        println(io, "  dev: ", g.dev)
        print(io, "Allocated from:")
        Base.show_backtrace(io, g.bt)
    end
end

function copy!{T}(dst::ContiguousArray{T}, src::ContiguousArray{T}; stream=null_stream)
    if length(dst) != length(src)
        throw(ArgumentError("Inconsistent array length."))
    end
    nbytes = length(src) * sizeof(T)
    rt.cudaMemcpyAsync(dst, src, nbytes, cudamemcpykind(dst, src), stream)
    return dst
end

function fill!{T}(X::CudaArray{T}, val; stream=null_stream)
    valT = convert(T, val)
    func = ptxdict[device()].fns["fill_contiguous", T]
    nsm = attribute(device(), rt.cudaDevAttrMultiProcessorCount)
    mul = min(32, ceil(Int, length(X)/(256*nsm)))
    launch(func, mul*nsm, 256, (X, length(X), valT); stream=stream)
    X
end

#############################################################################
# CudaPitchedArray: layout-optimized 1-, 2- and 3-dimensional arrays on GPU #
#############################################################################

CudaPitchedArray(T::Type, dims::Integer...) = CudaPitchedArray(T, dims)

function CudaPitchedArray(T::Type, dims::Dims)
    nd = length(dims)
    1 <= nd <= 3 || error("Supports only dimensions 1, 2, or 3")
    p = Array(rt.cudaPitchedPtr, 1)
    ext = CudaExtent(T, dims)
    rt.cudaMalloc3D(p, ext)
    pp = p[1]
    pp = rt.cudaPitchedPtr(pp, dims[1]) # correct the xsize
    cptr = pp.ptr
    dev = device()
    cuda_ptrs[WeakRef(cptr)] = dev
    g = CudaPitchedArray{T,length(dims)}(pp, dims, dev)
    finalizer(g, free)
    g
end

CudaPitchedArray{T,N}(a::Array{T,N}) = copy!(CudaPitchedArray(T, size(a)), a)
CudaPitchedArray{T,N}(a::SharedArray{T,N}) = CudaPitchedArray(sdata(a))
CudaPitchedArray{T,N}(a::AbstractArray{T,N}) = CudaPitchedArray(convert(Array{T,N}, a))

stride(g::CudaPitchedArray, dim::Integer) = dim == 1 ? 1 :
                                            dim == 2 ? pitchel(g) :
                                            dim == 3 ? pitchel(g)*size(g,2) : pitchel(g)*size(g,2)*size(g,3)

similar(g::CudaPitchedArray, T, dims::Dims) = CudaPitchedArray(T, dims)
similar(g::CudaPitchedArray) = CudaPitchedArray(eltype(g), size(g))
similar(g::CudaPitchedArray, T) = CudaPitchedArray(T, size(g))
similar(g::CudaPitchedArray, dims::Dims) = CudaPitchedArray(eltype(g), dims)

unsafe_convert(::Type{rt.cudaPitchedPtr}, g::CudaPitchedArray) = pointer(g)
unsafe_convert{T}(::Type{Ptr{T}}, g::CudaPitchedArray{T}) = unsafe_convert(Ptr{T}, rawpointer(g))

# convert{T,N}(::Type{CudaPitchedArray{T,N}}, g::CudaPitchedArray{T,N}) = g
# convert{R,S,N}(::Type{CudaPitchedArray{R,N}}, g::CudaPitchedArray{S,N}) = CudaPitchedArray{R,N}(g.ptr, g.dims, g.dev)

reinterpret{T}(::Type{T}, g::CudaPitchedArray{T}) = g
function reinterpret{R,S}(::Type{R}, g::CudaPitchedArray{S})
    if sizeof(R) != sizeof(S)
        error("result shape not specified")
    end
    CudaPitchedArray{R,ndims(g)}(g.ptr, g.dims, g.dev)
end
function reinterpret{R,S}(::Type{R}, g::CudaPitchedArray{S}, dims::Dims)
    if length(g) == 0 && prod(dims) == 0
        return CudaPitchedArray{R,length(dims)}(g.ptr, dims, g.dev)
    end
    # Because of the pitch, we don't need the first dimension to agree exactly
    if dims[1]*sizeof(R) > size(g,1)*sizeof(S)
        throw(DimensionMismatch("First dimension $(dims[1]) is too large for $(size(g,1)*sizeof(S)) bytes"))
    end
    # Require agreement for dimensions 2 and 3
    nd = length(dims)
    lg, ld = 1, 1
    for d = 2:nd
        lg *= size(g,d)
        ld *= dims[d]
    end
    for d = nd+1:ndims(g)
        lg *= size(g,d)
    end
    if ld != lg
        throw(DimensionMismatch("New dimensions $dims must be consistent---in all dimensions except the first---with array of dimensions with product $lg"))
    end
    pptr = g.ptr
    newptr = rt.cudaPitchedPtr(pptr.ptr, pptr.pitch, dims[1], nd>1?dims[2]:1)
    CudaPitchedArray{R,length(dims)}(newptr, dims, g.dev)
end

function free(g::CudaPitchedArray)
    p = g.ptr.ptr
    if p != C_NULL && haskey(cuda_ptrs, p)
        delete!(cuda_ptrs, p)
        rt.cudaFree(p)
        g.ptr = rt.cudaPitchedPtr()
    end
end

if debugMemory
    function show(io::IO, g::CudaPitchedArray)
        println(io, typeof(g))
        println(io, "  ptr: ", g.ptr)
        println(io, "  dims: ", g.dims)
        println(io, "  dev: ", g.dev)
        print(io, "Allocated from:")
        Base.show_backtrace(io, g.bt)
    end
end


pitchedptr(g::CudaPitchedArray) = pointer(g)
function pitchedptr(a::ContiguousArray)
    1 <= ndims(a) <= 3 || error("Supports only dimensions 1, 2, or 3")
    rt.cudaPitchedPtr(pointer(a), size(a,1)*sizeof(eltype(a)), size(a,1), size(a,2))
end
function pitchedptr{T}(p::Ptr{T}, sz)
    1 <= length(sz) <= 3 || error("Supports only dimensions 1, 2, or 3")
    rt.cudaPitchedPtr(p, sz[1]*sizeof(T), sz[1], length(sz) > 1 ? sz[2] : 1)
end


pitchbytes(g::CudaArray) = size(g,1)*sizeof(eltype(g))
pitchbytes(g::CudaPitchedArray) = g.ptr.pitch

pitchel(g::AbstractCudaArray) = div(pitchbytes(g),sizeof(eltype(g)))

rawpointer(g::CudaArray) = g.ptr
rawpointer(g::CudaPitchedArray) = g.ptr.ptr

CudaExtent{T}(a::AbstractCudaArray{T}) = CudaExtent(pitchbytes(a), size(a,2), size(a,3))

copy!{T}(dst::AbstractCudaArray{T}, src::AbstractCudaArray{T}; kwargs...) = cudacopy!(dst, src; kwargs...)
copy!{T}(dst::CdArray{T}, src::AbstractCudaArray{T}; kwargs...) = cudacopy!(dst, src; kwargs...)
copy!{T}(dst::AbstractCudaArray{T}, src::CdArray{T}; kwargs...) = cudacopy!(dst, src; kwargs...)
function cudacopy!{T}(dst::CdArray{T}, src::CdArray{T}; kwargs...)
    if size(dst) != size(src)
        throw(DimensionMismatch("Size $(size(dst)) of dst is not equal to $(size(src)) of src"))
    end
    copy!(dst, map(d->1:d, size(dst)), src, map(d->1:d, size(src)); kwargs...)
end

copy!{T}(dst::AbstractCudaArray{T}, dstI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}, src::AbstractCudaArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}; stream=null_stream) =
    cudacopy!(dst, dstI, src, srcI, stream=stream)
copy!{T}(dst::CdArray{T}, dstI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}, src::AbstractCudaArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}; stream=null_stream) =
    cudacopy!(dst, dstI, src, srcI, stream=stream)
copy!{T}(dst::AbstractCudaArray{T}, dstI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}, src::CdArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}; stream=null_stream) =
    cudacopy!(dst, dstI, src, srcI, stream=stream)
function cudacopy!{T}(dst::CdArray{T}, dstI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}, src::CdArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}; stream=null_stream)
    nd = length(srcI)
    if length(dstI) != nd
        throw(DimensionMismatch("Destination of $(length(dstI)) dimensions differs from dimensionality $nd of src"))
    end
    for i = 1:nd
        length(dstI[i]) == length(srcI[i]) || throw(DimensionMismatch("In dimension $i, destination range of length $(length(dstI[i])) but source range has length $(length(srcI[i]))"))
        first(dstI[i]) >= 1 && last(dstI[i]) <= size(dst, i) || throw(DimensionMismatch("In dimension $i, destination range of $(dstI[i]) is not within array dimension of $(size(dst,i))"))
        first(srcI[i]) >= 1 && last(srcI[i]) <= size(src, i) || throw(DimensionMismatch("In dimension $i, source range of $(srcI[i]) is not within array dimension of $(size(src,i))"))
    end
    checkstrides_pitched(dst)
    checkstrides_pitched(src)
    ext = CudaExtent(eltype(src),map(length, srcI))
    srcpos = CudaPos(eltype(src),map(first, srcI))
    dstpos = CudaPos(eltype(dst),map(first, dstI))
    params = [rt.cudaMemcpy3DParms(C_NULL, srcpos, pitchedptr(src), C_NULL, dstpos, pitchedptr(dst), ext, cudamemcpykind(dst, src))]
    rt.cudaMemcpy3DAsync(params, stream)
    dst
end

function copy!{T}(dst::CdArray{T}, src::AbstractCudaArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}; stream=null_stream)
    nd = length(srcI)
    for i = 1:nd
        first(srcI[i]) >= 1 && last(srcI[i]) <= size(src, i) || throw(DimensionMismatch("In dimension $i, source range of $(srcI[i]) is not within array dimension of $(size(src,i))"))
        length(srcI[i]) == size(dst, i) || throw(DimensionMismatch("In dimension $i, the size $(size(dst, i)) of the destination is inconsistent with the size $(length(srcI[i])) being copied"))
    end
    checkstrides_pitched(dst)
    sz = map(length, srcI)
    ext = CudaExtent(eltype(src),sz)
    srcpos = CudaPos(eltype(src),map(first, srcI))
    dstpos = CudaPos(0, 0, 0)
    pdst = pitchedptr(dst)
    params = [rt.cudaMemcpy3DParms(C_NULL, srcpos, pitchedptr(src), C_NULL, dstpos, pdst, ext, rt.cudaMemcpyDeviceToHost)]
    rt.cudaMemcpy3DAsync(params, stream)
    dst
end

function cudaget!{T}(dst::CdArray{T}, src::CdArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}, default; kwargs...)
    nd = length(srcI)
    if ndims(dst) != nd
        throw(DimensionMismatch("Destination of $(ndims(dst)) dimensions differs from dimensionality $nd of src"))
    end
    for i = 1:nd
        size(dst,i) == length(srcI[i]) || throw(DimensionMismatch("In dimension $i, destination has dimension $(size(dst,i)) but source range has length $(length(srcI[i]))"))
    end
    srcII = ntuple(i->isa(srcI[i], Int) ? (srcI[i]:srcI[i]) : srcI[i], nd)
    dstIc, srcIc = Base.indcopy(size(src), srcII)
    if srcIc != srcII
        fill!(dst, default; kwargs...)
        copy!(dst, dstIc, src, srcIc; kwargs...)
    else
        copy!(dst, dstIc, src, srcIc; kwargs...)
    end
    dst
end
get!{T}(dst::AbstractCudaArray{T}, src::AbstractCudaArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}, default; kwargs...) = cudaget!(dst, src, srcI, default; kwargs...)
get!{T}(dst::AbstractCudaArray{T}, src::CdArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}, default; kwargs...) = cudaget!(dst, src, srcI, default; kwargs...)
get!{T}(dst::CdArray{T}, src::AbstractCudaArray{T}, srcI::Tuple{Vararg{Union{Int,UnitRange{Int}}}}, default; kwargs...) = cudaget!(dst, src, srcI, default; kwargs...)


function fill!{T}(X::CudaPitchedArray{T}, val; stream=null_stream)
    valT = convert(T, val)
    func = ptxdict[device()].fns["fill_pitched", T]
    nsm = attribute(device(), rt.cudaDevAttrMultiProcessorCount)
    mul = min(32, ceil(Int, length(X)/(256*nsm)))
    blockspergrid, threadsperblock = ndims(X) == 1 ? (mul*nsm, 256) : (mul*nsm, (16,16))
    launch(func, blockspergrid, threadsperblock, (X, size(X,1), size(X,2), size(X,3), pitchel(X), valT); stream=stream)
    X
end

#####################################
# HostArray (pinned memory on host) #
#####################################

HostArray{T}(::Type{T}, sz...; flags::Integer=rt.cudaHostAllocDefault) = HostArray(T, sz, flags=flags)
function HostArray{T}(::Type{T}, sz::Dims; flags::Integer=rt.cudaHostAllocDefault)
    p = Ptr{Void}[C_NULL]
    rt.cudaHostAlloc(p, prod(sz)*sizeof(T), flags)
    ptr = p[1]
    data = pointer_to_array(unsafe_convert(Ptr{T}, ptr), sz, false)
    ha = HostArray(ptr, data)
    finalizer(ha, free)
    cuda_ptrs[WeakRef(ptr)] = device()
    ha
end

function free(ha::HostArray)
    if ha.ptr != C_NULL && haskey(cuda_ptrs, ha.ptr)
        rt.cudaFreeHost(ha.ptr)
        ha.ptr = C_NULL
        ha.data = Array(eltype(ha), ntuple(d->0, ndims(ha)))
    end
end

size(ha::HostArray) = size(ha.data)
size(ha::HostArray, d) = size(ha.data, d)
ndims{T,N}(ha::HostArray{T,N}) = N
eltype{T,N}(ha::HostArray{T,N}) = T
getindex(ha::HostArray, i::Real) = getindex(ha.data, i)
getindex(ha::HostArray, i::Union{Real,AbstractVector}) = getindex(ha.data, i)
getindex(ha::HostArray, i::Union{Real,AbstractVector}, j::Union{Real,AbstractVector}) = getindex(ha.data, i, j)
getindex(ha::HostArray, i::Union{Real,AbstractVector}...) = getindex(ha.data, i...)
setindex!(ha::HostArray, val, i::Real) = setindex!(ha.data, val, i)
setindex!(ha::HostArray, val, i::Union{Real,AbstractVector}) = setindex!(ha.data, val, i)
setindex!(ha::HostArray, val, i::Union{Real,AbstractVector}, j::Union{Real,AbstractVector}) = setindex!(ha.data, val, i, j)
setindex!(ha::HostArray, val, i...) = setindex!(ha.data, val, i...)
pointer(ha::HostArray)    = pointer(ha.data)
rawpointer(ha::HostArray) = pointer(ha)
pitch(ha::HostArray) = size(ha,1)*sizeof(eltype(ha))
unsafe_convert{T}(::Type{Ptr{Void}}, ha::HostArray{T}) = ha.ptr
fill!(ha::HostArray, val) = fill!(ha.data, val)

function checkstrides_pitched(A)
    stride(A, 1) == 1 || error("A must have a stride of 1 along the first dimension")
    stride(A, 3) == stride(A, 2) * size(A, 2) || error("A must be contiguous for dimension 2")
end
