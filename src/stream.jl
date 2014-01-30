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
    status::Cuint
    c::Condition

    function Stream()
        p = Array(Ptr{Void}, 1)
        rt.cudaStreamCreate(p)
        hnd = StreamHandle(p[1])
        c = Condition()
        new(hnd, 0, c)
    end
end

type NullStream <: AbstractStream
end

convert(::Type{Ptr{Void}}, s::Stream) = convert(Ptr{Void}, s.handle)
convert(::Type{Ptr{Void}}, s::NullStream) = C_NULL

const null_stream = NullStream()

destroy(s::Stream) = rt.cudaStreamDestroy(s.ptr)

synchronize(s::Stream) = rt.cudaStreamSynchronize(s)
function wait(s::Stream)
    rt.cudaStreamAddCallback(s, streamcb, pointer_from_objref(s), 0)
    println("About to wait")
    flush(STDOUT)
    wait(s.c)
    println("Done waiting")
    rt.checkerror(s.status)
end

wait(s::NullStream) = rt.cudaDeviceSynchronize()

function callback_notify(hnd, status, data)
    println("In notify")
    s = unsafe_pointer_to_objref(data)::Stream
    @show s
    s.status = status
    notify(s.c)
    nothing
end

const streamcb = cfunction(callback_notify, Nothing, (rt.cudaStream_t, rt.cudaError_t, Ptr{Void}))
