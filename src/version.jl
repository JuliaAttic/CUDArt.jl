driver_version() = (a = Cint[0]; rt.cudaDriverGetVersion(a); @compat(Int(a[1])))
runtime_version() = (a = Cint[0]; rt.cudaRuntimeGetVersion(a); @compat(Int(a[1])))
