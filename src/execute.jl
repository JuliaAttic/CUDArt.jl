# Note this is asynchronous wrt the host, but you can wait on the stream
function cudasleep(secs; dev::Integer=device(), stream=null_stream)
    device(dev)
    rate = attribute(dev, rt.cudaDevAttrClockRate)
    func = ptxdict[dev].fns["clock_block"]
    twatchdog = 1.95  # watchdog timer kicks in after 2 secs
    while secs > 0
        tics = round(Int64, 1000*rate*min(twatchdog, secs))  # rate is in kHz
        secs -= twatchdog
        cudacall(func, 1, 1, (Int64,), tics; stream=convert(CuStream, stream))
    end
end
