driver_version() = (a = Cint[0]; rt.cudaDriverGetVersion(a); int(a[1]))
runtime_version() = (a = Cint[0]; rt.cudaRuntimeGetVersion(a); int(a[1]))
