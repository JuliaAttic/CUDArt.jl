immutable Stream
    handle::Ptr{Void}
end

stream() = (ret = Array(Stream,1); rt.cudaStreamCreate(ret); ret[1])
null_stream() = Stream(C_NULL)
destroy(s::Stream) = rt.cudaStreamDestroy(s.ptr)
synchronize(s::Stream) = rt.cudaStreamSynchronize(s.ptr)
