function driver_version()
    ver = Ref{Cint}()
    rt.cudaDriverGetVersion(ver)
    return Int(ver[])
end

function runtime_version()
    ver = Ref{Cint}()
    rt.cudaRuntimeGetVersion(ver)
    return Int(ver[])
end
