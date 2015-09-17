driver_version() = (a = Cint[0]; rt.cudaDriverGetVersion(a); Int(a[1]))
runtime_version() = (a = Cint[0]; rt.cudaRuntimeGetVersion(a); Int(a[1]))
