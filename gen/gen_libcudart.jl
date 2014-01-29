# Julia wrapper for header: /usr/local/cuda-5.0/include/cuda_runtime_api.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function cudaDeviceReset()
  checkerror(ccall( (:cudaDeviceReset, libcudart), cudaError_t, (), ))
end
function cudaDeviceSynchronize()
  checkerror(ccall( (:cudaDeviceSynchronize, libcudart), cudaError_t, (), ))
end
function cudaDeviceSetLimit(limit, value)
  checkerror(ccall( (:cudaDeviceSetLimit, libcudart), cudaError_t, (cudaLimit, Csize_t), limit, value))
end
function cudaDeviceGetLimit(pValue, limit)
  checkerror(ccall( (:cudaDeviceGetLimit, libcudart), cudaError_t, (Ptr{Csize_t}, cudaLimit), pValue, limit))
end
function cudaDeviceGetCacheConfig(pCacheConfig)
  checkerror(ccall( (:cudaDeviceGetCacheConfig, libcudart), cudaError_t, (Ptr{cudaFuncCache},), pCacheConfig))
end
function cudaDeviceSetCacheConfig(cacheConfig)
  checkerror(ccall( (:cudaDeviceSetCacheConfig, libcudart), cudaError_t, (cudaFuncCache,), cacheConfig))
end
function cudaDeviceGetSharedMemConfig(pConfig)
  checkerror(ccall( (:cudaDeviceGetSharedMemConfig, libcudart), cudaError_t, (Ptr{cudaSharedMemConfig},), pConfig))
end
function cudaDeviceSetSharedMemConfig(config)
  checkerror(ccall( (:cudaDeviceSetSharedMemConfig, libcudart), cudaError_t, (cudaSharedMemConfig,), config))
end
function cudaDeviceGetByPCIBusId(device, pciBusId)
  checkerror(ccall( (:cudaDeviceGetByPCIBusId, libcudart), cudaError_t, (Ptr{Cint}, Ptr{Uint8}), device, pciBusId))
end
function cudaDeviceGetPCIBusId(pciBusId, len, device)
  checkerror(ccall( (:cudaDeviceGetPCIBusId, libcudart), cudaError_t, (Ptr{Uint8}, Cint, Cint), pciBusId, len, device))
end
function cudaIpcGetEventHandle(handle, event)
  checkerror(ccall( (:cudaIpcGetEventHandle, libcudart), cudaError_t, (Ptr{cudaIpcEventHandle_t}, cudaEvent_t), handle, event))
end
function cudaIpcOpenEventHandle(event, handle)
  checkerror(ccall( (:cudaIpcOpenEventHandle, libcudart), cudaError_t, (Ptr{cudaEvent_t}, cudaIpcEventHandle_t), event, handle))
end
function cudaIpcGetMemHandle(handle, devPtr)
  checkerror(ccall( (:cudaIpcGetMemHandle, libcudart), cudaError_t, (Ptr{cudaIpcMemHandle_t}, Ptr{None}), handle, devPtr))
end
function cudaIpcOpenMemHandle(devPtr, handle, flags)
  checkerror(ccall( (:cudaIpcOpenMemHandle, libcudart), cudaError_t, (Ptr{Ptr{None}}, cudaIpcMemHandle_t, Uint32), devPtr, handle, flags))
end
function cudaIpcCloseMemHandle(devPtr)
  checkerror(ccall( (:cudaIpcCloseMemHandle, libcudart), cudaError_t, (Ptr{None},), devPtr))
end
function cudaThreadExit()
  checkerror(ccall( (:cudaThreadExit, libcudart), cudaError_t, (), ))
end
function cudaThreadSynchronize()
  checkerror(ccall( (:cudaThreadSynchronize, libcudart), cudaError_t, (), ))
end
function cudaThreadSetLimit(limit, value)
  checkerror(ccall( (:cudaThreadSetLimit, libcudart), cudaError_t, (cudaLimit, Csize_t), limit, value))
end
function cudaThreadGetLimit(pValue, limit)
  checkerror(ccall( (:cudaThreadGetLimit, libcudart), cudaError_t, (Ptr{Csize_t}, cudaLimit), pValue, limit))
end
function cudaThreadGetCacheConfig(pCacheConfig)
  checkerror(ccall( (:cudaThreadGetCacheConfig, libcudart), cudaError_t, (Ptr{cudaFuncCache},), pCacheConfig))
end
function cudaThreadSetCacheConfig(cacheConfig)
  checkerror(ccall( (:cudaThreadSetCacheConfig, libcudart), cudaError_t, (cudaFuncCache,), cacheConfig))
end
function cudaGetLastError()
  checkerror(ccall( (:cudaGetLastError, libcudart), cudaError_t, (), ))
end
function cudaPeekAtLastError()
  checkerror(ccall( (:cudaPeekAtLastError, libcudart), cudaError_t, (), ))
end
function cudaGetErrorString(error)
  ccall( (:cudaGetErrorString, libcudart), Ptr{Uint8}, (cudaError_t,), error)
end
function cudaGetDeviceCount(count)
  checkerror(ccall( (:cudaGetDeviceCount, libcudart), cudaError_t, (Ptr{Cint},), count))
end
function cudaGetDeviceProperties(prop, device)
  checkerror(ccall( (:cudaGetDeviceProperties, libcudart), cudaError_t, (Ptr{cudaDeviceProp}, Cint), prop, device))
end
function cudaDeviceGetAttribute(value, attr, device)
  checkerror(ccall( (:cudaDeviceGetAttribute, libcudart), cudaError_t, (Ptr{Cint}, cudaDeviceAttr, Cint), value, attr, device))
end
function cudaChooseDevice(device, prop)
  checkerror(ccall( (:cudaChooseDevice, libcudart), cudaError_t, (Ptr{Cint}, Ptr{cudaDeviceProp}), device, prop))
end
function cudaSetDevice(device)
  checkerror(ccall( (:cudaSetDevice, libcudart), cudaError_t, (Cint,), device))
end
function cudaGetDevice(device)
  checkerror(ccall( (:cudaGetDevice, libcudart), cudaError_t, (Ptr{Cint},), device))
end
function cudaSetValidDevices(device_arr, len)
  checkerror(ccall( (:cudaSetValidDevices, libcudart), cudaError_t, (Ptr{Cint}, Cint), device_arr, len))
end
function cudaSetDeviceFlags(flags)
  checkerror(ccall( (:cudaSetDeviceFlags, libcudart), cudaError_t, (Uint32,), flags))
end
function cudaStreamCreate(pStream)
  checkerror(ccall( (:cudaStreamCreate, libcudart), cudaError_t, (Ptr{cudaStream_t},), pStream))
end
function cudaStreamCreateWithFlags(pStream, flags)
  checkerror(ccall( (:cudaStreamCreateWithFlags, libcudart), cudaError_t, (Ptr{cudaStream_t}, Uint32), pStream, flags))
end
function cudaStreamDestroy(stream)
  checkerror(ccall( (:cudaStreamDestroy, libcudart), cudaError_t, (cudaStream_t,), stream))
end
function cudaStreamWaitEvent(stream, event, flags)
  checkerror(ccall( (:cudaStreamWaitEvent, libcudart), cudaError_t, (cudaStream_t, cudaEvent_t, Uint32), stream, event, flags))
end
function cudaStreamAddCallback(stream, callback, userData, flags)
  checkerror(ccall( (:cudaStreamAddCallback, libcudart), cudaError_t, (cudaStream_t, cudaStreamCallback_t, Ptr{None}, Uint32), stream, callback, userData, flags))
end
function cudaStreamSynchronize(stream)
  checkerror(ccall( (:cudaStreamSynchronize, libcudart), cudaError_t, (cudaStream_t,), stream))
end
function cudaStreamQuery(stream)
  checkerror(ccall( (:cudaStreamQuery, libcudart), cudaError_t, (cudaStream_t,), stream))
end
function cudaEventCreate(event)
  checkerror(ccall( (:cudaEventCreate, libcudart), cudaError_t, (Ptr{cudaEvent_t},), event))
end
function cudaEventCreateWithFlags(event, flags)
  checkerror(ccall( (:cudaEventCreateWithFlags, libcudart), cudaError_t, (Ptr{cudaEvent_t}, Uint32), event, flags))
end
function cudaEventRecord(event, stream)
  checkerror(ccall( (:cudaEventRecord, libcudart), cudaError_t, (cudaEvent_t, cudaStream_t), event, stream))
end
function cudaEventQuery(event)
  checkerror(ccall( (:cudaEventQuery, libcudart), cudaError_t, (cudaEvent_t,), event))
end
function cudaEventSynchronize(event)
  checkerror(ccall( (:cudaEventSynchronize, libcudart), cudaError_t, (cudaEvent_t,), event))
end
function cudaEventDestroy(event)
  checkerror(ccall( (:cudaEventDestroy, libcudart), cudaError_t, (cudaEvent_t,), event))
end
function cudaEventElapsedTime(ms, start, _end)
  checkerror(ccall( (:cudaEventElapsedTime, libcudart), cudaError_t, (Ptr{Cfloat}, cudaEvent_t, cudaEvent_t), ms, start, _end))
end
function cudaConfigureCall(gridDim, blockDim, sharedMem, stream)
  checkerror(ccall( (:cudaConfigureCall, libcudart), cudaError_t, (dim3, dim3, Csize_t, cudaStream_t), gridDim, blockDim, sharedMem, stream))
end
function cudaSetupArgument(arg, size, offset)
  checkerror(ccall( (:cudaSetupArgument, libcudart), cudaError_t, (Ptr{None}, Csize_t, Csize_t), arg, size, offset))
end
function cudaFuncSetCacheConfig(func, cacheConfig)
  checkerror(ccall( (:cudaFuncSetCacheConfig, libcudart), cudaError_t, (Ptr{None}, cudaFuncCache), func, cacheConfig))
end
function cudaFuncSetSharedMemConfig(func, config)
  checkerror(ccall( (:cudaFuncSetSharedMemConfig, libcudart), cudaError_t, (Ptr{None}, cudaSharedMemConfig), func, config))
end
function cudaLaunch(func)
  checkerror(ccall( (:cudaLaunch, libcudart), cudaError_t, (Ptr{None},), func))
end
function cudaFuncGetAttributes(attr, func)
  checkerror(ccall( (:cudaFuncGetAttributes, libcudart), cudaError_t, (Ptr{cudaFuncAttributes}, Ptr{None}), attr, func))
end
function cudaSetDoubleForDevice(d)
  checkerror(ccall( (:cudaSetDoubleForDevice, libcudart), cudaError_t, (Ptr{Cdouble},), d))
end
function cudaSetDoubleForHost(d)
  checkerror(ccall( (:cudaSetDoubleForHost, libcudart), cudaError_t, (Ptr{Cdouble},), d))
end
function cudaMalloc(devPtr, size)
  checkerror(ccall( (:cudaMalloc, libcudart), cudaError_t, (Ptr{Ptr{None}}, Csize_t), devPtr, size))
end
function cudaMallocHost(ptr, size)
  checkerror(ccall( (:cudaMallocHost, libcudart), cudaError_t, (Ptr{Ptr{None}}, Csize_t), ptr, size))
end
function cudaMallocPitch(devPtr, pitch, width, height)
  checkerror(ccall( (:cudaMallocPitch, libcudart), cudaError_t, (Ptr{Ptr{None}}, Ptr{Csize_t}, Csize_t, Csize_t), devPtr, pitch, width, height))
end
function cudaMallocArray(array, desc, width, height, flags)
  checkerror(ccall( (:cudaMallocArray, libcudart), cudaError_t, (Ptr{cudaArray_t}, Ptr{cudaChannelFormatDesc}, Csize_t, Csize_t, Uint32), array, desc, width, height, flags))
end
function cudaFree(devPtr)
  checkerror(ccall( (:cudaFree, libcudart), cudaError_t, (Ptr{None},), devPtr))
end
function cudaFreeHost(ptr)
  checkerror(ccall( (:cudaFreeHost, libcudart), cudaError_t, (Ptr{None},), ptr))
end
function cudaFreeArray(array)
  checkerror(ccall( (:cudaFreeArray, libcudart), cudaError_t, (cudaArray_t,), array))
end
function cudaFreeMipmappedArray(mipmappedArray)
  checkerror(ccall( (:cudaFreeMipmappedArray, libcudart), cudaError_t, (cudaMipmappedArray_t,), mipmappedArray))
end
function cudaHostAlloc(pHost, size, flags)
  checkerror(ccall( (:cudaHostAlloc, libcudart), cudaError_t, (Ptr{Ptr{None}}, Csize_t, Uint32), pHost, size, flags))
end
function cudaHostRegister(ptr, size, flags)
  checkerror(ccall( (:cudaHostRegister, libcudart), cudaError_t, (Ptr{None}, Csize_t, Uint32), ptr, size, flags))
end
function cudaHostUnregister(ptr)
  checkerror(ccall( (:cudaHostUnregister, libcudart), cudaError_t, (Ptr{None},), ptr))
end
function cudaHostGetDevicePointer(pDevice, pHost, flags)
  checkerror(ccall( (:cudaHostGetDevicePointer, libcudart), cudaError_t, (Ptr{Ptr{None}}, Ptr{None}, Uint32), pDevice, pHost, flags))
end
function cudaHostGetFlags(pFlags, pHost)
  checkerror(ccall( (:cudaHostGetFlags, libcudart), cudaError_t, (Ptr{Uint32}, Ptr{None}), pFlags, pHost))
end
function cudaMalloc3D(pitchedDevPtr, extent)
  checkerror(ccall( (:cudaMalloc3D, libcudart), cudaError_t, (Ptr{cudaPitchedPtr}, cudaExtent), pitchedDevPtr, extent))
end
function cudaMalloc3DArray(array, desc, extent, flags)
  checkerror(ccall( (:cudaMalloc3DArray, libcudart), cudaError_t, (Ptr{cudaArray_t}, Ptr{cudaChannelFormatDesc}, cudaExtent, Uint32), array, desc, extent, flags))
end
function cudaMallocMipmappedArray(mipmappedArray, desc, extent, numLevels, flags)
  checkerror(ccall( (:cudaMallocMipmappedArray, libcudart), cudaError_t, (Ptr{cudaMipmappedArray_t}, Ptr{cudaChannelFormatDesc}, cudaExtent, Uint32, Uint32), mipmappedArray, desc, extent, numLevels, flags))
end
function cudaGetMipmappedArrayLevel(levelArray, mipmappedArray, level)
  checkerror(ccall( (:cudaGetMipmappedArrayLevel, libcudart), cudaError_t, (Ptr{cudaArray_t}, cudaMipmappedArray_const_t, Uint32), levelArray, mipmappedArray, level))
end
function cudaMemcpy3D(p)
  checkerror(ccall( (:cudaMemcpy3D, libcudart), cudaError_t, (Ptr{cudaMemcpy3DParms},), p))
end
function cudaMemcpy3DPeer(p)
  checkerror(ccall( (:cudaMemcpy3DPeer, libcudart), cudaError_t, (Ptr{cudaMemcpy3DPeerParms},), p))
end
function cudaMemcpy3DAsync(p, stream)
  checkerror(ccall( (:cudaMemcpy3DAsync, libcudart), cudaError_t, (Ptr{cudaMemcpy3DParms}, cudaStream_t), p, stream))
end
function cudaMemcpy3DPeerAsync(p, stream)
  checkerror(ccall( (:cudaMemcpy3DPeerAsync, libcudart), cudaError_t, (Ptr{cudaMemcpy3DPeerParms}, cudaStream_t), p, stream))
end
function cudaMemGetInfo(free, total)
  checkerror(ccall( (:cudaMemGetInfo, libcudart), cudaError_t, (Ptr{Csize_t}, Ptr{Csize_t}), free, total))
end
function cudaArrayGetInfo(desc, extent, flags, array)
  checkerror(ccall( (:cudaArrayGetInfo, libcudart), cudaError_t, (Ptr{cudaChannelFormatDesc}, Ptr{cudaExtent}, Ptr{Uint32}, cudaArray_t), desc, extent, flags, array))
end
function cudaMemcpy(dst, src, count, kind)
  checkerror(ccall( (:cudaMemcpy, libcudart), cudaError_t, (Ptr{None}, Ptr{None}, Csize_t, cudaMemcpyKind), dst, src, count, kind))
end
function cudaMemcpyPeer(dst, dstDevice, src, srcDevice, count)
  checkerror(ccall( (:cudaMemcpyPeer, libcudart), cudaError_t, (Ptr{None}, Cint, Ptr{None}, Cint, Csize_t), dst, dstDevice, src, srcDevice, count))
end
function cudaMemcpyToArray(dst, wOffset, hOffset, src, count, kind)
  checkerror(ccall( (:cudaMemcpyToArray, libcudart), cudaError_t, (cudaArray_t, Csize_t, Csize_t, Ptr{None}, Csize_t, cudaMemcpyKind), dst, wOffset, hOffset, src, count, kind))
end
function cudaMemcpyFromArray(dst, src, wOffset, hOffset, count, kind)
  checkerror(ccall( (:cudaMemcpyFromArray, libcudart), cudaError_t, (Ptr{None}, cudaArray_const_t, Csize_t, Csize_t, Csize_t, cudaMemcpyKind), dst, src, wOffset, hOffset, count, kind))
end
function cudaMemcpyArrayToArray(dst, wOffsetDst, hOffsetDst, src, wOffsetSrc, hOffsetSrc, count, kind)
  checkerror(ccall( (:cudaMemcpyArrayToArray, libcudart), cudaError_t, (cudaArray_t, Csize_t, Csize_t, cudaArray_const_t, Csize_t, Csize_t, Csize_t, cudaMemcpyKind), dst, wOffsetDst, hOffsetDst, src, wOffsetSrc, hOffsetSrc, count, kind))
end
function cudaMemcpy2D(dst, dpitch, src, spitch, width, height, kind)
  checkerror(ccall( (:cudaMemcpy2D, libcudart), cudaError_t, (Ptr{None}, Csize_t, Ptr{None}, Csize_t, Csize_t, Csize_t, cudaMemcpyKind), dst, dpitch, src, spitch, width, height, kind))
end
function cudaMemcpy2DToArray(dst, wOffset, hOffset, src, spitch, width, height, kind)
  checkerror(ccall( (:cudaMemcpy2DToArray, libcudart), cudaError_t, (cudaArray_t, Csize_t, Csize_t, Ptr{None}, Csize_t, Csize_t, Csize_t, cudaMemcpyKind), dst, wOffset, hOffset, src, spitch, width, height, kind))
end
function cudaMemcpy2DFromArray(dst, dpitch, src, wOffset, hOffset, width, height, kind)
  checkerror(ccall( (:cudaMemcpy2DFromArray, libcudart), cudaError_t, (Ptr{None}, Csize_t, cudaArray_const_t, Csize_t, Csize_t, Csize_t, Csize_t, cudaMemcpyKind), dst, dpitch, src, wOffset, hOffset, width, height, kind))
end
function cudaMemcpy2DArrayToArray(dst, wOffsetDst, hOffsetDst, src, wOffsetSrc, hOffsetSrc, width, height, kind)
  checkerror(ccall( (:cudaMemcpy2DArrayToArray, libcudart), cudaError_t, (cudaArray_t, Csize_t, Csize_t, cudaArray_const_t, Csize_t, Csize_t, Csize_t, Csize_t, cudaMemcpyKind), dst, wOffsetDst, hOffsetDst, src, wOffsetSrc, hOffsetSrc, width, height, kind))
end
function cudaMemcpyToSymbol(symbol, src, count, offset, kind)
  checkerror(ccall( (:cudaMemcpyToSymbol, libcudart), cudaError_t, (Ptr{None}, Ptr{None}, Csize_t, Csize_t, cudaMemcpyKind), symbol, src, count, offset, kind))
end
function cudaMemcpyFromSymbol(dst, symbol, count, offset, kind)
  checkerror(ccall( (:cudaMemcpyFromSymbol, libcudart), cudaError_t, (Ptr{None}, Ptr{None}, Csize_t, Csize_t, cudaMemcpyKind), dst, symbol, count, offset, kind))
end
function cudaMemcpyAsync(dst, src, count, kind, stream)
  checkerror(ccall( (:cudaMemcpyAsync, libcudart), cudaError_t, (Ptr{None}, Ptr{None}, Csize_t, cudaMemcpyKind, cudaStream_t), dst, src, count, kind, stream))
end
function cudaMemcpyPeerAsync(dst, dstDevice, src, srcDevice, count, stream)
  checkerror(ccall( (:cudaMemcpyPeerAsync, libcudart), cudaError_t, (Ptr{None}, Cint, Ptr{None}, Cint, Csize_t, cudaStream_t), dst, dstDevice, src, srcDevice, count, stream))
end
function cudaMemcpyToArrayAsync(dst, wOffset, hOffset, src, count, kind, stream)
  checkerror(ccall( (:cudaMemcpyToArrayAsync, libcudart), cudaError_t, (cudaArray_t, Csize_t, Csize_t, Ptr{None}, Csize_t, cudaMemcpyKind, cudaStream_t), dst, wOffset, hOffset, src, count, kind, stream))
end
function cudaMemcpyFromArrayAsync(dst, src, wOffset, hOffset, count, kind, stream)
  checkerror(ccall( (:cudaMemcpyFromArrayAsync, libcudart), cudaError_t, (Ptr{None}, cudaArray_const_t, Csize_t, Csize_t, Csize_t, cudaMemcpyKind, cudaStream_t), dst, src, wOffset, hOffset, count, kind, stream))
end
function cudaMemcpy2DAsync(dst, dpitch, src, spitch, width, height, kind, stream)
  checkerror(ccall( (:cudaMemcpy2DAsync, libcudart), cudaError_t, (Ptr{None}, Csize_t, Ptr{None}, Csize_t, Csize_t, Csize_t, cudaMemcpyKind, cudaStream_t), dst, dpitch, src, spitch, width, height, kind, stream))
end
function cudaMemcpy2DToArrayAsync(dst, wOffset, hOffset, src, spitch, width, height, kind, stream)
  checkerror(ccall( (:cudaMemcpy2DToArrayAsync, libcudart), cudaError_t, (cudaArray_t, Csize_t, Csize_t, Ptr{None}, Csize_t, Csize_t, Csize_t, cudaMemcpyKind, cudaStream_t), dst, wOffset, hOffset, src, spitch, width, height, kind, stream))
end
function cudaMemcpy2DFromArrayAsync(dst, dpitch, src, wOffset, hOffset, width, height, kind, stream)
  checkerror(ccall( (:cudaMemcpy2DFromArrayAsync, libcudart), cudaError_t, (Ptr{None}, Csize_t, cudaArray_const_t, Csize_t, Csize_t, Csize_t, Csize_t, cudaMemcpyKind, cudaStream_t), dst, dpitch, src, wOffset, hOffset, width, height, kind, stream))
end
function cudaMemcpyToSymbolAsync(symbol, src, count, offset, kind, stream)
  checkerror(ccall( (:cudaMemcpyToSymbolAsync, libcudart), cudaError_t, (Ptr{None}, Ptr{None}, Csize_t, Csize_t, cudaMemcpyKind, cudaStream_t), symbol, src, count, offset, kind, stream))
end
function cudaMemcpyFromSymbolAsync(dst, symbol, count, offset, kind, stream)
  checkerror(ccall( (:cudaMemcpyFromSymbolAsync, libcudart), cudaError_t, (Ptr{None}, Ptr{None}, Csize_t, Csize_t, cudaMemcpyKind, cudaStream_t), dst, symbol, count, offset, kind, stream))
end
function cudaMemset(devPtr, value, count)
  checkerror(ccall( (:cudaMemset, libcudart), cudaError_t, (Ptr{None}, Cint, Csize_t), devPtr, value, count))
end
function cudaMemset2D(devPtr, pitch, value, width, height)
  checkerror(ccall( (:cudaMemset2D, libcudart), cudaError_t, (Ptr{None}, Csize_t, Cint, Csize_t, Csize_t), devPtr, pitch, value, width, height))
end
function cudaMemset3D(pitchedDevPtr, value, extent)
  checkerror(ccall( (:cudaMemset3D, libcudart), cudaError_t, (cudaPitchedPtr, Cint, cudaExtent), pitchedDevPtr, value, extent))
end
function cudaMemsetAsync(devPtr, value, count, stream)
  checkerror(ccall( (:cudaMemsetAsync, libcudart), cudaError_t, (Ptr{None}, Cint, Csize_t, cudaStream_t), devPtr, value, count, stream))
end
function cudaMemset2DAsync(devPtr, pitch, value, width, height, stream)
  checkerror(ccall( (:cudaMemset2DAsync, libcudart), cudaError_t, (Ptr{None}, Csize_t, Cint, Csize_t, Csize_t, cudaStream_t), devPtr, pitch, value, width, height, stream))
end
function cudaMemset3DAsync(pitchedDevPtr, value, extent, stream)
  checkerror(ccall( (:cudaMemset3DAsync, libcudart), cudaError_t, (cudaPitchedPtr, Cint, cudaExtent, cudaStream_t), pitchedDevPtr, value, extent, stream))
end
function cudaGetSymbolAddress(devPtr, symbol)
  checkerror(ccall( (:cudaGetSymbolAddress, libcudart), cudaError_t, (Ptr{Ptr{None}}, Ptr{None}), devPtr, symbol))
end
function cudaGetSymbolSize(size, symbol)
  checkerror(ccall( (:cudaGetSymbolSize, libcudart), cudaError_t, (Ptr{Csize_t}, Ptr{None}), size, symbol))
end
function cudaPointerGetAttributes(attributes, ptr)
  checkerror(ccall( (:cudaPointerGetAttributes, libcudart), cudaError_t, (Ptr{cudaPointerAttributes}, Ptr{None}), attributes, ptr))
end
function cudaDeviceCanAccessPeer(canAccessPeer, device, peerDevice)
  checkerror(ccall( (:cudaDeviceCanAccessPeer, libcudart), cudaError_t, (Ptr{Cint}, Cint, Cint), canAccessPeer, device, peerDevice))
end
function cudaDeviceEnablePeerAccess(peerDevice, flags)
  checkerror(ccall( (:cudaDeviceEnablePeerAccess, libcudart), cudaError_t, (Cint, Uint32), peerDevice, flags))
end
function cudaDeviceDisablePeerAccess(peerDevice)
  checkerror(ccall( (:cudaDeviceDisablePeerAccess, libcudart), cudaError_t, (Cint,), peerDevice))
end
function cudaGraphicsUnregisterResource(resource)
  checkerror(ccall( (:cudaGraphicsUnregisterResource, libcudart), cudaError_t, (cudaGraphicsResource_t,), resource))
end
function cudaGraphicsResourceSetMapFlags(resource, flags)
  checkerror(ccall( (:cudaGraphicsResourceSetMapFlags, libcudart), cudaError_t, (cudaGraphicsResource_t, Uint32), resource, flags))
end
function cudaGraphicsMapResources(count, resources, stream)
  checkerror(ccall( (:cudaGraphicsMapResources, libcudart), cudaError_t, (Cint, Ptr{cudaGraphicsResource_t}, cudaStream_t), count, resources, stream))
end
function cudaGraphicsUnmapResources(count, resources, stream)
  checkerror(ccall( (:cudaGraphicsUnmapResources, libcudart), cudaError_t, (Cint, Ptr{cudaGraphicsResource_t}, cudaStream_t), count, resources, stream))
end
function cudaGraphicsResourceGetMappedPointer(devPtr, size, resource)
  checkerror(ccall( (:cudaGraphicsResourceGetMappedPointer, libcudart), cudaError_t, (Ptr{Ptr{None}}, Ptr{Csize_t}, cudaGraphicsResource_t), devPtr, size, resource))
end
function cudaGraphicsSubResourceGetMappedArray(array, resource, arrayIndex, mipLevel)
  checkerror(ccall( (:cudaGraphicsSubResourceGetMappedArray, libcudart), cudaError_t, (Ptr{cudaArray_t}, cudaGraphicsResource_t, Uint32, Uint32), array, resource, arrayIndex, mipLevel))
end
function cudaGraphicsResourceGetMappedMipmappedArray(mipmappedArray, resource)
  checkerror(ccall( (:cudaGraphicsResourceGetMappedMipmappedArray, libcudart), cudaError_t, (Ptr{cudaMipmappedArray_t}, cudaGraphicsResource_t), mipmappedArray, resource))
end
function cudaGetChannelDesc(desc, array)
  checkerror(ccall( (:cudaGetChannelDesc, libcudart), cudaError_t, (Ptr{cudaChannelFormatDesc}, cudaArray_const_t), desc, array))
end
function cudaCreateChannelDesc(x, y, z, w, f)
  ccall( (:cudaCreateChannelDesc, libcudart), cudaChannelFormatDesc, (Cint, Cint, Cint, Cint, cudaChannelFormatKind), x, y, z, w, f)
end
function cudaBindTexture(offset, texref, devPtr, desc, size)
  checkerror(ccall( (:cudaBindTexture, libcudart), cudaError_t, (Ptr{Csize_t}, Ptr{textureReference}, Ptr{None}, Ptr{cudaChannelFormatDesc}, Csize_t), offset, texref, devPtr, desc, size))
end
function cudaBindTexture2D(offset, texref, devPtr, desc, width, height, pitch)
  checkerror(ccall( (:cudaBindTexture2D, libcudart), cudaError_t, (Ptr{Csize_t}, Ptr{textureReference}, Ptr{None}, Ptr{cudaChannelFormatDesc}, Csize_t, Csize_t, Csize_t), offset, texref, devPtr, desc, width, height, pitch))
end
function cudaBindTextureToArray(texref, array, desc)
  checkerror(ccall( (:cudaBindTextureToArray, libcudart), cudaError_t, (Ptr{textureReference}, cudaArray_const_t, Ptr{cudaChannelFormatDesc}), texref, array, desc))
end
function cudaBindTextureToMipmappedArray(texref, mipmappedArray, desc)
  checkerror(ccall( (:cudaBindTextureToMipmappedArray, libcudart), cudaError_t, (Ptr{textureReference}, cudaMipmappedArray_const_t, Ptr{cudaChannelFormatDesc}), texref, mipmappedArray, desc))
end
function cudaUnbindTexture(texref)
  checkerror(ccall( (:cudaUnbindTexture, libcudart), cudaError_t, (Ptr{textureReference},), texref))
end
function cudaGetTextureAlignmentOffset(offset, texref)
  checkerror(ccall( (:cudaGetTextureAlignmentOffset, libcudart), cudaError_t, (Ptr{Csize_t}, Ptr{textureReference}), offset, texref))
end
function cudaGetTextureReference(texref, symbol)
  checkerror(ccall( (:cudaGetTextureReference, libcudart), cudaError_t, (Ptr{Ptr{textureReference}}, Ptr{None}), texref, symbol))
end
function cudaBindSurfaceToArray(surfref, array, desc)
  checkerror(ccall( (:cudaBindSurfaceToArray, libcudart), cudaError_t, (Ptr{surfaceReference}, cudaArray_const_t, Ptr{cudaChannelFormatDesc}), surfref, array, desc))
end
function cudaGetSurfaceReference(surfref, symbol)
  checkerror(ccall( (:cudaGetSurfaceReference, libcudart), cudaError_t, (Ptr{Ptr{surfaceReference}}, Ptr{None}), surfref, symbol))
end
function cudaCreateTextureObject(pTexObject, pResDesc, pTexDesc, pResViewDesc)
  checkerror(ccall( (:cudaCreateTextureObject, libcudart), cudaError_t, (Ptr{cudaTextureObject_t}, Ptr{cudaResourceDesc}, Ptr{cudaTextureDesc}, Ptr{cudaResourceViewDesc}), pTexObject, pResDesc, pTexDesc, pResViewDesc))
end
function cudaDestroyTextureObject(texObject)
  checkerror(ccall( (:cudaDestroyTextureObject, libcudart), cudaError_t, (cudaTextureObject_t,), texObject))
end
function cudaGetTextureObjectResourceDesc(pResDesc, texObject)
  checkerror(ccall( (:cudaGetTextureObjectResourceDesc, libcudart), cudaError_t, (Ptr{cudaResourceDesc}, cudaTextureObject_t), pResDesc, texObject))
end
function cudaGetTextureObjectTextureDesc(pTexDesc, texObject)
  checkerror(ccall( (:cudaGetTextureObjectTextureDesc, libcudart), cudaError_t, (Ptr{cudaTextureDesc}, cudaTextureObject_t), pTexDesc, texObject))
end
function cudaGetTextureObjectResourceViewDesc(pResViewDesc, texObject)
  checkerror(ccall( (:cudaGetTextureObjectResourceViewDesc, libcudart), cudaError_t, (Ptr{cudaResourceViewDesc}, cudaTextureObject_t), pResViewDesc, texObject))
end
function cudaCreateSurfaceObject(pSurfObject, pResDesc)
  checkerror(ccall( (:cudaCreateSurfaceObject, libcudart), cudaError_t, (Ptr{cudaSurfaceObject_t}, Ptr{cudaResourceDesc}), pSurfObject, pResDesc))
end
function cudaDestroySurfaceObject(surfObject)
  checkerror(ccall( (:cudaDestroySurfaceObject, libcudart), cudaError_t, (cudaSurfaceObject_t,), surfObject))
end
function cudaGetSurfaceObjectResourceDesc(pResDesc, surfObject)
  checkerror(ccall( (:cudaGetSurfaceObjectResourceDesc, libcudart), cudaError_t, (Ptr{cudaResourceDesc}, cudaSurfaceObject_t), pResDesc, surfObject))
end
function cudaDriverGetVersion(driverVersion)
  checkerror(ccall( (:cudaDriverGetVersion, libcudart), cudaError_t, (Ptr{Cint},), driverVersion))
end
function cudaRuntimeGetVersion(runtimeVersion)
  checkerror(ccall( (:cudaRuntimeGetVersion, libcudart), cudaError_t, (Ptr{Cint},), runtimeVersion))
end
function cudaGetExportTable(ppExportTable, pExportTableId)
  checkerror(ccall( (:cudaGetExportTable, libcudart), cudaError_t, (Ptr{Ptr{None}}, Ptr{cudaUUID_t}), ppExportTable, pExportTableId))
end

