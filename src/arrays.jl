###############################
# CUDA Array and memory types #
###############################

abstract AbstractCudaArray{T,N}

# Set the following to true to store a backtrace
# at allocation time, to identify where each array comes from
const debugMemory = false

# A raw pointer
type CudaDevicePtr{T}
    ptr::Ptr{T}
end

# Contiguous arrays on the GPU
if !debugMemory
    type CudaArray{T,N} <: AbstractCudaArray{T,N}
        ptr::CudaDevicePtr{T}
        dims::NTuple{N,Int}
        dev::Int
    end
else
    type CudaArray{T,N} <: AbstractCudaArray{T,N}
        ptr::CudaDevicePtr{T}
        dims::NTuple{N,Int}
        dev::Int
        bt

        function CudaArray(ptr::CudaDevicePtr{T}, dims::NTuple{N,Int}, dev::Integer)
            new(ptr, dims, dev, backtrace())
        end
    end
end

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

typealias Arrays{T} Union(Array{T},HostArray{T},AbstractCudaArray{T})
typealias ContiguousArrays{T} Union(Array{T},HostArray{T},CudaArray{T})

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


#############################
# Low-level memory handling #
#############################

CudaDevicePtr() = CudaDevicePtr(C_NULL)
CudaDevicePtr(T::Type) = CudaDevicePtr(convert(Ptr{T},C_NULL))
convert{T}(::Type{Ptr{T}}, p::CudaDevicePtr{T}) = p.ptr
convert{T}(::Type{Ptr{None}}, p::CudaDevicePtr{T}) = convert(Ptr{None}, p.ptr)

rawpointer(p::CudaDevicePtr) = p

function malloc(T::Type, n::Integer)
    p = Ptr{Void}[C_NULL]
    nbytes = sizeof(T)*n
    rt.cudaMalloc(p, nbytes)
    cptr = CudaDevicePtr(convert(Ptr{T},p[1]))
    finalizer(cptr, free)
    cuda_ptrs[cptr] = device()
    cptr
end
malloc(nbytes::Integer) = malloc(Uint8, nbytes)

# Enable both manual and garbage-collected memory management.
# If you need to free resources, you can call free manually.
# cuda_ptrs keeps track of all memory that needs to be freed,
# and prevents double-free (which otherwise causes serious problems).
# key = ptr, val = device id
const cuda_ptrs = Dict{Any,Int}()

function free{T}(p::CudaDevicePtr{T})
    cnull = convert(Ptr{T}, C_NULL)
    if p.ptr != cnull && haskey(cuda_ptrs, p)
        delete!(cuda_ptrs, p)
        rt.cudaFree(p)
        p.ptr = cnull
    end
end

typealias Ptrs Union(Ptr, CudaDevicePtr, rt.cudaPitchedPtr)
typealias CudaPtrs Union(CudaDevicePtr, rt.cudaPitchedPtr)

cudamemcpykind(dstp::Ptr, srcp::Ptr) = rt.cudaMemcpyHostToHost
cudamemcpykind(dstp::CudaPtrs, srcp::Ptr) = rt.cudaMemcpyHostToDevice
cudamemcpykind(dstp::Ptr, srcp::CudaPtrs) = rt.cudaMemcpyDeviceToHost
cudamemcpykind(dstp::CudaPtrs, srcp::CudaPtrs) = rt.cudaMemcpyDeviceToDevice
cudamemcpykind(dst::Ptrs, src::Ptrs) = error("This should never happen") # prevent a useless ambiguity warning
cudamemcpykind(dst, src::Ptrs) = cudamemcpykind(pointer(dst), src)
cudamemcpykind(dst::Ptrs, src) = cudamemcpykind(dst, pointer(src))
cudamemcpykind(dst, src) = cudamemcpykind(pointer(dst), pointer(src))

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

convert{T}(::Type{Ptr{T}}, g::CudaArray) = convert(Ptr{T}, pointer(g))

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

function copy!{T}(dst::ContiguousArrays{T}, src::ContiguousArrays{T}; stream=null_stream)
    if length(dst) != length(src)
        throw(ArgumentError("Inconsistent array length."))
    end
    nbytes = length(src) * sizeof(T)
    rt.cudaMemcpyAsync(dst, src, nbytes, cudamemcpykind(dst, src), stream)
    return dst
end

function fill!{T}(X::CudaArray{T}, val; stream=null_stream)
    valT = convert(T, val)
    func = ptxdict[(device(), "fill_contiguous", T)]
    nsm = attribute(device(), rt.cudaDevAttrMultiProcessorCount)
    mul = min(32, iceil(length(X)/(256*nsm)))
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
    cuda_ptrs[cptr] = dev
    g = CudaPitchedArray{T,length(dims)}(pp, dims, dev)
    finalizer(g, free)
    g
end

CudaPitchedArray{T,N}(a::Array{T,N}) = copy!(CudaPitchedArray(T, size(a)), a)
CudaPitchedArray{T,N}(a::AbstractArray{T,N}) = CudaPitchedArray(convert(Array{T,N}, a))

convert(::Type{rt.cudaPitchedPtr}, g::CudaPitchedArray) = pointer(g)
convert{T}(::Type{Ptr{T}}, g::CudaPitchedArray{T}) = convert(Ptr{T}, rawpointer(g))

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
function pitchedptr(a::ContiguousArrays)
    1 <= ndims(a) <= 3 || error("Supports only dimensions 1, 2, or 3")
    rt.cudaPitchedPtr(pointer(a), size(a,1)*sizeof(eltype(a)), size(a,1), size(a,2))
end

pitchbytes(g::CudaArray) = size(g,1)*sizeof(eltype(g))
pitchbytes(g::CudaPitchedArray) = g.ptr.pitch

pitchel(g::AbstractCudaArray) = div(pitchbytes(g),sizeof(eltype(g)))

rawpointer(g::CudaArray) = g.ptr
rawpointer(g::CudaPitchedArray) = g.ptr.ptr

CudaExtent{T}(a::AbstractCudaArray{T}) = CudaExtent(pitchbytes(a), size(a,2), size(a,3))

function copy!{T}(dst::Arrays{T}, src::Arrays{T}; kwargs...)
    if size(dst) != size(src)
        throw(DimensionMismatch("Size $(size(dst)) of dst is not equal to $(size(src)) of src"))
    end
    copy!(dst, map(d->1:d, size(dst)), src, map(d->1:d, size(src)); kwargs...)
end

function copy!{T}(dst::Arrays{T}, dstI::(Union(Int,Range1{Int})...), src::Arrays{T}, srcI::(Union(Int,Range1{Int})...); stream=null_stream)
    nd = length(srcI)
    if length(dstI) != nd
        throw(DimensionMismatch("Destination of $(length(dstI)) dimensions differs from dimensionality $nd of src"))
    end
    for i = 1:nd
        length(dstI[i]) == length(srcI[i]) || throw(DimensionMismatch("In dimension $i, destination range of length $(length(dstI[i])) but source range has length $(length(srcI[i]))"))
        first(dstI[i]) >= 1 && last(dstI[i]) <= size(dst, i) || throw(DimensionMismatch("In dimension $i, destination range of $(dstI[i]) is not within array dimension of $(size(dst,i))"))
        first(srcI[i]) >= 1 && last(srcI[i]) <= size(src, i) || throw(DimensionMismatch("In dimension $i, source range of $(srcI[i]) is not within array dimension of $(size(src,i))"))
    end
    ext = CudaExtent(eltype(src),map(length, srcI))
    srcpos = CudaPos(eltype(src),map(first, srcI))
    dstpos = CudaPos(eltype(dst),map(first, dstI))
    params = [rt.cudaMemcpy3DParms(C_NULL, srcpos, pitchedptr(src), C_NULL, dstpos, pitchedptr(dst), ext, cudamemcpykind(dst, src))]
    rt.cudaMemcpy3DAsync(params, stream)
    dst
end


function cudaget!{T}(dst::Arrays{T}, src::Arrays{T}, srcI::(Union(Int,Range1{Int})...), default; kwargs...)
    nd = length(srcI)
    if ndims(dst) != nd
        throw(DimensionMismatch("Destination of $(ndims(dst)) dimensions differs from dimensionality $nd of src"))
    end
    for i = 1:nd
        size(dst,i) == length(srcI[i]) || throw(DimensionMismatch("In dimension $i, destination has dimension $(size(dst,i)) but source range has length $(length(srcI[i]))"))
    end
    srcII = ntuple(nd, i->isa(srcI[i], Int) ? (srcI[i]:srcI[i]) : srcI[i])
    dstIc, srcIc = Base.indcopy(size(src), srcII)
    if srcIc != srcII
        fill!(dst, default; kwargs...)
        copy!(dst, dstIc, src, srcIc; kwargs...)
    else
        copy!(dst, dstIc, src, srcIc; kwargs...)
    end
    dst
end
get!{T}(dst::AbstractCudaArray{T}, src::AbstractCudaArray{T}, srcI::(Union(Int,Range1{Int})...), default; kwargs...) = cudaget!(dst, src, srcI, default; kwargs...)
get!{T}(dst::AbstractCudaArray{T}, src::Arrays{T}, srcI::(Union(Int,Range1{Int})...), default; kwargs...) = cudaget!(dst, src, srcI, default; kwargs...)
get!{T}(dst::Arrays{T}, src::AbstractCudaArray{T}, srcI::(Union(Int,Range1{Int})...), default; kwargs...) = cudaget!(dst, src, srcI, default; kwargs...)


function fill!{T}(X::CudaPitchedArray{T}, val; stream=null_stream)
    valT = convert(T, val)
    func = ptxdict[(device(), "fill_pitched", T)]
    nsm = attribute(device(), rt.cudaDevAttrMultiProcessorCount)
    mul = min(32, iceil(length(X)/(256*nsm)))
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
    data = pointer_to_array(convert(Ptr{T}, ptr), sz, false)
    ha = HostArray(ptr, data)
    finalizer(ha, free)
    cuda_ptrs[ptr] = device()
    ha
end

function free(ha::HostArray)
    if ha.ptr != C_NULL && haskey(cuda_ptrs, ha.ptr)
        rt.cudaFreeHost(ha.ptr)
        ha.ptr = C_NULL
        ha.data = Array(eltype(ha), ntuple(ndims(ha), d->0))
    end
end

size(ha::HostArray) = size(ha.data)
size(ha::HostArray, d) = size(ha.data, d)
ndims{T,N}(ha::HostArray{T,N}) = N
eltype{T,N}(ha::HostArray{T,N}) = T
getindex(ha, i) = getindex(ha.data, i)
getindex(ha, i, j) = getindex(ha.data, i, j)
getindex(ha, i...) = getindex(ha.data, i...)
setindex!(ha, val, i) = setindex!(ha.data, val, i)
setindex!(ha, val, i, j) = setindex!(ha.data, val, i, j)
setindex!(ha, val, i...) = setindex!(ha.data, val, i...)
pointer(ha::HostArray)    = pointer(ha.data)
rawpointer(ha::HostArray) = pointer(ha)
pitch(ha::HostArray) = size(ha,1)*sizeof(eltype(ha))
convert{T}(::Type{Ptr{None}}, ha::HostArray{T}) = ha.ptr
fill!(ha::HostArray, val) = fill!(ha.data, val)
