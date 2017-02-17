# Instead of using cudaStreamSynchronize, this implements
# a version that waits on a condition. This allows you to
# use this with Julia Task interface. A practical application
# is that one Julia process can feed multiple devices, with the jobs
# running asynchronously.
import Base: AsyncCondition
@compat abstract type AbstractStream end

type Stream <: AbstractStream
    inner::CuStream
    c::AsyncCondition
end
function Stream()
    p = Ref{Ptr{Void}}()
    rt.cudaStreamCreate(p)
    hnd = CuStream(p[])
    Stream(hnd, AsyncCondition())
end
NullStream() = Stream(CUDAdrv.CuDefaultStream(), AsyncCondition())
const null_stream = NullStream()

convert(::Type{CuStream}, s::Stream) = s.inner

unsafe_convert(::Type{Ptr{Void}}, s::Stream) = unsafe_convert(Ptr{Void}, s.inner)

synchronize(s::Stream) = synchronize(s.inner)

function wait(s::Stream)
    rt.cudaStreamAddCallback(s, c_async_send_cudastream[], Base.unsafe_convert(Ptr{Void}, s.c), 0)
    wait(s.c)
    rt.checkerror(rt.cudaGetLastError())
end

async_send_cudastream(hnd, status, data) = (ccall(:uv_async_send,Cint,(Ptr{Void},),data); nothing)

const c_async_send_cudastream = Ref{Ptr{Void}}()
