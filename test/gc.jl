import CUDArt
using Base.Test

##########################
# Low-level memory tests #
##########################
devlist = CUDArt.devices(dev->true)
for dev in devlist
    CUDArt.device(dev)
    p = CUDArt.malloc(UInt8, 1)
    p2 = CUDArt.malloc(UInt16, 100)
    CUDArt.free(p)
    CUDArt.free(p2)
    a = rand(5,3)
    g = CUDArt.CudaArray(a)
    gp = CUDArt.CudaPitchedArray(a)
    CUDArt.free(g)
    CUDArt.free(gp)
    # Also test finalizer calls
    g = CUDArt.CudaArray(a)
    g = CUDArt.CudaPitchedArray(a)
    g = nothing
end

gc()  # check for finalizer errors

# Test free when the allocated device is not the current device
if length(devlist) > 1
    CUDArt.device(devlist[1])
    p1a = CUDArt.malloc(UInt8, 1)
    p1 = CUDArt.malloc(UInt16, 100)
    CUDArt.device(devlist[2])
    p2 = CUDArt.malloc(UInt16, 100)
    CUDArt.free(p1)
    CUDArt.free(p2)
    CUDArt.free(p1a)
end

gc()

gc()
