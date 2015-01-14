# Instead of using cudaStreamSynchronize, this implements
# a version that waits on a condition. This allows you to
# use this with Julia Task interface. A practical application
# is that one Julia process can feed multiple devices, with the jobs
# running asynchronously.

immutable StreamHandle
    handle::Ptr{Void}
end

convert(::Type{Ptr{Void}}, shnd::StreamHandle) = shnd.handle

abstract AbstractStream

type Stream <: AbstractStream
    handle::StreamHandle
    c::Condition
end
function Stream()
    p = Array(Ptr{Void}, 1)
    rt.cudaStreamCreate(p)
    hnd = StreamHandle(p[1])
    Stream(hnd, Condition())
end
NullStream() = Stream(StreamHandle(C_NULL), Condition())

convert(::Type{Ptr{Void}}, s::Stream) = convert(Ptr{Void}, s.handle)

const null_stream = NullStream()

destroy(s::Stream) = rt.cudaStreamDestroy(s.ptr)

synchronize(s::Stream) = rt.cudaStreamSynchronize(s)

function wait(s::Stream)
    runnotify = data -> notify(s.c)
    notifyasync = Base.SingleAsyncWork(runnotify)
    rt.cudaStreamAddCallback(s, c_async_send_cudastream, notifyasync.handle, 0)
    wait(s.c)
    rt.checkerror(rt.cudaGetLastError())
end

async_send_cudastream(hnd, status, data) = (ccall(:uv_async_send,Cint,(Ptr{Void},),data); nothing)
const c_async_send_cudastream = cfunction(async_send_cudastream, Void, (rt.cudaStream_t, rt.cudaError_t, Ptr{Void}))
