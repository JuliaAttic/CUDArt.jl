# Instead of using cudaStreamSynchronize, this implements
# a version that waits on a condition. This allows you to
# use this with Julia Task interface. A practical application
# is that one Julia process can feed multiple devices, with the jobs
# running asynchronously.

@compat abstract type AbstractStream end

type Stream <: AbstractStream
    inner::CuStream
    c::Condition
end
function Stream()
    p = Array{Ptr{Void}}(1)
    rt.cudaStreamCreate(p)
    hnd = CuStream(p[1])
    Stream(hnd, Condition())
end
NullStream() = Stream(CuStream(C_NULL), Condition())

convert(::Type{CuStream}, s::Stream) = s.inner

unsafe_convert(::Type{Ptr{Void}}, s::Stream) = unsafe_convert(Ptr{Void}, s.inner)
unsafe_convert(::Type{Ptr}, s::Stream) = unsafe_convert(Ptr{Void}, s.inner)

const null_stream = NullStream()

destroy(s::Stream) = rt.cudaStreamDestroy(s.ptr)

synchronize(s::Stream) = rt.cudaStreamSynchronize(s)

function wait(s::Stream)
    runnotify = data -> notify(s.c)
    notifyasync = Base.SingleAsyncWork(runnotify)
    rt.cudaStreamAddCallback(s, c_async_send_cudastream[], notifyasync.inner, 0)
    wait(s.c)
    rt.checkerror(rt.cudaGetLastError())
end

async_send_cudastream(hnd, status, data) = (ccall(:uv_async_send,Cint,(Ptr{Void},),data); nothing)

const c_async_send_cudastream = Ref{Ptr{Void}}()
