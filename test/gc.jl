import CUDArt
using Base.Test

##########################
# Low-level memory tests #
##########################
devlist = CUDArt.devices(dev->true)
for dev in devlist
    CUDArt.device(dev)
    p = CUDArt.malloc(UInt8, 1)
    p2 = CUDArt.malloc(Uint16, 100)
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
    CUDArt.device_reset(dev)
end

gc()  # check for finalizer errors

# Test free when the allocated device is not the current device
if length(devlist) > 1
    CUDArt.device(devlist[1])
    p1a = CUDArt.malloc(UInt8, 1)
    p1 = CUDArt.malloc(Uint16, 100)
    CUDArt.device(devlist[2])
    p2 = CUDArt.malloc(Uint16, 100)
    CUDArt.free(p1)
    CUDArt.free(p2)
    CUDArt.free(p1a)
    CUDArt.device_reset(devlist[1])
    CUDArt.device_reset(devlist[2])
end

gc()

# Check whether gc/finalizers lead to bad behavior across
# device resets (the pointer address is reproducible)
CUDArt.device(0)
a = rand(5,3)
g = CUDArt.CudaArray(a)
CUDArt.device_reset(0)
@test isempty(CUDArt.cuda_ptrs)
CUDArt.device(0)
g = CUDArt.CudaArray(a)
# In case the next gc() test yields an error, the next two lines let
# us do some archaeology
dictcopy = deepcopy(CUDArt.cuda_ptrs)
gptrcopy = copy(pointer(g))
gc()   # Check that this doesn't delete the new g
@test !isempty(CUDArt.cuda_ptrs)
h_g = CUDArt.to_host(g)
CUDArt.free(g)
@test isempty(CUDArt.cuda_ptrs)
@test h_g == a
CUDArt.device_reset(0)

gc()
