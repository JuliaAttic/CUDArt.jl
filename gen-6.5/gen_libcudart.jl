# Julia wrapper for header: /usr/local/cuda-7.5/include/driver_types.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /usr/local/cuda-7.5/include/vector_types.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /usr/local/cuda-7.5/include/cuda_runtime_api.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function cudaDeviceReset()
    checkerror(ccall((:cudaDeviceReset,libcudart),cudaError_t,()))
end

function cudaDeviceSynchronize()
    checkerror(ccall((:cudaDeviceSynchronize,libcudart),cudaError_t,()))
end

function cudaDeviceSetLimit(limit,value)
    checkerror(ccall((:cudaDeviceSetLimit,libcudart),cudaError_t,(cudaLimit,Cint),limit,value))
end

function cudaDeviceGetLimit(pValue,limit)
    checkerror(ccall((:cudaDeviceGetLimit,libcudart),cudaError_t,(Ptr{Cint},cudaLimit),pValue,limit))
end

function cudaDeviceGetCacheConfig(pCacheConfig)
    checkerror(ccall((:cudaDeviceGetCacheConfig,libcudart),cudaError_t,(Ptr{cudaFuncCache},),pCacheConfig))
end

function cudaDeviceGetStreamPriorityRange(leastPriority,greatestPriority)
    checkerror(ccall((:cudaDeviceGetStreamPriorityRange,libcudart),cudaError_t,(Ptr{Cint},Ptr{Cint}),leastPriority,greatestPriority))
end

function cudaDeviceSetCacheConfig(cacheConfig)
    checkerror(ccall((:cudaDeviceSetCacheConfig,libcudart),cudaError_t,(cudaFuncCache,),cacheConfig))
end

function cudaDeviceGetSharedMemConfig(pConfig)
    checkerror(ccall((:cudaDeviceGetSharedMemConfig,libcudart),cudaError_t,(Ptr{cudaSharedMemConfig},),pConfig))
end

function cudaDeviceSetSharedMemConfig(config)
    checkerror(ccall((:cudaDeviceSetSharedMemConfig,libcudart),cudaError_t,(cudaSharedMemConfig,),config))
end

function cudaDeviceGetByPCIBusId(device,pciBusId)
    checkerror(ccall((:cudaDeviceGetByPCIBusId,libcudart),cudaError_t,(Ptr{Cint},Cstring),device,pciBusId))
end

function cudaDeviceGetPCIBusId(pciBusId,len,device)
    checkerror(ccall((:cudaDeviceGetPCIBusId,libcudart),cudaError_t,(Cstring,Cint,Cint),pciBusId,len,device))
end

function cudaIpcGetEventHandle(handle,event)
    checkerror(ccall((:cudaIpcGetEventHandle,libcudart),cudaError_t,(Ptr{cudaIpcEventHandle_t},cudaEvent_t),handle,event))
end

function cudaIpcOpenEventHandle(event,handle)
    checkerror(ccall((:cudaIpcOpenEventHandle,libcudart),cudaError_t,(Ptr{cudaEvent_t},cudaIpcEventHandle_t),event,handle))
end

function cudaIpcGetMemHandle(handle,devPtr)
    checkerror(ccall((:cudaIpcGetMemHandle,libcudart),cudaError_t,(Ptr{cudaIpcMemHandle_t},Ptr{Void}),handle,devPtr))
end

function cudaIpcOpenMemHandle(devPtr,handle,flags)
    checkerror(ccall((:cudaIpcOpenMemHandle,libcudart),cudaError_t,(Ptr{Ptr{Void}},cudaIpcMemHandle_t,UInt32),devPtr,handle,flags))
end

function cudaIpcCloseMemHandle(devPtr)
    checkerror(ccall((:cudaIpcCloseMemHandle,libcudart),cudaError_t,(Ptr{Void},),devPtr))
end

function cudaThreadExit()
    checkerror(ccall((:cudaThreadExit,libcudart),cudaError_t,()))
end

function cudaThreadSynchronize()
    checkerror(ccall((:cudaThreadSynchronize,libcudart),cudaError_t,()))
end

function cudaThreadSetLimit(limit,value)
    checkerror(ccall((:cudaThreadSetLimit,libcudart),cudaError_t,(cudaLimit,Cint),limit,value))
end

function cudaThreadGetLimit(pValue,limit)
    checkerror(ccall((:cudaThreadGetLimit,libcudart),cudaError_t,(Ptr{Cint},cudaLimit),pValue,limit))
end

function cudaThreadGetCacheConfig(pCacheConfig)
    checkerror(ccall((:cudaThreadGetCacheConfig,libcudart),cudaError_t,(Ptr{cudaFuncCache},),pCacheConfig))
end

function cudaThreadSetCacheConfig(cacheConfig)
    checkerror(ccall((:cudaThreadSetCacheConfig,libcudart),cudaError_t,(cudaFuncCache,),cacheConfig))
end

function cudaGetLastError()
    ccall((:cudaGetLastError,libcudart),cudaError_t,())
end

function cudaPeekAtLastError()
    ccall((:cudaPeekAtLastError,libcudart),cudaError_t,())
end

function cudaGetErrorName(error)
    ccall((:cudaGetErrorName,libcudart),Cstring,(cudaError_t,),error)
end

function cudaGetErrorString(error)
    ccall((:cudaGetErrorString,libcudart),Cstring,(cudaError_t,),error)
end

function cudaGetDeviceCount(count)
    checkerror(ccall((:cudaGetDeviceCount,libcudart),cudaError_t,(Ptr{Cint},),count))
end

function cudaGetDeviceProperties(prop,device)
    checkerror(ccall((:cudaGetDeviceProperties,libcudart),cudaError_t,(Ptr{cudaDeviceProp},Cint),prop,device))
end

function cudaDeviceGetAttribute(value,attr,device)
    checkerror(ccall((:cudaDeviceGetAttribute,libcudart),cudaError_t,(Ptr{Cint},cudaDeviceAttr,Cint),value,attr,device))
end

function cudaChooseDevice(device,prop)
    checkerror(ccall((:cudaChooseDevice,libcudart),cudaError_t,(Ptr{Cint},Ptr{cudaDeviceProp}),device,prop))
end

function cudaSetDevice(device)
    checkerror(ccall((:cudaSetDevice,libcudart),cudaError_t,(Cint,),device))
end

function cudaGetDevice(device)
    checkerror(ccall((:cudaGetDevice,libcudart),cudaError_t,(Ptr{Cint},),device))
end

function cudaSetValidDevices(device_arr,len)
    checkerror(ccall((:cudaSetValidDevices,libcudart),cudaError_t,(Ptr{Cint},Cint),device_arr,len))
end

function cudaSetDeviceFlags(flags)
    checkerror(ccall((:cudaSetDeviceFlags,libcudart),cudaError_t,(UInt32,),flags))
end

function cudaGetDeviceFlags(flags)
    checkerror(ccall((:cudaGetDeviceFlags,libcudart),cudaError_t,(Ptr{UInt32},),flags))
end

function cudaStreamCreate(pStream)
    checkerror(ccall((:cudaStreamCreate,libcudart),cudaError_t,(Ptr{cudaStream_t},),pStream))
end

function cudaStreamCreateWithFlags(pStream,flags)
    checkerror(ccall((:cudaStreamCreateWithFlags,libcudart),cudaError_t,(Ptr{cudaStream_t},UInt32),pStream,flags))
end

function cudaStreamCreateWithPriority(pStream,flags,priority)
    checkerror(ccall((:cudaStreamCreateWithPriority,libcudart),cudaError_t,(Ptr{cudaStream_t},UInt32,Cint),pStream,flags,priority))
end

function cudaStreamGetPriority(hStream,priority)
    checkerror(ccall((:cudaStreamGetPriority,libcudart),cudaError_t,(cudaStream_t,Ptr{Cint}),hStream,priority))
end

function cudaStreamGetFlags(hStream,flags)
    checkerror(ccall((:cudaStreamGetFlags,libcudart),cudaError_t,(cudaStream_t,Ptr{UInt32}),hStream,flags))
end

function cudaStreamDestroy(stream)
    checkerror(ccall((:cudaStreamDestroy,libcudart),cudaError_t,(cudaStream_t,),stream))
end

function cudaStreamWaitEvent(stream,event,flags)
    checkerror(ccall((:cudaStreamWaitEvent,libcudart),cudaError_t,(cudaStream_t,cudaEvent_t,UInt32),stream,event,flags))
end

function cudaStreamAddCallback(stream,callback,userData,flags)
    checkerror(ccall((:cudaStreamAddCallback,libcudart),cudaError_t,(cudaStream_t,cudaStreamCallback_t,Ptr{Void},UInt32),stream,callback,userData,flags))
end

function cudaStreamSynchronize(stream)
    checkerror(ccall((:cudaStreamSynchronize,libcudart),cudaError_t,(cudaStream_t,),stream))
end

function cudaStreamQuery(stream)
    ccall((:cudaStreamQuery,libcudart),cudaError_t,(cudaStream_t,),stream)
end

function cudaStreamAttachMemAsync(stream,devPtr,length,flags)
    checkerror(ccall((:cudaStreamAttachMemAsync,libcudart),cudaError_t,(cudaStream_t,Ptr{Void},Cint,UInt32),stream,devPtr,length,flags))
end

function cudaEventCreate(event)
    checkerror(ccall((:cudaEventCreate,libcudart),cudaError_t,(Ptr{cudaEvent_t},),event))
end

function cudaEventCreateWithFlags(event,flags)
    checkerror(ccall((:cudaEventCreateWithFlags,libcudart),cudaError_t,(Ptr{cudaEvent_t},UInt32),event,flags))
end

function cudaEventRecord(event,stream)
    checkerror(ccall((:cudaEventRecord,libcudart),cudaError_t,(cudaEvent_t,cudaStream_t),event,stream))
end

function cudaEventQuery(event)
    checkerror(ccall((:cudaEventQuery,libcudart),cudaError_t,(cudaEvent_t,),event))
end

function cudaEventSynchronize(event)
    checkerror(ccall((:cudaEventSynchronize,libcudart),cudaError_t,(cudaEvent_t,),event))
end

function cudaEventDestroy(event)
    checkerror(ccall((:cudaEventDestroy,libcudart),cudaError_t,(cudaEvent_t,),event))
end

function cudaEventElapsedTime(ms,start,_end)
    checkerror(ccall((:cudaEventElapsedTime,libcudart),cudaError_t,(Ptr{Cfloat},cudaEvent_t,cudaEvent_t),ms,start,_end))
end

function cudaLaunchKernel(func,gridDim,blockDim,args,sharedMem,stream)
    checkerror(ccall((:cudaLaunchKernel,libcudart),cudaError_t,(Ptr{Void},dim3,dim3,Ptr{Ptr{Void}},Cint,cudaStream_t),func,gridDim,blockDim,args,sharedMem,stream))
end

function cudaFuncSetCacheConfig(func,cacheConfig)
    checkerror(ccall((:cudaFuncSetCacheConfig,libcudart),cudaError_t,(Ptr{Void},cudaFuncCache),func,cacheConfig))
end

function cudaFuncSetSharedMemConfig(func,config)
    checkerror(ccall((:cudaFuncSetSharedMemConfig,libcudart),cudaError_t,(Ptr{Void},cudaSharedMemConfig),func,config))
end

function cudaFuncGetAttributes(attr,func)
    checkerror(ccall((:cudaFuncGetAttributes,libcudart),cudaError_t,(Ptr{cudaFuncAttributes},Ptr{Void}),attr,func))
end

function cudaSetDoubleForDevice(d)
    checkerror(ccall((:cudaSetDoubleForDevice,libcudart),cudaError_t,(Ptr{Cdouble},),d))
end

function cudaSetDoubleForHost(d)
    checkerror(ccall((:cudaSetDoubleForHost,libcudart),cudaError_t,(Ptr{Cdouble},),d))
end

function cudaOccupancyMaxActiveBlocksPerMultiprocessor(numBlocks,func,blockSize,dynamicSMemSize)
    checkerror(ccall((:cudaOccupancyMaxActiveBlocksPerMultiprocessor,libcudart),cudaError_t,(Ptr{Cint},Ptr{Void},Cint,Cint),numBlocks,func,blockSize,dynamicSMemSize))
end

function cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(numBlocks,func,blockSize,dynamicSMemSize,flags)
    checkerror(ccall((:cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags,libcudart),cudaError_t,(Ptr{Cint},Ptr{Void},Cint,Cint,UInt32),numBlocks,func,blockSize,dynamicSMemSize,flags))
end

function cudaConfigureCall(gridDim,blockDim,sharedMem,stream)
    checkerror(ccall((:cudaConfigureCall,libcudart),cudaError_t,(dim3,dim3,Cint,cudaStream_t),gridDim,blockDim,sharedMem,stream))
end

function cudaSetupArgument(arg,size,offset)
    checkerror(ccall((:cudaSetupArgument,libcudart),cudaError_t,(Ptr{Void},Cint,Cint),arg,size,offset))
end

function cudaLaunch(func)
    checkerror(ccall((:cudaLaunch,libcudart),cudaError_t,(Ptr{Void},),func))
end

function cudaMallocManaged(devPtr,size,flags)
    checkerror(ccall((:cudaMallocManaged,libcudart),cudaError_t,(Ptr{Ptr{Void}},Cint,UInt32),devPtr,size,flags))
end

function cudaMalloc(devPtr,size)
    checkerror(ccall((:cudaMalloc,libcudart),cudaError_t,(Ptr{Ptr{Void}},Cint),devPtr,size))
end

function cudaMallocHost(ptr,size)
    checkerror(ccall((:cudaMallocHost,libcudart),cudaError_t,(Ptr{Ptr{Void}},Cint),ptr,size))
end

function cudaMallocPitch(devPtr,pitch,width,height)
    checkerror(ccall((:cudaMallocPitch,libcudart),cudaError_t,(Ptr{Ptr{Void}},Ptr{Cint},Cint,Cint),devPtr,pitch,width,height))
end

function cudaMallocArray(array,desc,width,height,flags)
    checkerror(ccall((:cudaMallocArray,libcudart),cudaError_t,(Ptr{cudaArray_t},Ptr{cudaChannelFormatDesc},Cint,Cint,UInt32),array,desc,width,height,flags))
end

function cudaFree(devPtr)
    checkerror(ccall((:cudaFree,libcudart),cudaError_t,(Ptr{Void},),devPtr))
end

function cudaFreeHost(ptr)
    checkerror(ccall((:cudaFreeHost,libcudart),cudaError_t,(Ptr{Void},),ptr))
end

function cudaFreeArray(array)
    checkerror(ccall((:cudaFreeArray,libcudart),cudaError_t,(cudaArray_t,),array))
end

function cudaFreeMipmappedArray(mipmappedArray)
    checkerror(ccall((:cudaFreeMipmappedArray,libcudart),cudaError_t,(cudaMipmappedArray_t,),mipmappedArray))
end

function cudaHostAlloc(pHost,size,flags)
    checkerror(ccall((:cudaHostAlloc,libcudart),cudaError_t,(Ptr{Ptr{Void}},Cint,UInt32),pHost,size,flags))
end

function cudaHostRegister(ptr,size,flags)
    checkerror(ccall((:cudaHostRegister,libcudart),cudaError_t,(Ptr{Void},Cint,UInt32),ptr,size,flags))
end

function cudaHostUnregister(ptr)
    checkerror(ccall((:cudaHostUnregister,libcudart),cudaError_t,(Ptr{Void},),ptr))
end

function cudaHostGetDevicePointer(pDevice,pHost,flags)
    checkerror(ccall((:cudaHostGetDevicePointer,libcudart),cudaError_t,(Ptr{Ptr{Void}},Ptr{Void},UInt32),pDevice,pHost,flags))
end

function cudaHostGetFlags(pFlags,pHost)
    checkerror(ccall((:cudaHostGetFlags,libcudart),cudaError_t,(Ptr{UInt32},Ptr{Void}),pFlags,pHost))
end

function cudaMalloc3D(pitchedDevPtr,extent)
    checkerror(ccall((:cudaMalloc3D,libcudart),cudaError_t,(Ptr{cudaPitchedPtr},cudaExtent),pitchedDevPtr,extent))
end

function cudaMalloc3DArray(array,desc,extent,flags)
    checkerror(ccall((:cudaMalloc3DArray,libcudart),cudaError_t,(Ptr{cudaArray_t},Ptr{cudaChannelFormatDesc},cudaExtent,UInt32),array,desc,extent,flags))
end

function cudaMallocMipmappedArray(mipmappedArray,desc,extent,numLevels,flags)
    checkerror(ccall((:cudaMallocMipmappedArray,libcudart),cudaError_t,(Ptr{cudaMipmappedArray_t},Ptr{cudaChannelFormatDesc},cudaExtent,UInt32,UInt32),mipmappedArray,desc,extent,numLevels,flags))
end

function cudaGetMipmappedArrayLevel(levelArray,mipmappedArray,level)
    checkerror(ccall((:cudaGetMipmappedArrayLevel,libcudart),cudaError_t,(Ptr{cudaArray_t},cudaMipmappedArray_const_t,UInt32),levelArray,mipmappedArray,level))
end

function cudaMemcpy3D(p)
    checkerror(ccall((:cudaMemcpy3D,libcudart),cudaError_t,(Ptr{cudaMemcpy3DParms},),p))
end

function cudaMemcpy3DPeer(p)
    checkerror(ccall((:cudaMemcpy3DPeer,libcudart),cudaError_t,(Ptr{cudaMemcpy3DPeerParms},),p))
end

function cudaMemcpy3DAsync(p,stream)
    checkerror(ccall((:cudaMemcpy3DAsync,libcudart),cudaError_t,(Ptr{cudaMemcpy3DParms},cudaStream_t),p,stream))
end

function cudaMemcpy3DPeerAsync(p,stream)
    checkerror(ccall((:cudaMemcpy3DPeerAsync,libcudart),cudaError_t,(Ptr{cudaMemcpy3DPeerParms},cudaStream_t),p,stream))
end

function cudaMemGetInfo(free,total)
    checkerror(ccall((:cudaMemGetInfo,libcudart),cudaError_t,(Ptr{Cint},Ptr{Cint}),free,total))
end

function cudaArrayGetInfo(desc,extent,flags,array)
    checkerror(ccall((:cudaArrayGetInfo,libcudart),cudaError_t,(Ptr{cudaChannelFormatDesc},Ptr{cudaExtent},Ptr{UInt32},cudaArray_t),desc,extent,flags,array))
end

function cudaMemcpy(dst,src,count,kind)
    checkerror(ccall((:cudaMemcpy,libcudart),cudaError_t,(Ptr{Void},Ptr{Void},Cint,cudaMemcpyKind),dst,src,count,kind))
end

function cudaMemcpyPeer(dst,dstDevice,src,srcDevice,count)
    checkerror(ccall((:cudaMemcpyPeer,libcudart),cudaError_t,(Ptr{Void},Cint,Ptr{Void},Cint,Cint),dst,dstDevice,src,srcDevice,count))
end

function cudaMemcpyToArray(dst,wOffset,hOffset,src,count,kind)
    checkerror(ccall((:cudaMemcpyToArray,libcudart),cudaError_t,(cudaArray_t,Cint,Cint,Ptr{Void},Cint,cudaMemcpyKind),dst,wOffset,hOffset,src,count,kind))
end

function cudaMemcpyFromArray(dst,src,wOffset,hOffset,count,kind)
    checkerror(ccall((:cudaMemcpyFromArray,libcudart),cudaError_t,(Ptr{Void},cudaArray_const_t,Cint,Cint,Cint,cudaMemcpyKind),dst,src,wOffset,hOffset,count,kind))
end

function cudaMemcpyArrayToArray(dst,wOffsetDst,hOffsetDst,src,wOffsetSrc,hOffsetSrc,count,kind)
    checkerror(ccall((:cudaMemcpyArrayToArray,libcudart),cudaError_t,(cudaArray_t,Cint,Cint,cudaArray_const_t,Cint,Cint,Cint,cudaMemcpyKind),dst,wOffsetDst,hOffsetDst,src,wOffsetSrc,hOffsetSrc,count,kind))
end

function cudaMemcpy2D(dst,dpitch,src,spitch,width,height,kind)
    checkerror(ccall((:cudaMemcpy2D,libcudart),cudaError_t,(Ptr{Void},Cint,Ptr{Void},Cint,Cint,Cint,cudaMemcpyKind),dst,dpitch,src,spitch,width,height,kind))
end

function cudaMemcpy2DToArray(dst,wOffset,hOffset,src,spitch,width,height,kind)
    checkerror(ccall((:cudaMemcpy2DToArray,libcudart),cudaError_t,(cudaArray_t,Cint,Cint,Ptr{Void},Cint,Cint,Cint,cudaMemcpyKind),dst,wOffset,hOffset,src,spitch,width,height,kind))
end

function cudaMemcpy2DFromArray(dst,dpitch,src,wOffset,hOffset,width,height,kind)
    checkerror(ccall((:cudaMemcpy2DFromArray,libcudart),cudaError_t,(Ptr{Void},Cint,cudaArray_const_t,Cint,Cint,Cint,Cint,cudaMemcpyKind),dst,dpitch,src,wOffset,hOffset,width,height,kind))
end

function cudaMemcpy2DArrayToArray(dst,wOffsetDst,hOffsetDst,src,wOffsetSrc,hOffsetSrc,width,height,kind)
    checkerror(ccall((:cudaMemcpy2DArrayToArray,libcudart),cudaError_t,(cudaArray_t,Cint,Cint,cudaArray_const_t,Cint,Cint,Cint,Cint,cudaMemcpyKind),dst,wOffsetDst,hOffsetDst,src,wOffsetSrc,hOffsetSrc,width,height,kind))
end

function cudaMemcpyToSymbol(symbol,src,count,offset,kind)
    checkerror(ccall((:cudaMemcpyToSymbol,libcudart),cudaError_t,(Ptr{Void},Ptr{Void},Cint,Cint,cudaMemcpyKind),symbol,src,count,offset,kind))
end

function cudaMemcpyFromSymbol(dst,symbol,count,offset,kind)
    checkerror(ccall((:cudaMemcpyFromSymbol,libcudart),cudaError_t,(Ptr{Void},Ptr{Void},Cint,Cint,cudaMemcpyKind),dst,symbol,count,offset,kind))
end

function cudaMemcpyAsync(dst,src,count,kind,stream)
    checkerror(ccall((:cudaMemcpyAsync,libcudart),cudaError_t,(Ptr{Void},Ptr{Void},Cint,cudaMemcpyKind,cudaStream_t),dst,src,count,kind,stream))
end

function cudaMemcpyPeerAsync(dst,dstDevice,src,srcDevice,count,stream)
    checkerror(ccall((:cudaMemcpyPeerAsync,libcudart),cudaError_t,(Ptr{Void},Cint,Ptr{Void},Cint,Cint,cudaStream_t),dst,dstDevice,src,srcDevice,count,stream))
end

function cudaMemcpyToArrayAsync(dst,wOffset,hOffset,src,count,kind,stream)
    checkerror(ccall((:cudaMemcpyToArrayAsync,libcudart),cudaError_t,(cudaArray_t,Cint,Cint,Ptr{Void},Cint,cudaMemcpyKind,cudaStream_t),dst,wOffset,hOffset,src,count,kind,stream))
end

function cudaMemcpyFromArrayAsync(dst,src,wOffset,hOffset,count,kind,stream)
    checkerror(ccall((:cudaMemcpyFromArrayAsync,libcudart),cudaError_t,(Ptr{Void},cudaArray_const_t,Cint,Cint,Cint,cudaMemcpyKind,cudaStream_t),dst,src,wOffset,hOffset,count,kind,stream))
end

function cudaMemcpy2DAsync(dst,dpitch,src,spitch,width,height,kind,stream)
    checkerror(ccall((:cudaMemcpy2DAsync,libcudart),cudaError_t,(Ptr{Void},Cint,Ptr{Void},Cint,Cint,Cint,cudaMemcpyKind,cudaStream_t),dst,dpitch,src,spitch,width,height,kind,stream))
end

function cudaMemcpy2DToArrayAsync(dst,wOffset,hOffset,src,spitch,width,height,kind,stream)
    checkerror(ccall((:cudaMemcpy2DToArrayAsync,libcudart),cudaError_t,(cudaArray_t,Cint,Cint,Ptr{Void},Cint,Cint,Cint,cudaMemcpyKind,cudaStream_t),dst,wOffset,hOffset,src,spitch,width,height,kind,stream))
end

function cudaMemcpy2DFromArrayAsync(dst,dpitch,src,wOffset,hOffset,width,height,kind,stream)
    checkerror(ccall((:cudaMemcpy2DFromArrayAsync,libcudart),cudaError_t,(Ptr{Void},Cint,cudaArray_const_t,Cint,Cint,Cint,Cint,cudaMemcpyKind,cudaStream_t),dst,dpitch,src,wOffset,hOffset,width,height,kind,stream))
end

function cudaMemcpyToSymbolAsync(symbol,src,count,offset,kind,stream)
    checkerror(ccall((:cudaMemcpyToSymbolAsync,libcudart),cudaError_t,(Ptr{Void},Ptr{Void},Cint,Cint,cudaMemcpyKind,cudaStream_t),symbol,src,count,offset,kind,stream))
end

function cudaMemcpyFromSymbolAsync(dst,symbol,count,offset,kind,stream)
    checkerror(ccall((:cudaMemcpyFromSymbolAsync,libcudart),cudaError_t,(Ptr{Void},Ptr{Void},Cint,Cint,cudaMemcpyKind,cudaStream_t),dst,symbol,count,offset,kind,stream))
end

function cudaMemset(devPtr,value,count)
    checkerror(ccall((:cudaMemset,libcudart),cudaError_t,(Ptr{Void},Cint,Cint),devPtr,value,count))
end

function cudaMemset2D(devPtr,pitch,value,width,height)
    checkerror(ccall((:cudaMemset2D,libcudart),cudaError_t,(Ptr{Void},Cint,Cint,Cint,Cint),devPtr,pitch,value,width,height))
end

function cudaMemset3D(pitchedDevPtr,value,extent)
    checkerror(ccall((:cudaMemset3D,libcudart),cudaError_t,(cudaPitchedPtr,Cint,cudaExtent),pitchedDevPtr,value,extent))
end

function cudaMemsetAsync(devPtr,value,count,stream)
    checkerror(ccall((:cudaMemsetAsync,libcudart),cudaError_t,(Ptr{Void},Cint,Cint,cudaStream_t),devPtr,value,count,stream))
end

function cudaMemset2DAsync(devPtr,pitch,value,width,height,stream)
    checkerror(ccall((:cudaMemset2DAsync,libcudart),cudaError_t,(Ptr{Void},Cint,Cint,Cint,Cint,cudaStream_t),devPtr,pitch,value,width,height,stream))
end

function cudaMemset3DAsync(pitchedDevPtr,value,extent,stream)
    checkerror(ccall((:cudaMemset3DAsync,libcudart),cudaError_t,(cudaPitchedPtr,Cint,cudaExtent,cudaStream_t),pitchedDevPtr,value,extent,stream))
end

function cudaGetSymbolAddress(devPtr,symbol)
    checkerror(ccall((:cudaGetSymbolAddress,libcudart),cudaError_t,(Ptr{Ptr{Void}},Ptr{Void}),devPtr,symbol))
end

function cudaGetSymbolSize(size,symbol)
    checkerror(ccall((:cudaGetSymbolSize,libcudart),cudaError_t,(Ptr{Cint},Ptr{Void}),size,symbol))
end

function cudaPointerGetAttributes(attributes,ptr)
    checkerror(ccall((:cudaPointerGetAttributes,libcudart),cudaError_t,(Ptr{cudaPointerAttributes},Ptr{Void}),attributes,ptr))
end

function cudaDeviceCanAccessPeer(canAccessPeer,device,peerDevice)
    checkerror(ccall((:cudaDeviceCanAccessPeer,libcudart),cudaError_t,(Ptr{Cint},Cint,Cint),canAccessPeer,device,peerDevice))
end

function cudaDeviceEnablePeerAccess(peerDevice,flags)
    checkerror(ccall((:cudaDeviceEnablePeerAccess,libcudart),cudaError_t,(Cint,UInt32),peerDevice,flags))
end

function cudaDeviceDisablePeerAccess(peerDevice)
    checkerror(ccall((:cudaDeviceDisablePeerAccess,libcudart),cudaError_t,(Cint,),peerDevice))
end

function cudaGraphicsUnregisterResource(resource)
    checkerror(ccall((:cudaGraphicsUnregisterResource,libcudart),cudaError_t,(cudaGraphicsResource_t,),resource))
end

function cudaGraphicsResourceSetMapFlags(resource,flags)
    checkerror(ccall((:cudaGraphicsResourceSetMapFlags,libcudart),cudaError_t,(cudaGraphicsResource_t,UInt32),resource,flags))
end

function cudaGraphicsMapResources(count,resources,stream)
    checkerror(ccall((:cudaGraphicsMapResources,libcudart),cudaError_t,(Cint,Ptr{cudaGraphicsResource_t},cudaStream_t),count,resources,stream))
end

function cudaGraphicsUnmapResources(count,resources,stream)
    checkerror(ccall((:cudaGraphicsUnmapResources,libcudart),cudaError_t,(Cint,Ptr{cudaGraphicsResource_t},cudaStream_t),count,resources,stream))
end

function cudaGraphicsResourceGetMappedPointer(devPtr,size,resource)
    checkerror(ccall((:cudaGraphicsResourceGetMappedPointer,libcudart),cudaError_t,(Ptr{Ptr{Void}},Ptr{Cint},cudaGraphicsResource_t),devPtr,size,resource))
end

function cudaGraphicsSubResourceGetMappedArray(array,resource,arrayIndex,mipLevel)
    checkerror(ccall((:cudaGraphicsSubResourceGetMappedArray,libcudart),cudaError_t,(Ptr{cudaArray_t},cudaGraphicsResource_t,UInt32,UInt32),array,resource,arrayIndex,mipLevel))
end

function cudaGraphicsResourceGetMappedMipmappedArray(mipmappedArray,resource)
    checkerror(ccall((:cudaGraphicsResourceGetMappedMipmappedArray,libcudart),cudaError_t,(Ptr{cudaMipmappedArray_t},cudaGraphicsResource_t),mipmappedArray,resource))
end

function cudaGetChannelDesc(desc,array)
    checkerror(ccall((:cudaGetChannelDesc,libcudart),cudaError_t,(Ptr{cudaChannelFormatDesc},cudaArray_const_t),desc,array))
end

function cudaCreateChannelDesc(x,y,z,w,f)
    ccall((:cudaCreateChannelDesc,libcudart),cudaChannelFormatDesc,(Cint,Cint,Cint,Cint,cudaChannelFormatKind),x,y,z,w,f)
end

function cudaBindTexture(offset,texref,devPtr,desc,size)
    checkerror(ccall((:cudaBindTexture,libcudart),cudaError_t,(Ptr{Cint},Ptr{textureReference},Ptr{Void},Ptr{cudaChannelFormatDesc},Cint),offset,texref,devPtr,desc,size))
end

function cudaBindTexture2D(offset,texref,devPtr,desc,width,height,pitch)
    checkerror(ccall((:cudaBindTexture2D,libcudart),cudaError_t,(Ptr{Cint},Ptr{textureReference},Ptr{Void},Ptr{cudaChannelFormatDesc},Cint,Cint,Cint),offset,texref,devPtr,desc,width,height,pitch))
end

function cudaBindTextureToArray(texref,array,desc)
    checkerror(ccall((:cudaBindTextureToArray,libcudart),cudaError_t,(Ptr{textureReference},cudaArray_const_t,Ptr{cudaChannelFormatDesc}),texref,array,desc))
end

function cudaBindTextureToMipmappedArray(texref,mipmappedArray,desc)
    checkerror(ccall((:cudaBindTextureToMipmappedArray,libcudart),cudaError_t,(Ptr{textureReference},cudaMipmappedArray_const_t,Ptr{cudaChannelFormatDesc}),texref,mipmappedArray,desc))
end

function cudaUnbindTexture(texref)
    checkerror(ccall((:cudaUnbindTexture,libcudart),cudaError_t,(Ptr{textureReference},),texref))
end

function cudaGetTextureAlignmentOffset(offset,texref)
    checkerror(ccall((:cudaGetTextureAlignmentOffset,libcudart),cudaError_t,(Ptr{Cint},Ptr{textureReference}),offset,texref))
end

function cudaGetTextureReference(texref,symbol)
    checkerror(ccall((:cudaGetTextureReference,libcudart),cudaError_t,(Ptr{Ptr{textureReference}},Ptr{Void}),texref,symbol))
end

function cudaBindSurfaceToArray(surfref,array,desc)
    checkerror(ccall((:cudaBindSurfaceToArray,libcudart),cudaError_t,(Ptr{surfaceReference},cudaArray_const_t,Ptr{cudaChannelFormatDesc}),surfref,array,desc))
end

function cudaGetSurfaceReference(surfref,symbol)
    checkerror(ccall((:cudaGetSurfaceReference,libcudart),cudaError_t,(Ptr{Ptr{surfaceReference}},Ptr{Void}),surfref,symbol))
end

function cudaCreateTextureObject(pTexObject,pResDesc,pTexDesc,pResViewDesc)
    checkerror(ccall((:cudaCreateTextureObject,libcudart),cudaError_t,(Ptr{cudaTextureObject_t},Ptr{cudaResourceDesc},Ptr{cudaTextureDesc},Ptr{cudaResourceViewDesc}),pTexObject,pResDesc,pTexDesc,pResViewDesc))
end

function cudaDestroyTextureObject(texObject)
    checkerror(ccall((:cudaDestroyTextureObject,libcudart),cudaError_t,(cudaTextureObject_t,),texObject))
end

function cudaGetTextureObjectResourceDesc(pResDesc,texObject)
    checkerror(ccall((:cudaGetTextureObjectResourceDesc,libcudart),cudaError_t,(Ptr{cudaResourceDesc},cudaTextureObject_t),pResDesc,texObject))
end

function cudaGetTextureObjectTextureDesc(pTexDesc,texObject)
    checkerror(ccall((:cudaGetTextureObjectTextureDesc,libcudart),cudaError_t,(Ptr{cudaTextureDesc},cudaTextureObject_t),pTexDesc,texObject))
end

function cudaGetTextureObjectResourceViewDesc(pResViewDesc,texObject)
    checkerror(ccall((:cudaGetTextureObjectResourceViewDesc,libcudart),cudaError_t,(Ptr{cudaResourceViewDesc},cudaTextureObject_t),pResViewDesc,texObject))
end

function cudaCreateSurfaceObject(pSurfObject,pResDesc)
    checkerror(ccall((:cudaCreateSurfaceObject,libcudart),cudaError_t,(Ptr{cudaSurfaceObject_t},Ptr{cudaResourceDesc}),pSurfObject,pResDesc))
end

function cudaDestroySurfaceObject(surfObject)
    checkerror(ccall((:cudaDestroySurfaceObject,libcudart),cudaError_t,(cudaSurfaceObject_t,),surfObject))
end

function cudaGetSurfaceObjectResourceDesc(pResDesc,surfObject)
    checkerror(ccall((:cudaGetSurfaceObjectResourceDesc,libcudart),cudaError_t,(Ptr{cudaResourceDesc},cudaSurfaceObject_t),pResDesc,surfObject))
end

function cudaDriverGetVersion(driverVersion)
    checkerror(ccall((:cudaDriverGetVersion,libcudart),cudaError_t,(Ptr{Cint},),driverVersion))
end

function cudaRuntimeGetVersion(runtimeVersion)
    checkerror(ccall((:cudaRuntimeGetVersion,libcudart),cudaError_t,(Ptr{Cint},),runtimeVersion))
end

function cudaGetExportTable(ppExportTable,pExportTableId)
    checkerror(ccall((:cudaGetExportTable,libcudart),cudaError_t,(Ptr{Ptr{Void}},Ptr{cudaUUID_t}),ppExportTable,pExportTableId))
end
# Julia wrapper for header: /usr/local/cuda-7.5/include/cuda_gl_interop.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function glClearIndex(c)
    ccall((:glClearIndex,libcudart),Void,(GLfloat,),c)
end

function glClearColor(red,green,blue,alpha)
    ccall((:glClearColor,libcudart),Void,(GLclampf,GLclampf,GLclampf,GLclampf),red,green,blue,alpha)
end

function glClear(mask)
    ccall((:glClear,libcudart),Void,(GLbitfield,),mask)
end

function glIndexMask(mask)
    ccall((:glIndexMask,libcudart),Void,(GLuint,),mask)
end

function glColorMask(red,green,blue,alpha)
    ccall((:glColorMask,libcudart),Void,(GLboolean,GLboolean,GLboolean,GLboolean),red,green,blue,alpha)
end

function glAlphaFunc(func,ref)
    ccall((:glAlphaFunc,libcudart),Void,(GLenum,GLclampf),func,ref)
end

function glBlendFunc(sfactor,dfactor)
    ccall((:glBlendFunc,libcudart),Void,(GLenum,GLenum),sfactor,dfactor)
end

function glLogicOp(opcode)
    ccall((:glLogicOp,libcudart),Void,(GLenum,),opcode)
end

function glCullFace(mode)
    ccall((:glCullFace,libcudart),Void,(GLenum,),mode)
end

function glFrontFace(mode)
    ccall((:glFrontFace,libcudart),Void,(GLenum,),mode)
end

function glPointSize(size)
    ccall((:glPointSize,libcudart),Void,(GLfloat,),size)
end

function glLineWidth(width)
    ccall((:glLineWidth,libcudart),Void,(GLfloat,),width)
end

function glLineStipple(factor,pattern)
    ccall((:glLineStipple,libcudart),Void,(GLint,GLushort),factor,pattern)
end

function glPolygonMode(face,mode)
    ccall((:glPolygonMode,libcudart),Void,(GLenum,GLenum),face,mode)
end

function glPolygonOffset(factor,units)
    ccall((:glPolygonOffset,libcudart),Void,(GLfloat,GLfloat),factor,units)
end

function glPolygonStipple(mask)
    ccall((:glPolygonStipple,libcudart),Void,(Ptr{GLubyte},),mask)
end

function glGetPolygonStipple(mask)
    ccall((:glGetPolygonStipple,libcudart),Void,(Ptr{GLubyte},),mask)
end

function glEdgeFlag(flag)
    ccall((:glEdgeFlag,libcudart),Void,(GLboolean,),flag)
end

function glEdgeFlagv(flag)
    ccall((:glEdgeFlagv,libcudart),Void,(Ptr{GLboolean},),flag)
end

function glScissor(x,y,width,height)
    ccall((:glScissor,libcudart),Void,(GLint,GLint,GLsizei,GLsizei),x,y,width,height)
end

function glClipPlane(plane,equation)
    ccall((:glClipPlane,libcudart),Void,(GLenum,Ptr{GLdouble}),plane,equation)
end

function glGetClipPlane(plane,equation)
    ccall((:glGetClipPlane,libcudart),Void,(GLenum,Ptr{GLdouble}),plane,equation)
end

function glDrawBuffer(mode)
    ccall((:glDrawBuffer,libcudart),Void,(GLenum,),mode)
end

function glReadBuffer(mode)
    ccall((:glReadBuffer,libcudart),Void,(GLenum,),mode)
end

function glEnable(cap)
    ccall((:glEnable,libcudart),Void,(GLenum,),cap)
end

function glDisable(cap)
    ccall((:glDisable,libcudart),Void,(GLenum,),cap)
end

function glIsEnabled(cap)
    ccall((:glIsEnabled,libcudart),GLboolean,(GLenum,),cap)
end

function glEnableClientState(cap)
    ccall((:glEnableClientState,libcudart),Void,(GLenum,),cap)
end

function glDisableClientState(cap)
    ccall((:glDisableClientState,libcudart),Void,(GLenum,),cap)
end

function glGetBooleanv(pname,params)
    ccall((:glGetBooleanv,libcudart),Void,(GLenum,Ptr{GLboolean}),pname,params)
end

function glGetDoublev(pname,params)
    ccall((:glGetDoublev,libcudart),Void,(GLenum,Ptr{GLdouble}),pname,params)
end

function glGetFloatv(pname,params)
    ccall((:glGetFloatv,libcudart),Void,(GLenum,Ptr{GLfloat}),pname,params)
end

function glGetIntegerv(pname,params)
    ccall((:glGetIntegerv,libcudart),Void,(GLenum,Ptr{GLint}),pname,params)
end

function glPushAttrib(mask)
    ccall((:glPushAttrib,libcudart),Void,(GLbitfield,),mask)
end

function glPopAttrib()
    ccall((:glPopAttrib,libcudart),Void,())
end

function glPushClientAttrib(mask)
    ccall((:glPushClientAttrib,libcudart),Void,(GLbitfield,),mask)
end

function glPopClientAttrib()
    ccall((:glPopClientAttrib,libcudart),Void,())
end

function glRenderMode(mode)
    ccall((:glRenderMode,libcudart),GLint,(GLenum,),mode)
end

function glGetError()
    ccall((:glGetError,libcudart),GLenum,())
end

function glGetString(name)
    ccall((:glGetString,libcudart),Ptr{GLubyte},(GLenum,),name)
end

function glFinish()
    ccall((:glFinish,libcudart),Void,())
end

function glFlush()
    ccall((:glFlush,libcudart),Void,())
end

function glHint(target,mode)
    ccall((:glHint,libcudart),Void,(GLenum,GLenum),target,mode)
end

function glClearDepth(depth)
    ccall((:glClearDepth,libcudart),Void,(GLclampd,),depth)
end

function glDepthFunc(func)
    ccall((:glDepthFunc,libcudart),Void,(GLenum,),func)
end

function glDepthMask(flag)
    ccall((:glDepthMask,libcudart),Void,(GLboolean,),flag)
end

function glDepthRange(near_val,far_val)
    ccall((:glDepthRange,libcudart),Void,(GLclampd,GLclampd),near_val,far_val)
end

function glClearAccum(red,green,blue,alpha)
    ccall((:glClearAccum,libcudart),Void,(GLfloat,GLfloat,GLfloat,GLfloat),red,green,blue,alpha)
end

function glAccum(op,value)
    ccall((:glAccum,libcudart),Void,(GLenum,GLfloat),op,value)
end

function glMatrixMode(mode)
    ccall((:glMatrixMode,libcudart),Void,(GLenum,),mode)
end

function glOrtho(left,right,bottom,top,near_val,far_val)
    ccall((:glOrtho,libcudart),Void,(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble),left,right,bottom,top,near_val,far_val)
end

function glFrustum(left,right,bottom,top,near_val,far_val)
    ccall((:glFrustum,libcudart),Void,(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble),left,right,bottom,top,near_val,far_val)
end

function glViewport(x,y,width,height)
    ccall((:glViewport,libcudart),Void,(GLint,GLint,GLsizei,GLsizei),x,y,width,height)
end

function glPushMatrix()
    ccall((:glPushMatrix,libcudart),Void,())
end

function glPopMatrix()
    ccall((:glPopMatrix,libcudart),Void,())
end

function glLoadIdentity()
    ccall((:glLoadIdentity,libcudart),Void,())
end

function glLoadMatrixd(m)
    ccall((:glLoadMatrixd,libcudart),Void,(Ptr{GLdouble},),m)
end

function glLoadMatrixf(m)
    ccall((:glLoadMatrixf,libcudart),Void,(Ptr{GLfloat},),m)
end

function glMultMatrixd(m)
    ccall((:glMultMatrixd,libcudart),Void,(Ptr{GLdouble},),m)
end

function glMultMatrixf(m)
    ccall((:glMultMatrixf,libcudart),Void,(Ptr{GLfloat},),m)
end

function glRotated(angle,x,y,z)
    ccall((:glRotated,libcudart),Void,(GLdouble,GLdouble,GLdouble,GLdouble),angle,x,y,z)
end

function glRotatef(angle,x,y,z)
    ccall((:glRotatef,libcudart),Void,(GLfloat,GLfloat,GLfloat,GLfloat),angle,x,y,z)
end

function glScaled(x,y,z)
    ccall((:glScaled,libcudart),Void,(GLdouble,GLdouble,GLdouble),x,y,z)
end

function glScalef(x,y,z)
    ccall((:glScalef,libcudart),Void,(GLfloat,GLfloat,GLfloat),x,y,z)
end

function glTranslated(x,y,z)
    ccall((:glTranslated,libcudart),Void,(GLdouble,GLdouble,GLdouble),x,y,z)
end

function glTranslatef(x,y,z)
    ccall((:glTranslatef,libcudart),Void,(GLfloat,GLfloat,GLfloat),x,y,z)
end

function glIsList(list)
    ccall((:glIsList,libcudart),GLboolean,(GLuint,),list)
end

function glDeleteLists(list,range)
    ccall((:glDeleteLists,libcudart),Void,(GLuint,GLsizei),list,range)
end

function glGenLists(range)
    ccall((:glGenLists,libcudart),GLuint,(GLsizei,),range)
end

function glNewList(list,mode)
    ccall((:glNewList,libcudart),Void,(GLuint,GLenum),list,mode)
end

function glEndList()
    ccall((:glEndList,libcudart),Void,())
end

function glCallList(list)
    ccall((:glCallList,libcudart),Void,(GLuint,),list)
end

function glCallLists(n,_type,lists)
    ccall((:glCallLists,libcudart),Void,(GLsizei,GLenum,Ptr{GLvoid}),n,_type,lists)
end

function glListBase(base)
    ccall((:glListBase,libcudart),Void,(GLuint,),base)
end

function glBegin(mode)
    ccall((:glBegin,libcudart),Void,(GLenum,),mode)
end

function glEnd()
    ccall((:glEnd,libcudart),Void,())
end

function glVertex2d(x,y)
    ccall((:glVertex2d,libcudart),Void,(GLdouble,GLdouble),x,y)
end

function glVertex2f(x,y)
    ccall((:glVertex2f,libcudart),Void,(GLfloat,GLfloat),x,y)
end

function glVertex2i(x,y)
    ccall((:glVertex2i,libcudart),Void,(GLint,GLint),x,y)
end

function glVertex2s(x,y)
    ccall((:glVertex2s,libcudart),Void,(GLshort,GLshort),x,y)
end

function glVertex3d(x,y,z)
    ccall((:glVertex3d,libcudart),Void,(GLdouble,GLdouble,GLdouble),x,y,z)
end

function glVertex3f(x,y,z)
    ccall((:glVertex3f,libcudart),Void,(GLfloat,GLfloat,GLfloat),x,y,z)
end

function glVertex3i(x,y,z)
    ccall((:glVertex3i,libcudart),Void,(GLint,GLint,GLint),x,y,z)
end

function glVertex3s(x,y,z)
    ccall((:glVertex3s,libcudart),Void,(GLshort,GLshort,GLshort),x,y,z)
end

function glVertex4d(x,y,z,w)
    ccall((:glVertex4d,libcudart),Void,(GLdouble,GLdouble,GLdouble,GLdouble),x,y,z,w)
end

function glVertex4f(x,y,z,w)
    ccall((:glVertex4f,libcudart),Void,(GLfloat,GLfloat,GLfloat,GLfloat),x,y,z,w)
end

function glVertex4i(x,y,z,w)
    ccall((:glVertex4i,libcudart),Void,(GLint,GLint,GLint,GLint),x,y,z,w)
end

function glVertex4s(x,y,z,w)
    ccall((:glVertex4s,libcudart),Void,(GLshort,GLshort,GLshort,GLshort),x,y,z,w)
end

function glVertex2dv(v)
    ccall((:glVertex2dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glVertex2fv(v)
    ccall((:glVertex2fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glVertex2iv(v)
    ccall((:glVertex2iv,libcudart),Void,(Ptr{GLint},),v)
end

function glVertex2sv(v)
    ccall((:glVertex2sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glVertex3dv(v)
    ccall((:glVertex3dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glVertex3fv(v)
    ccall((:glVertex3fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glVertex3iv(v)
    ccall((:glVertex3iv,libcudart),Void,(Ptr{GLint},),v)
end

function glVertex3sv(v)
    ccall((:glVertex3sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glVertex4dv(v)
    ccall((:glVertex4dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glVertex4fv(v)
    ccall((:glVertex4fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glVertex4iv(v)
    ccall((:glVertex4iv,libcudart),Void,(Ptr{GLint},),v)
end

function glVertex4sv(v)
    ccall((:glVertex4sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glNormal3b(nx,ny,nz)
    ccall((:glNormal3b,libcudart),Void,(GLbyte,GLbyte,GLbyte),nx,ny,nz)
end

function glNormal3d(nx,ny,nz)
    ccall((:glNormal3d,libcudart),Void,(GLdouble,GLdouble,GLdouble),nx,ny,nz)
end

function glNormal3f(nx,ny,nz)
    ccall((:glNormal3f,libcudart),Void,(GLfloat,GLfloat,GLfloat),nx,ny,nz)
end

function glNormal3i(nx,ny,nz)
    ccall((:glNormal3i,libcudart),Void,(GLint,GLint,GLint),nx,ny,nz)
end

function glNormal3s(nx,ny,nz)
    ccall((:glNormal3s,libcudart),Void,(GLshort,GLshort,GLshort),nx,ny,nz)
end

function glNormal3bv(v)
    ccall((:glNormal3bv,libcudart),Void,(Ptr{GLbyte},),v)
end

function glNormal3dv(v)
    ccall((:glNormal3dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glNormal3fv(v)
    ccall((:glNormal3fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glNormal3iv(v)
    ccall((:glNormal3iv,libcudart),Void,(Ptr{GLint},),v)
end

function glNormal3sv(v)
    ccall((:glNormal3sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glIndexd(c)
    ccall((:glIndexd,libcudart),Void,(GLdouble,),c)
end

function glIndexf(c)
    ccall((:glIndexf,libcudart),Void,(GLfloat,),c)
end

function glIndexi(c)
    ccall((:glIndexi,libcudart),Void,(GLint,),c)
end

function glIndexs(c)
    ccall((:glIndexs,libcudart),Void,(GLshort,),c)
end

function glIndexub(c)
    ccall((:glIndexub,libcudart),Void,(GLubyte,),c)
end

function glIndexdv(c)
    ccall((:glIndexdv,libcudart),Void,(Ptr{GLdouble},),c)
end

function glIndexfv(c)
    ccall((:glIndexfv,libcudart),Void,(Ptr{GLfloat},),c)
end

function glIndexiv(c)
    ccall((:glIndexiv,libcudart),Void,(Ptr{GLint},),c)
end

function glIndexsv(c)
    ccall((:glIndexsv,libcudart),Void,(Ptr{GLshort},),c)
end

function glIndexubv(c)
    ccall((:glIndexubv,libcudart),Void,(Ptr{GLubyte},),c)
end

function glColor3b(red,green,blue)
    ccall((:glColor3b,libcudart),Void,(GLbyte,GLbyte,GLbyte),red,green,blue)
end

function glColor3d(red,green,blue)
    ccall((:glColor3d,libcudart),Void,(GLdouble,GLdouble,GLdouble),red,green,blue)
end

function glColor3f(red,green,blue)
    ccall((:glColor3f,libcudart),Void,(GLfloat,GLfloat,GLfloat),red,green,blue)
end

function glColor3i(red,green,blue)
    ccall((:glColor3i,libcudart),Void,(GLint,GLint,GLint),red,green,blue)
end

function glColor3s(red,green,blue)
    ccall((:glColor3s,libcudart),Void,(GLshort,GLshort,GLshort),red,green,blue)
end

function glColor3ub(red,green,blue)
    ccall((:glColor3ub,libcudart),Void,(GLubyte,GLubyte,GLubyte),red,green,blue)
end

function glColor3ui(red,green,blue)
    ccall((:glColor3ui,libcudart),Void,(GLuint,GLuint,GLuint),red,green,blue)
end

function glColor3us(red,green,blue)
    ccall((:glColor3us,libcudart),Void,(GLushort,GLushort,GLushort),red,green,blue)
end

function glColor4b(red,green,blue,alpha)
    ccall((:glColor4b,libcudart),Void,(GLbyte,GLbyte,GLbyte,GLbyte),red,green,blue,alpha)
end

function glColor4d(red,green,blue,alpha)
    ccall((:glColor4d,libcudart),Void,(GLdouble,GLdouble,GLdouble,GLdouble),red,green,blue,alpha)
end

function glColor4f(red,green,blue,alpha)
    ccall((:glColor4f,libcudart),Void,(GLfloat,GLfloat,GLfloat,GLfloat),red,green,blue,alpha)
end

function glColor4i(red,green,blue,alpha)
    ccall((:glColor4i,libcudart),Void,(GLint,GLint,GLint,GLint),red,green,blue,alpha)
end

function glColor4s(red,green,blue,alpha)
    ccall((:glColor4s,libcudart),Void,(GLshort,GLshort,GLshort,GLshort),red,green,blue,alpha)
end

function glColor4ub(red,green,blue,alpha)
    ccall((:glColor4ub,libcudart),Void,(GLubyte,GLubyte,GLubyte,GLubyte),red,green,blue,alpha)
end

function glColor4ui(red,green,blue,alpha)
    ccall((:glColor4ui,libcudart),Void,(GLuint,GLuint,GLuint,GLuint),red,green,blue,alpha)
end

function glColor4us(red,green,blue,alpha)
    ccall((:glColor4us,libcudart),Void,(GLushort,GLushort,GLushort,GLushort),red,green,blue,alpha)
end

function glColor3bv(v)
    ccall((:glColor3bv,libcudart),Void,(Ptr{GLbyte},),v)
end

function glColor3dv(v)
    ccall((:glColor3dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glColor3fv(v)
    ccall((:glColor3fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glColor3iv(v)
    ccall((:glColor3iv,libcudart),Void,(Ptr{GLint},),v)
end

function glColor3sv(v)
    ccall((:glColor3sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glColor3ubv(v)
    ccall((:glColor3ubv,libcudart),Void,(Ptr{GLubyte},),v)
end

function glColor3uiv(v)
    ccall((:glColor3uiv,libcudart),Void,(Ptr{GLuint},),v)
end

function glColor3usv(v)
    ccall((:glColor3usv,libcudart),Void,(Ptr{GLushort},),v)
end

function glColor4bv(v)
    ccall((:glColor4bv,libcudart),Void,(Ptr{GLbyte},),v)
end

function glColor4dv(v)
    ccall((:glColor4dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glColor4fv(v)
    ccall((:glColor4fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glColor4iv(v)
    ccall((:glColor4iv,libcudart),Void,(Ptr{GLint},),v)
end

function glColor4sv(v)
    ccall((:glColor4sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glColor4ubv(v)
    ccall((:glColor4ubv,libcudart),Void,(Ptr{GLubyte},),v)
end

function glColor4uiv(v)
    ccall((:glColor4uiv,libcudart),Void,(Ptr{GLuint},),v)
end

function glColor4usv(v)
    ccall((:glColor4usv,libcudart),Void,(Ptr{GLushort},),v)
end

function glTexCoord1d(s)
    ccall((:glTexCoord1d,libcudart),Void,(GLdouble,),s)
end

function glTexCoord1f(s)
    ccall((:glTexCoord1f,libcudart),Void,(GLfloat,),s)
end

function glTexCoord1i(s)
    ccall((:glTexCoord1i,libcudart),Void,(GLint,),s)
end

function glTexCoord1s(s)
    ccall((:glTexCoord1s,libcudart),Void,(GLshort,),s)
end

function glTexCoord2d(s,t)
    ccall((:glTexCoord2d,libcudart),Void,(GLdouble,GLdouble),s,t)
end

function glTexCoord2f(s,t)
    ccall((:glTexCoord2f,libcudart),Void,(GLfloat,GLfloat),s,t)
end

function glTexCoord2i(s,t)
    ccall((:glTexCoord2i,libcudart),Void,(GLint,GLint),s,t)
end

function glTexCoord2s(s,t)
    ccall((:glTexCoord2s,libcudart),Void,(GLshort,GLshort),s,t)
end

function glTexCoord3d(s,t,r)
    ccall((:glTexCoord3d,libcudart),Void,(GLdouble,GLdouble,GLdouble),s,t,r)
end

function glTexCoord3f(s,t,r)
    ccall((:glTexCoord3f,libcudart),Void,(GLfloat,GLfloat,GLfloat),s,t,r)
end

function glTexCoord3i(s,t,r)
    ccall((:glTexCoord3i,libcudart),Void,(GLint,GLint,GLint),s,t,r)
end

function glTexCoord3s(s,t,r)
    ccall((:glTexCoord3s,libcudart),Void,(GLshort,GLshort,GLshort),s,t,r)
end

function glTexCoord4d(s,t,r,q)
    ccall((:glTexCoord4d,libcudart),Void,(GLdouble,GLdouble,GLdouble,GLdouble),s,t,r,q)
end

function glTexCoord4f(s,t,r,q)
    ccall((:glTexCoord4f,libcudart),Void,(GLfloat,GLfloat,GLfloat,GLfloat),s,t,r,q)
end

function glTexCoord4i(s,t,r,q)
    ccall((:glTexCoord4i,libcudart),Void,(GLint,GLint,GLint,GLint),s,t,r,q)
end

function glTexCoord4s(s,t,r,q)
    ccall((:glTexCoord4s,libcudart),Void,(GLshort,GLshort,GLshort,GLshort),s,t,r,q)
end

function glTexCoord1dv(v)
    ccall((:glTexCoord1dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glTexCoord1fv(v)
    ccall((:glTexCoord1fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glTexCoord1iv(v)
    ccall((:glTexCoord1iv,libcudart),Void,(Ptr{GLint},),v)
end

function glTexCoord1sv(v)
    ccall((:glTexCoord1sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glTexCoord2dv(v)
    ccall((:glTexCoord2dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glTexCoord2fv(v)
    ccall((:glTexCoord2fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glTexCoord2iv(v)
    ccall((:glTexCoord2iv,libcudart),Void,(Ptr{GLint},),v)
end

function glTexCoord2sv(v)
    ccall((:glTexCoord2sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glTexCoord3dv(v)
    ccall((:glTexCoord3dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glTexCoord3fv(v)
    ccall((:glTexCoord3fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glTexCoord3iv(v)
    ccall((:glTexCoord3iv,libcudart),Void,(Ptr{GLint},),v)
end

function glTexCoord3sv(v)
    ccall((:glTexCoord3sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glTexCoord4dv(v)
    ccall((:glTexCoord4dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glTexCoord4fv(v)
    ccall((:glTexCoord4fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glTexCoord4iv(v)
    ccall((:glTexCoord4iv,libcudart),Void,(Ptr{GLint},),v)
end

function glTexCoord4sv(v)
    ccall((:glTexCoord4sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glRasterPos2d(x,y)
    ccall((:glRasterPos2d,libcudart),Void,(GLdouble,GLdouble),x,y)
end

function glRasterPos2f(x,y)
    ccall((:glRasterPos2f,libcudart),Void,(GLfloat,GLfloat),x,y)
end

function glRasterPos2i(x,y)
    ccall((:glRasterPos2i,libcudart),Void,(GLint,GLint),x,y)
end

function glRasterPos2s(x,y)
    ccall((:glRasterPos2s,libcudart),Void,(GLshort,GLshort),x,y)
end

function glRasterPos3d(x,y,z)
    ccall((:glRasterPos3d,libcudart),Void,(GLdouble,GLdouble,GLdouble),x,y,z)
end

function glRasterPos3f(x,y,z)
    ccall((:glRasterPos3f,libcudart),Void,(GLfloat,GLfloat,GLfloat),x,y,z)
end

function glRasterPos3i(x,y,z)
    ccall((:glRasterPos3i,libcudart),Void,(GLint,GLint,GLint),x,y,z)
end

function glRasterPos3s(x,y,z)
    ccall((:glRasterPos3s,libcudart),Void,(GLshort,GLshort,GLshort),x,y,z)
end

function glRasterPos4d(x,y,z,w)
    ccall((:glRasterPos4d,libcudart),Void,(GLdouble,GLdouble,GLdouble,GLdouble),x,y,z,w)
end

function glRasterPos4f(x,y,z,w)
    ccall((:glRasterPos4f,libcudart),Void,(GLfloat,GLfloat,GLfloat,GLfloat),x,y,z,w)
end

function glRasterPos4i(x,y,z,w)
    ccall((:glRasterPos4i,libcudart),Void,(GLint,GLint,GLint,GLint),x,y,z,w)
end

function glRasterPos4s(x,y,z,w)
    ccall((:glRasterPos4s,libcudart),Void,(GLshort,GLshort,GLshort,GLshort),x,y,z,w)
end

function glRasterPos2dv(v)
    ccall((:glRasterPos2dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glRasterPos2fv(v)
    ccall((:glRasterPos2fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glRasterPos2iv(v)
    ccall((:glRasterPos2iv,libcudart),Void,(Ptr{GLint},),v)
end

function glRasterPos2sv(v)
    ccall((:glRasterPos2sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glRasterPos3dv(v)
    ccall((:glRasterPos3dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glRasterPos3fv(v)
    ccall((:glRasterPos3fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glRasterPos3iv(v)
    ccall((:glRasterPos3iv,libcudart),Void,(Ptr{GLint},),v)
end

function glRasterPos3sv(v)
    ccall((:glRasterPos3sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glRasterPos4dv(v)
    ccall((:glRasterPos4dv,libcudart),Void,(Ptr{GLdouble},),v)
end

function glRasterPos4fv(v)
    ccall((:glRasterPos4fv,libcudart),Void,(Ptr{GLfloat},),v)
end

function glRasterPos4iv(v)
    ccall((:glRasterPos4iv,libcudart),Void,(Ptr{GLint},),v)
end

function glRasterPos4sv(v)
    ccall((:glRasterPos4sv,libcudart),Void,(Ptr{GLshort},),v)
end

function glRectd(x1,y1,x2,y2)
    ccall((:glRectd,libcudart),Void,(GLdouble,GLdouble,GLdouble,GLdouble),x1,y1,x2,y2)
end

function glRectf(x1,y1,x2,y2)
    ccall((:glRectf,libcudart),Void,(GLfloat,GLfloat,GLfloat,GLfloat),x1,y1,x2,y2)
end

function glRecti(x1,y1,x2,y2)
    ccall((:glRecti,libcudart),Void,(GLint,GLint,GLint,GLint),x1,y1,x2,y2)
end

function glRects(x1,y1,x2,y2)
    ccall((:glRects,libcudart),Void,(GLshort,GLshort,GLshort,GLshort),x1,y1,x2,y2)
end

function glRectdv(v1,v2)
    ccall((:glRectdv,libcudart),Void,(Ptr{GLdouble},Ptr{GLdouble}),v1,v2)
end

function glRectfv(v1,v2)
    ccall((:glRectfv,libcudart),Void,(Ptr{GLfloat},Ptr{GLfloat}),v1,v2)
end

function glRectiv(v1,v2)
    ccall((:glRectiv,libcudart),Void,(Ptr{GLint},Ptr{GLint}),v1,v2)
end

function glRectsv(v1,v2)
    ccall((:glRectsv,libcudart),Void,(Ptr{GLshort},Ptr{GLshort}),v1,v2)
end

function glVertexPointer(size,_type,stride,ptr)
    ccall((:glVertexPointer,libcudart),Void,(GLint,GLenum,GLsizei,Ptr{GLvoid}),size,_type,stride,ptr)
end

function glNormalPointer(_type,stride,ptr)
    ccall((:glNormalPointer,libcudart),Void,(GLenum,GLsizei,Ptr{GLvoid}),_type,stride,ptr)
end

function glColorPointer(size,_type,stride,ptr)
    ccall((:glColorPointer,libcudart),Void,(GLint,GLenum,GLsizei,Ptr{GLvoid}),size,_type,stride,ptr)
end

function glIndexPointer(_type,stride,ptr)
    ccall((:glIndexPointer,libcudart),Void,(GLenum,GLsizei,Ptr{GLvoid}),_type,stride,ptr)
end

function glTexCoordPointer(size,_type,stride,ptr)
    ccall((:glTexCoordPointer,libcudart),Void,(GLint,GLenum,GLsizei,Ptr{GLvoid}),size,_type,stride,ptr)
end

function glEdgeFlagPointer(stride,ptr)
    ccall((:glEdgeFlagPointer,libcudart),Void,(GLsizei,Ptr{GLvoid}),stride,ptr)
end

function glGetPointerv(pname,params)
    ccall((:glGetPointerv,libcudart),Void,(GLenum,Ptr{Ptr{GLvoid}}),pname,params)
end

function glArrayElement(i)
    ccall((:glArrayElement,libcudart),Void,(GLint,),i)
end

function glDrawArrays(mode,first,count)
    ccall((:glDrawArrays,libcudart),Void,(GLenum,GLint,GLsizei),mode,first,count)
end

function glDrawElements(mode,count,_type,indices)
    ccall((:glDrawElements,libcudart),Void,(GLenum,GLsizei,GLenum,Ptr{GLvoid}),mode,count,_type,indices)
end

function glInterleavedArrays(format,stride,pointer)
    ccall((:glInterleavedArrays,libcudart),Void,(GLenum,GLsizei,Ptr{GLvoid}),format,stride,pointer)
end

function glShadeModel(mode)
    ccall((:glShadeModel,libcudart),Void,(GLenum,),mode)
end

function glLightf(light,pname,param)
    ccall((:glLightf,libcudart),Void,(GLenum,GLenum,GLfloat),light,pname,param)
end

function glLighti(light,pname,param)
    ccall((:glLighti,libcudart),Void,(GLenum,GLenum,GLint),light,pname,param)
end

function glLightfv(light,pname,params)
    ccall((:glLightfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),light,pname,params)
end

function glLightiv(light,pname,params)
    ccall((:glLightiv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),light,pname,params)
end

function glGetLightfv(light,pname,params)
    ccall((:glGetLightfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),light,pname,params)
end

function glGetLightiv(light,pname,params)
    ccall((:glGetLightiv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),light,pname,params)
end

function glLightModelf(pname,param)
    ccall((:glLightModelf,libcudart),Void,(GLenum,GLfloat),pname,param)
end

function glLightModeli(pname,param)
    ccall((:glLightModeli,libcudart),Void,(GLenum,GLint),pname,param)
end

function glLightModelfv(pname,params)
    ccall((:glLightModelfv,libcudart),Void,(GLenum,Ptr{GLfloat}),pname,params)
end

function glLightModeliv(pname,params)
    ccall((:glLightModeliv,libcudart),Void,(GLenum,Ptr{GLint}),pname,params)
end

function glMaterialf(face,pname,param)
    ccall((:glMaterialf,libcudart),Void,(GLenum,GLenum,GLfloat),face,pname,param)
end

function glMateriali(face,pname,param)
    ccall((:glMateriali,libcudart),Void,(GLenum,GLenum,GLint),face,pname,param)
end

function glMaterialfv(face,pname,params)
    ccall((:glMaterialfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),face,pname,params)
end

function glMaterialiv(face,pname,params)
    ccall((:glMaterialiv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),face,pname,params)
end

function glGetMaterialfv(face,pname,params)
    ccall((:glGetMaterialfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),face,pname,params)
end

function glGetMaterialiv(face,pname,params)
    ccall((:glGetMaterialiv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),face,pname,params)
end

function glColorMaterial(face,mode)
    ccall((:glColorMaterial,libcudart),Void,(GLenum,GLenum),face,mode)
end

function glPixelZoom(xfactor,yfactor)
    ccall((:glPixelZoom,libcudart),Void,(GLfloat,GLfloat),xfactor,yfactor)
end

function glPixelStoref(pname,param)
    ccall((:glPixelStoref,libcudart),Void,(GLenum,GLfloat),pname,param)
end

function glPixelStorei(pname,param)
    ccall((:glPixelStorei,libcudart),Void,(GLenum,GLint),pname,param)
end

function glPixelTransferf(pname,param)
    ccall((:glPixelTransferf,libcudart),Void,(GLenum,GLfloat),pname,param)
end

function glPixelTransferi(pname,param)
    ccall((:glPixelTransferi,libcudart),Void,(GLenum,GLint),pname,param)
end

function glPixelMapfv(map,mapsize,values)
    ccall((:glPixelMapfv,libcudart),Void,(GLenum,GLsizei,Ptr{GLfloat}),map,mapsize,values)
end

function glPixelMapuiv(map,mapsize,values)
    ccall((:glPixelMapuiv,libcudart),Void,(GLenum,GLsizei,Ptr{GLuint}),map,mapsize,values)
end

function glPixelMapusv(map,mapsize,values)
    ccall((:glPixelMapusv,libcudart),Void,(GLenum,GLsizei,Ptr{GLushort}),map,mapsize,values)
end

function glGetPixelMapfv(map,values)
    ccall((:glGetPixelMapfv,libcudart),Void,(GLenum,Ptr{GLfloat}),map,values)
end

function glGetPixelMapuiv(map,values)
    ccall((:glGetPixelMapuiv,libcudart),Void,(GLenum,Ptr{GLuint}),map,values)
end

function glGetPixelMapusv(map,values)
    ccall((:glGetPixelMapusv,libcudart),Void,(GLenum,Ptr{GLushort}),map,values)
end

function glBitmap(width,height,xorig,yorig,xmove,ymove,bitmap)
    ccall((:glBitmap,libcudart),Void,(GLsizei,GLsizei,GLfloat,GLfloat,GLfloat,GLfloat,Ptr{GLubyte}),width,height,xorig,yorig,xmove,ymove,bitmap)
end

function glReadPixels(x,y,width,height,format,_type,pixels)
    ccall((:glReadPixels,libcudart),Void,(GLint,GLint,GLsizei,GLsizei,GLenum,GLenum,Ptr{GLvoid}),x,y,width,height,format,_type,pixels)
end

function glDrawPixels(width,height,format,_type,pixels)
    ccall((:glDrawPixels,libcudart),Void,(GLsizei,GLsizei,GLenum,GLenum,Ptr{GLvoid}),width,height,format,_type,pixels)
end

function glCopyPixels(x,y,width,height,_type)
    ccall((:glCopyPixels,libcudart),Void,(GLint,GLint,GLsizei,GLsizei,GLenum),x,y,width,height,_type)
end

function glStencilFunc(func,ref,mask)
    ccall((:glStencilFunc,libcudart),Void,(GLenum,GLint,GLuint),func,ref,mask)
end

function glStencilMask(mask)
    ccall((:glStencilMask,libcudart),Void,(GLuint,),mask)
end

function glStencilOp(fail,zfail,zpass)
    ccall((:glStencilOp,libcudart),Void,(GLenum,GLenum,GLenum),fail,zfail,zpass)
end

function glClearStencil(s)
    ccall((:glClearStencil,libcudart),Void,(GLint,),s)
end

function glTexGend(coord,pname,param)
    ccall((:glTexGend,libcudart),Void,(GLenum,GLenum,GLdouble),coord,pname,param)
end

function glTexGenf(coord,pname,param)
    ccall((:glTexGenf,libcudart),Void,(GLenum,GLenum,GLfloat),coord,pname,param)
end

function glTexGeni(coord,pname,param)
    ccall((:glTexGeni,libcudart),Void,(GLenum,GLenum,GLint),coord,pname,param)
end

function glTexGendv(coord,pname,params)
    ccall((:glTexGendv,libcudart),Void,(GLenum,GLenum,Ptr{GLdouble}),coord,pname,params)
end

function glTexGenfv(coord,pname,params)
    ccall((:glTexGenfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),coord,pname,params)
end

function glTexGeniv(coord,pname,params)
    ccall((:glTexGeniv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),coord,pname,params)
end

function glGetTexGendv(coord,pname,params)
    ccall((:glGetTexGendv,libcudart),Void,(GLenum,GLenum,Ptr{GLdouble}),coord,pname,params)
end

function glGetTexGenfv(coord,pname,params)
    ccall((:glGetTexGenfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),coord,pname,params)
end

function glGetTexGeniv(coord,pname,params)
    ccall((:glGetTexGeniv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),coord,pname,params)
end

function glTexEnvf(target,pname,param)
    ccall((:glTexEnvf,libcudart),Void,(GLenum,GLenum,GLfloat),target,pname,param)
end

function glTexEnvi(target,pname,param)
    ccall((:glTexEnvi,libcudart),Void,(GLenum,GLenum,GLint),target,pname,param)
end

function glTexEnvfv(target,pname,params)
    ccall((:glTexEnvfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glTexEnviv(target,pname,params)
    ccall((:glTexEnviv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glGetTexEnvfv(target,pname,params)
    ccall((:glGetTexEnvfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glGetTexEnviv(target,pname,params)
    ccall((:glGetTexEnviv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glTexParameterf(target,pname,param)
    ccall((:glTexParameterf,libcudart),Void,(GLenum,GLenum,GLfloat),target,pname,param)
end

function glTexParameteri(target,pname,param)
    ccall((:glTexParameteri,libcudart),Void,(GLenum,GLenum,GLint),target,pname,param)
end

function glTexParameterfv(target,pname,params)
    ccall((:glTexParameterfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glTexParameteriv(target,pname,params)
    ccall((:glTexParameteriv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glGetTexParameterfv(target,pname,params)
    ccall((:glGetTexParameterfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glGetTexParameteriv(target,pname,params)
    ccall((:glGetTexParameteriv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glGetTexLevelParameterfv(target,level,pname,params)
    ccall((:glGetTexLevelParameterfv,libcudart),Void,(GLenum,GLint,GLenum,Ptr{GLfloat}),target,level,pname,params)
end

function glGetTexLevelParameteriv(target,level,pname,params)
    ccall((:glGetTexLevelParameteriv,libcudart),Void,(GLenum,GLint,GLenum,Ptr{GLint}),target,level,pname,params)
end

function glTexImage1D(target,level,internalFormat,width,border,format,_type,pixels)
    ccall((:glTexImage1D,libcudart),Void,(GLenum,GLint,GLint,GLsizei,GLint,GLenum,GLenum,Ptr{GLvoid}),target,level,internalFormat,width,border,format,_type,pixels)
end

function glTexImage2D(target,level,internalFormat,width,height,border,format,_type,pixels)
    ccall((:glTexImage2D,libcudart),Void,(GLenum,GLint,GLint,GLsizei,GLsizei,GLint,GLenum,GLenum,Ptr{GLvoid}),target,level,internalFormat,width,height,border,format,_type,pixels)
end

function glGetTexImage(target,level,format,_type,pixels)
    ccall((:glGetTexImage,libcudart),Void,(GLenum,GLint,GLenum,GLenum,Ptr{GLvoid}),target,level,format,_type,pixels)
end

function glGenTextures(n,textures)
    ccall((:glGenTextures,libcudart),Void,(GLsizei,Ptr{GLuint}),n,textures)
end

function glDeleteTextures(n,textures)
    ccall((:glDeleteTextures,libcudart),Void,(GLsizei,Ptr{GLuint}),n,textures)
end

function glBindTexture(target,texture)
    ccall((:glBindTexture,libcudart),Void,(GLenum,GLuint),target,texture)
end

function glPrioritizeTextures(n,textures,priorities)
    ccall((:glPrioritizeTextures,libcudart),Void,(GLsizei,Ptr{GLuint},Ptr{GLclampf}),n,textures,priorities)
end

function glAreTexturesResident(n,textures,residences)
    ccall((:glAreTexturesResident,libcudart),GLboolean,(GLsizei,Ptr{GLuint},Ptr{GLboolean}),n,textures,residences)
end

function glIsTexture(texture)
    ccall((:glIsTexture,libcudart),GLboolean,(GLuint,),texture)
end

function glTexSubImage1D(target,level,xoffset,width,format,_type,pixels)
    ccall((:glTexSubImage1D,libcudart),Void,(GLenum,GLint,GLint,GLsizei,GLenum,GLenum,Ptr{GLvoid}),target,level,xoffset,width,format,_type,pixels)
end

function glTexSubImage2D(target,level,xoffset,yoffset,width,height,format,_type,pixels)
    ccall((:glTexSubImage2D,libcudart),Void,(GLenum,GLint,GLint,GLint,GLsizei,GLsizei,GLenum,GLenum,Ptr{GLvoid}),target,level,xoffset,yoffset,width,height,format,_type,pixels)
end

function glCopyTexImage1D(target,level,internalformat,x,y,width,border)
    ccall((:glCopyTexImage1D,libcudart),Void,(GLenum,GLint,GLenum,GLint,GLint,GLsizei,GLint),target,level,internalformat,x,y,width,border)
end

function glCopyTexImage2D(target,level,internalformat,x,y,width,height,border)
    ccall((:glCopyTexImage2D,libcudart),Void,(GLenum,GLint,GLenum,GLint,GLint,GLsizei,GLsizei,GLint),target,level,internalformat,x,y,width,height,border)
end

function glCopyTexSubImage1D(target,level,xoffset,x,y,width)
    ccall((:glCopyTexSubImage1D,libcudart),Void,(GLenum,GLint,GLint,GLint,GLint,GLsizei),target,level,xoffset,x,y,width)
end

function glCopyTexSubImage2D(target,level,xoffset,yoffset,x,y,width,height)
    ccall((:glCopyTexSubImage2D,libcudart),Void,(GLenum,GLint,GLint,GLint,GLint,GLint,GLsizei,GLsizei),target,level,xoffset,yoffset,x,y,width,height)
end

function glMap1d(target,u1,u2,stride,order,points)
    ccall((:glMap1d,libcudart),Void,(GLenum,GLdouble,GLdouble,GLint,GLint,Ptr{GLdouble}),target,u1,u2,stride,order,points)
end

function glMap1f(target,u1,u2,stride,order,points)
    ccall((:glMap1f,libcudart),Void,(GLenum,GLfloat,GLfloat,GLint,GLint,Ptr{GLfloat}),target,u1,u2,stride,order,points)
end

function glMap2d(target,u1,u2,ustride,uorder,v1,v2,vstride,vorder,points)
    ccall((:glMap2d,libcudart),Void,(GLenum,GLdouble,GLdouble,GLint,GLint,GLdouble,GLdouble,GLint,GLint,Ptr{GLdouble}),target,u1,u2,ustride,uorder,v1,v2,vstride,vorder,points)
end

function glMap2f(target,u1,u2,ustride,uorder,v1,v2,vstride,vorder,points)
    ccall((:glMap2f,libcudart),Void,(GLenum,GLfloat,GLfloat,GLint,GLint,GLfloat,GLfloat,GLint,GLint,Ptr{GLfloat}),target,u1,u2,ustride,uorder,v1,v2,vstride,vorder,points)
end

function glGetMapdv(target,query,v)
    ccall((:glGetMapdv,libcudart),Void,(GLenum,GLenum,Ptr{GLdouble}),target,query,v)
end

function glGetMapfv(target,query,v)
    ccall((:glGetMapfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,query,v)
end

function glGetMapiv(target,query,v)
    ccall((:glGetMapiv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,query,v)
end

function glEvalCoord1d(u)
    ccall((:glEvalCoord1d,libcudart),Void,(GLdouble,),u)
end

function glEvalCoord1f(u)
    ccall((:glEvalCoord1f,libcudart),Void,(GLfloat,),u)
end

function glEvalCoord1dv(u)
    ccall((:glEvalCoord1dv,libcudart),Void,(Ptr{GLdouble},),u)
end

function glEvalCoord1fv(u)
    ccall((:glEvalCoord1fv,libcudart),Void,(Ptr{GLfloat},),u)
end

function glEvalCoord2d(u,v)
    ccall((:glEvalCoord2d,libcudart),Void,(GLdouble,GLdouble),u,v)
end

function glEvalCoord2f(u,v)
    ccall((:glEvalCoord2f,libcudart),Void,(GLfloat,GLfloat),u,v)
end

function glEvalCoord2dv(u)
    ccall((:glEvalCoord2dv,libcudart),Void,(Ptr{GLdouble},),u)
end

function glEvalCoord2fv(u)
    ccall((:glEvalCoord2fv,libcudart),Void,(Ptr{GLfloat},),u)
end

function glMapGrid1d(un,u1,u2)
    ccall((:glMapGrid1d,libcudart),Void,(GLint,GLdouble,GLdouble),un,u1,u2)
end

function glMapGrid1f(un,u1,u2)
    ccall((:glMapGrid1f,libcudart),Void,(GLint,GLfloat,GLfloat),un,u1,u2)
end

function glMapGrid2d(un,u1,u2,vn,v1,v2)
    ccall((:glMapGrid2d,libcudart),Void,(GLint,GLdouble,GLdouble,GLint,GLdouble,GLdouble),un,u1,u2,vn,v1,v2)
end

function glMapGrid2f(un,u1,u2,vn,v1,v2)
    ccall((:glMapGrid2f,libcudart),Void,(GLint,GLfloat,GLfloat,GLint,GLfloat,GLfloat),un,u1,u2,vn,v1,v2)
end

function glEvalPoint1(i)
    ccall((:glEvalPoint1,libcudart),Void,(GLint,),i)
end

function glEvalPoint2(i,j)
    ccall((:glEvalPoint2,libcudart),Void,(GLint,GLint),i,j)
end

function glEvalMesh1(mode,i1,i2)
    ccall((:glEvalMesh1,libcudart),Void,(GLenum,GLint,GLint),mode,i1,i2)
end

function glEvalMesh2(mode,i1,i2,j1,j2)
    ccall((:glEvalMesh2,libcudart),Void,(GLenum,GLint,GLint,GLint,GLint),mode,i1,i2,j1,j2)
end

function glFogf(pname,param)
    ccall((:glFogf,libcudart),Void,(GLenum,GLfloat),pname,param)
end

function glFogi(pname,param)
    ccall((:glFogi,libcudart),Void,(GLenum,GLint),pname,param)
end

function glFogfv(pname,params)
    ccall((:glFogfv,libcudart),Void,(GLenum,Ptr{GLfloat}),pname,params)
end

function glFogiv(pname,params)
    ccall((:glFogiv,libcudart),Void,(GLenum,Ptr{GLint}),pname,params)
end

function glFeedbackBuffer(size,_type,buffer)
    ccall((:glFeedbackBuffer,libcudart),Void,(GLsizei,GLenum,Ptr{GLfloat}),size,_type,buffer)
end

function glPassThrough(token)
    ccall((:glPassThrough,libcudart),Void,(GLfloat,),token)
end

function glSelectBuffer(size,buffer)
    ccall((:glSelectBuffer,libcudart),Void,(GLsizei,Ptr{GLuint}),size,buffer)
end

function glInitNames()
    ccall((:glInitNames,libcudart),Void,())
end

function glLoadName(name)
    ccall((:glLoadName,libcudart),Void,(GLuint,),name)
end

function glPushName(name)
    ccall((:glPushName,libcudart),Void,(GLuint,),name)
end

function glPopName()
    ccall((:glPopName,libcudart),Void,())
end

function glDrawRangeElements(mode,start,_end,count,_type,indices)
    ccall((:glDrawRangeElements,libcudart),Void,(GLenum,GLuint,GLuint,GLsizei,GLenum,Ptr{GLvoid}),mode,start,_end,count,_type,indices)
end

function glTexImage3D(target,level,internalFormat,width,height,depth,border,format,_type,pixels)
    ccall((:glTexImage3D,libcudart),Void,(GLenum,GLint,GLint,GLsizei,GLsizei,GLsizei,GLint,GLenum,GLenum,Ptr{GLvoid}),target,level,internalFormat,width,height,depth,border,format,_type,pixels)
end

function glTexSubImage3D(target,level,xoffset,yoffset,zoffset,width,height,depth,format,_type,pixels)
    ccall((:glTexSubImage3D,libcudart),Void,(GLenum,GLint,GLint,GLint,GLint,GLsizei,GLsizei,GLsizei,GLenum,GLenum,Ptr{GLvoid}),target,level,xoffset,yoffset,zoffset,width,height,depth,format,_type,pixels)
end

function glCopyTexSubImage3D(target,level,xoffset,yoffset,zoffset,x,y,width,height)
    ccall((:glCopyTexSubImage3D,libcudart),Void,(GLenum,GLint,GLint,GLint,GLint,GLint,GLint,GLsizei,GLsizei),target,level,xoffset,yoffset,zoffset,x,y,width,height)
end

function glColorTable(target,internalformat,width,format,_type,table)
    ccall((:glColorTable,libcudart),Void,(GLenum,GLenum,GLsizei,GLenum,GLenum,Ptr{GLvoid}),target,internalformat,width,format,_type,table)
end

function glColorSubTable(target,start,count,format,_type,data)
    ccall((:glColorSubTable,libcudart),Void,(GLenum,GLsizei,GLsizei,GLenum,GLenum,Ptr{GLvoid}),target,start,count,format,_type,data)
end

function glColorTableParameteriv(target,pname,params)
    ccall((:glColorTableParameteriv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glColorTableParameterfv(target,pname,params)
    ccall((:glColorTableParameterfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glCopyColorSubTable(target,start,x,y,width)
    ccall((:glCopyColorSubTable,libcudart),Void,(GLenum,GLsizei,GLint,GLint,GLsizei),target,start,x,y,width)
end

function glCopyColorTable(target,internalformat,x,y,width)
    ccall((:glCopyColorTable,libcudart),Void,(GLenum,GLenum,GLint,GLint,GLsizei),target,internalformat,x,y,width)
end

function glGetColorTable(target,format,_type,table)
    ccall((:glGetColorTable,libcudart),Void,(GLenum,GLenum,GLenum,Ptr{GLvoid}),target,format,_type,table)
end

function glGetColorTableParameterfv(target,pname,params)
    ccall((:glGetColorTableParameterfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glGetColorTableParameteriv(target,pname,params)
    ccall((:glGetColorTableParameteriv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glBlendEquation(mode)
    ccall((:glBlendEquation,libcudart),Void,(GLenum,),mode)
end

function glBlendColor(red,green,blue,alpha)
    ccall((:glBlendColor,libcudart),Void,(GLclampf,GLclampf,GLclampf,GLclampf),red,green,blue,alpha)
end

function glHistogram(target,width,internalformat,sink)
    ccall((:glHistogram,libcudart),Void,(GLenum,GLsizei,GLenum,GLboolean),target,width,internalformat,sink)
end

function glResetHistogram(target)
    ccall((:glResetHistogram,libcudart),Void,(GLenum,),target)
end

function glGetHistogram(target,reset,format,_type,values)
    ccall((:glGetHistogram,libcudart),Void,(GLenum,GLboolean,GLenum,GLenum,Ptr{GLvoid}),target,reset,format,_type,values)
end

function glGetHistogramParameterfv(target,pname,params)
    ccall((:glGetHistogramParameterfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glGetHistogramParameteriv(target,pname,params)
    ccall((:glGetHistogramParameteriv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glMinmax(target,internalformat,sink)
    ccall((:glMinmax,libcudart),Void,(GLenum,GLenum,GLboolean),target,internalformat,sink)
end

function glResetMinmax(target)
    ccall((:glResetMinmax,libcudart),Void,(GLenum,),target)
end

function glGetMinmax(target,reset,format,types,values)
    ccall((:glGetMinmax,libcudart),Void,(GLenum,GLboolean,GLenum,GLenum,Ptr{GLvoid}),target,reset,format,types,values)
end

function glGetMinmaxParameterfv(target,pname,params)
    ccall((:glGetMinmaxParameterfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glGetMinmaxParameteriv(target,pname,params)
    ccall((:glGetMinmaxParameteriv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glConvolutionFilter1D(target,internalformat,width,format,_type,image)
    ccall((:glConvolutionFilter1D,libcudart),Void,(GLenum,GLenum,GLsizei,GLenum,GLenum,Ptr{GLvoid}),target,internalformat,width,format,_type,image)
end

function glConvolutionFilter2D(target,internalformat,width,height,format,_type,image)
    ccall((:glConvolutionFilter2D,libcudart),Void,(GLenum,GLenum,GLsizei,GLsizei,GLenum,GLenum,Ptr{GLvoid}),target,internalformat,width,height,format,_type,image)
end

function glConvolutionParameterf(target,pname,params)
    ccall((:glConvolutionParameterf,libcudart),Void,(GLenum,GLenum,GLfloat),target,pname,params)
end

function glConvolutionParameterfv(target,pname,params)
    ccall((:glConvolutionParameterfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glConvolutionParameteri(target,pname,params)
    ccall((:glConvolutionParameteri,libcudart),Void,(GLenum,GLenum,GLint),target,pname,params)
end

function glConvolutionParameteriv(target,pname,params)
    ccall((:glConvolutionParameteriv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glCopyConvolutionFilter1D(target,internalformat,x,y,width)
    ccall((:glCopyConvolutionFilter1D,libcudart),Void,(GLenum,GLenum,GLint,GLint,GLsizei),target,internalformat,x,y,width)
end

function glCopyConvolutionFilter2D(target,internalformat,x,y,width,height)
    ccall((:glCopyConvolutionFilter2D,libcudart),Void,(GLenum,GLenum,GLint,GLint,GLsizei,GLsizei),target,internalformat,x,y,width,height)
end

function glGetConvolutionFilter(target,format,_type,image)
    ccall((:glGetConvolutionFilter,libcudart),Void,(GLenum,GLenum,GLenum,Ptr{GLvoid}),target,format,_type,image)
end

function glGetConvolutionParameterfv(target,pname,params)
    ccall((:glGetConvolutionParameterfv,libcudart),Void,(GLenum,GLenum,Ptr{GLfloat}),target,pname,params)
end

function glGetConvolutionParameteriv(target,pname,params)
    ccall((:glGetConvolutionParameteriv,libcudart),Void,(GLenum,GLenum,Ptr{GLint}),target,pname,params)
end

function glSeparableFilter2D(target,internalformat,width,height,format,_type,row,column)
    ccall((:glSeparableFilter2D,libcudart),Void,(GLenum,GLenum,GLsizei,GLsizei,GLenum,GLenum,Ptr{GLvoid},Ptr{GLvoid}),target,internalformat,width,height,format,_type,row,column)
end

function glGetSeparableFilter(target,format,_type,row,column,span)
    ccall((:glGetSeparableFilter,libcudart),Void,(GLenum,GLenum,GLenum,Ptr{GLvoid},Ptr{GLvoid},Ptr{GLvoid}),target,format,_type,row,column,span)
end

function glActiveTexture(texture)
    ccall((:glActiveTexture,libcudart),Void,(GLenum,),texture)
end

function glClientActiveTexture(texture)
    ccall((:glClientActiveTexture,libcudart),Void,(GLenum,),texture)
end

function glCompressedTexImage1D(target,level,internalformat,width,border,imageSize,data)
    ccall((:glCompressedTexImage1D,libcudart),Void,(GLenum,GLint,GLenum,GLsizei,GLint,GLsizei,Ptr{GLvoid}),target,level,internalformat,width,border,imageSize,data)
end

function glCompressedTexImage2D(target,level,internalformat,width,height,border,imageSize,data)
    ccall((:glCompressedTexImage2D,libcudart),Void,(GLenum,GLint,GLenum,GLsizei,GLsizei,GLint,GLsizei,Ptr{GLvoid}),target,level,internalformat,width,height,border,imageSize,data)
end

function glCompressedTexImage3D(target,level,internalformat,width,height,depth,border,imageSize,data)
    ccall((:glCompressedTexImage3D,libcudart),Void,(GLenum,GLint,GLenum,GLsizei,GLsizei,GLsizei,GLint,GLsizei,Ptr{GLvoid}),target,level,internalformat,width,height,depth,border,imageSize,data)
end

function glCompressedTexSubImage1D(target,level,xoffset,width,format,imageSize,data)
    ccall((:glCompressedTexSubImage1D,libcudart),Void,(GLenum,GLint,GLint,GLsizei,GLenum,GLsizei,Ptr{GLvoid}),target,level,xoffset,width,format,imageSize,data)
end

function glCompressedTexSubImage2D(target,level,xoffset,yoffset,width,height,format,imageSize,data)
    ccall((:glCompressedTexSubImage2D,libcudart),Void,(GLenum,GLint,GLint,GLint,GLsizei,GLsizei,GLenum,GLsizei,Ptr{GLvoid}),target,level,xoffset,yoffset,width,height,format,imageSize,data)
end

function glCompressedTexSubImage3D(target,level,xoffset,yoffset,zoffset,width,height,depth,format,imageSize,data)
    ccall((:glCompressedTexSubImage3D,libcudart),Void,(GLenum,GLint,GLint,GLint,GLint,GLsizei,GLsizei,GLsizei,GLenum,GLsizei,Ptr{GLvoid}),target,level,xoffset,yoffset,zoffset,width,height,depth,format,imageSize,data)
end

function glGetCompressedTexImage(target,lod,img)
    ccall((:glGetCompressedTexImage,libcudart),Void,(GLenum,GLint,Ptr{GLvoid}),target,lod,img)
end

function glMultiTexCoord1d(target,s)
    ccall((:glMultiTexCoord1d,libcudart),Void,(GLenum,GLdouble),target,s)
end

function glMultiTexCoord1dv(target,v)
    ccall((:glMultiTexCoord1dv,libcudart),Void,(GLenum,Ptr{GLdouble}),target,v)
end

function glMultiTexCoord1f(target,s)
    ccall((:glMultiTexCoord1f,libcudart),Void,(GLenum,GLfloat),target,s)
end

function glMultiTexCoord1fv(target,v)
    ccall((:glMultiTexCoord1fv,libcudart),Void,(GLenum,Ptr{GLfloat}),target,v)
end

function glMultiTexCoord1i(target,s)
    ccall((:glMultiTexCoord1i,libcudart),Void,(GLenum,GLint),target,s)
end

function glMultiTexCoord1iv(target,v)
    ccall((:glMultiTexCoord1iv,libcudart),Void,(GLenum,Ptr{GLint}),target,v)
end

function glMultiTexCoord1s(target,s)
    ccall((:glMultiTexCoord1s,libcudart),Void,(GLenum,GLshort),target,s)
end

function glMultiTexCoord1sv(target,v)
    ccall((:glMultiTexCoord1sv,libcudart),Void,(GLenum,Ptr{GLshort}),target,v)
end

function glMultiTexCoord2d(target,s,t)
    ccall((:glMultiTexCoord2d,libcudart),Void,(GLenum,GLdouble,GLdouble),target,s,t)
end

function glMultiTexCoord2dv(target,v)
    ccall((:glMultiTexCoord2dv,libcudart),Void,(GLenum,Ptr{GLdouble}),target,v)
end

function glMultiTexCoord2f(target,s,t)
    ccall((:glMultiTexCoord2f,libcudart),Void,(GLenum,GLfloat,GLfloat),target,s,t)
end

function glMultiTexCoord2fv(target,v)
    ccall((:glMultiTexCoord2fv,libcudart),Void,(GLenum,Ptr{GLfloat}),target,v)
end

function glMultiTexCoord2i(target,s,t)
    ccall((:glMultiTexCoord2i,libcudart),Void,(GLenum,GLint,GLint),target,s,t)
end

function glMultiTexCoord2iv(target,v)
    ccall((:glMultiTexCoord2iv,libcudart),Void,(GLenum,Ptr{GLint}),target,v)
end

function glMultiTexCoord2s(target,s,t)
    ccall((:glMultiTexCoord2s,libcudart),Void,(GLenum,GLshort,GLshort),target,s,t)
end

function glMultiTexCoord2sv(target,v)
    ccall((:glMultiTexCoord2sv,libcudart),Void,(GLenum,Ptr{GLshort}),target,v)
end

function glMultiTexCoord3d(target,s,t,r)
    ccall((:glMultiTexCoord3d,libcudart),Void,(GLenum,GLdouble,GLdouble,GLdouble),target,s,t,r)
end

function glMultiTexCoord3dv(target,v)
    ccall((:glMultiTexCoord3dv,libcudart),Void,(GLenum,Ptr{GLdouble}),target,v)
end

function glMultiTexCoord3f(target,s,t,r)
    ccall((:glMultiTexCoord3f,libcudart),Void,(GLenum,GLfloat,GLfloat,GLfloat),target,s,t,r)
end

function glMultiTexCoord3fv(target,v)
    ccall((:glMultiTexCoord3fv,libcudart),Void,(GLenum,Ptr{GLfloat}),target,v)
end

function glMultiTexCoord3i(target,s,t,r)
    ccall((:glMultiTexCoord3i,libcudart),Void,(GLenum,GLint,GLint,GLint),target,s,t,r)
end

function glMultiTexCoord3iv(target,v)
    ccall((:glMultiTexCoord3iv,libcudart),Void,(GLenum,Ptr{GLint}),target,v)
end

function glMultiTexCoord3s(target,s,t,r)
    ccall((:glMultiTexCoord3s,libcudart),Void,(GLenum,GLshort,GLshort,GLshort),target,s,t,r)
end

function glMultiTexCoord3sv(target,v)
    ccall((:glMultiTexCoord3sv,libcudart),Void,(GLenum,Ptr{GLshort}),target,v)
end

function glMultiTexCoord4d(target,s,t,r,q)
    ccall((:glMultiTexCoord4d,libcudart),Void,(GLenum,GLdouble,GLdouble,GLdouble,GLdouble),target,s,t,r,q)
end

function glMultiTexCoord4dv(target,v)
    ccall((:glMultiTexCoord4dv,libcudart),Void,(GLenum,Ptr{GLdouble}),target,v)
end

function glMultiTexCoord4f(target,s,t,r,q)
    ccall((:glMultiTexCoord4f,libcudart),Void,(GLenum,GLfloat,GLfloat,GLfloat,GLfloat),target,s,t,r,q)
end

function glMultiTexCoord4fv(target,v)
    ccall((:glMultiTexCoord4fv,libcudart),Void,(GLenum,Ptr{GLfloat}),target,v)
end

function glMultiTexCoord4i(target,s,t,r,q)
    ccall((:glMultiTexCoord4i,libcudart),Void,(GLenum,GLint,GLint,GLint,GLint),target,s,t,r,q)
end

function glMultiTexCoord4iv(target,v)
    ccall((:glMultiTexCoord4iv,libcudart),Void,(GLenum,Ptr{GLint}),target,v)
end

function glMultiTexCoord4s(target,s,t,r,q)
    ccall((:glMultiTexCoord4s,libcudart),Void,(GLenum,GLshort,GLshort,GLshort,GLshort),target,s,t,r,q)
end

function glMultiTexCoord4sv(target,v)
    ccall((:glMultiTexCoord4sv,libcudart),Void,(GLenum,Ptr{GLshort}),target,v)
end

function glLoadTransposeMatrixd(m)
    ccall((:glLoadTransposeMatrixd,libcudart),Void,(NTuple{16,GLdouble},),m)
end

function glLoadTransposeMatrixf(m)
    ccall((:glLoadTransposeMatrixf,libcudart),Void,(NTuple{16,GLfloat},),m)
end

function glMultTransposeMatrixd(m)
    ccall((:glMultTransposeMatrixd,libcudart),Void,(NTuple{16,GLdouble},),m)
end

function glMultTransposeMatrixf(m)
    ccall((:glMultTransposeMatrixf,libcudart),Void,(NTuple{16,GLfloat},),m)
end

function glSampleCoverage(value,invert)
    ccall((:glSampleCoverage,libcudart),Void,(GLclampf,GLboolean),value,invert)
end

function glActiveTextureARB(texture)
    ccall((:glActiveTextureARB,libcudart),Void,(GLenum,),texture)
end

function glClientActiveTextureARB(texture)
    ccall((:glClientActiveTextureARB,libcudart),Void,(GLenum,),texture)
end

function glMultiTexCoord1dARB(target,s)
    ccall((:glMultiTexCoord1dARB,libcudart),Void,(GLenum,GLdouble),target,s)
end

function glMultiTexCoord1dvARB(target,v)
    ccall((:glMultiTexCoord1dvARB,libcudart),Void,(GLenum,Ptr{GLdouble}),target,v)
end

function glMultiTexCoord1fARB(target,s)
    ccall((:glMultiTexCoord1fARB,libcudart),Void,(GLenum,GLfloat),target,s)
end

function glMultiTexCoord1fvARB(target,v)
    ccall((:glMultiTexCoord1fvARB,libcudart),Void,(GLenum,Ptr{GLfloat}),target,v)
end

function glMultiTexCoord1iARB(target,s)
    ccall((:glMultiTexCoord1iARB,libcudart),Void,(GLenum,GLint),target,s)
end

function glMultiTexCoord1ivARB(target,v)
    ccall((:glMultiTexCoord1ivARB,libcudart),Void,(GLenum,Ptr{GLint}),target,v)
end

function glMultiTexCoord1sARB(target,s)
    ccall((:glMultiTexCoord1sARB,libcudart),Void,(GLenum,GLshort),target,s)
end

function glMultiTexCoord1svARB(target,v)
    ccall((:glMultiTexCoord1svARB,libcudart),Void,(GLenum,Ptr{GLshort}),target,v)
end

function glMultiTexCoord2dARB(target,s,t)
    ccall((:glMultiTexCoord2dARB,libcudart),Void,(GLenum,GLdouble,GLdouble),target,s,t)
end

function glMultiTexCoord2dvARB(target,v)
    ccall((:glMultiTexCoord2dvARB,libcudart),Void,(GLenum,Ptr{GLdouble}),target,v)
end

function glMultiTexCoord2fARB(target,s,t)
    ccall((:glMultiTexCoord2fARB,libcudart),Void,(GLenum,GLfloat,GLfloat),target,s,t)
end

function glMultiTexCoord2fvARB(target,v)
    ccall((:glMultiTexCoord2fvARB,libcudart),Void,(GLenum,Ptr{GLfloat}),target,v)
end

function glMultiTexCoord2iARB(target,s,t)
    ccall((:glMultiTexCoord2iARB,libcudart),Void,(GLenum,GLint,GLint),target,s,t)
end

function glMultiTexCoord2ivARB(target,v)
    ccall((:glMultiTexCoord2ivARB,libcudart),Void,(GLenum,Ptr{GLint}),target,v)
end

function glMultiTexCoord2sARB(target,s,t)
    ccall((:glMultiTexCoord2sARB,libcudart),Void,(GLenum,GLshort,GLshort),target,s,t)
end

function glMultiTexCoord2svARB(target,v)
    ccall((:glMultiTexCoord2svARB,libcudart),Void,(GLenum,Ptr{GLshort}),target,v)
end

function glMultiTexCoord3dARB(target,s,t,r)
    ccall((:glMultiTexCoord3dARB,libcudart),Void,(GLenum,GLdouble,GLdouble,GLdouble),target,s,t,r)
end

function glMultiTexCoord3dvARB(target,v)
    ccall((:glMultiTexCoord3dvARB,libcudart),Void,(GLenum,Ptr{GLdouble}),target,v)
end

function glMultiTexCoord3fARB(target,s,t,r)
    ccall((:glMultiTexCoord3fARB,libcudart),Void,(GLenum,GLfloat,GLfloat,GLfloat),target,s,t,r)
end

function glMultiTexCoord3fvARB(target,v)
    ccall((:glMultiTexCoord3fvARB,libcudart),Void,(GLenum,Ptr{GLfloat}),target,v)
end

function glMultiTexCoord3iARB(target,s,t,r)
    ccall((:glMultiTexCoord3iARB,libcudart),Void,(GLenum,GLint,GLint,GLint),target,s,t,r)
end

function glMultiTexCoord3ivARB(target,v)
    ccall((:glMultiTexCoord3ivARB,libcudart),Void,(GLenum,Ptr{GLint}),target,v)
end

function glMultiTexCoord3sARB(target,s,t,r)
    ccall((:glMultiTexCoord3sARB,libcudart),Void,(GLenum,GLshort,GLshort,GLshort),target,s,t,r)
end

function glMultiTexCoord3svARB(target,v)
    ccall((:glMultiTexCoord3svARB,libcudart),Void,(GLenum,Ptr{GLshort}),target,v)
end

function glMultiTexCoord4dARB(target,s,t,r,q)
    ccall((:glMultiTexCoord4dARB,libcudart),Void,(GLenum,GLdouble,GLdouble,GLdouble,GLdouble),target,s,t,r,q)
end

function glMultiTexCoord4dvARB(target,v)
    ccall((:glMultiTexCoord4dvARB,libcudart),Void,(GLenum,Ptr{GLdouble}),target,v)
end

function glMultiTexCoord4fARB(target,s,t,r,q)
    ccall((:glMultiTexCoord4fARB,libcudart),Void,(GLenum,GLfloat,GLfloat,GLfloat,GLfloat),target,s,t,r,q)
end

function glMultiTexCoord4fvARB(target,v)
    ccall((:glMultiTexCoord4fvARB,libcudart),Void,(GLenum,Ptr{GLfloat}),target,v)
end

function glMultiTexCoord4iARB(target,s,t,r,q)
    ccall((:glMultiTexCoord4iARB,libcudart),Void,(GLenum,GLint,GLint,GLint,GLint),target,s,t,r,q)
end

function glMultiTexCoord4ivARB(target,v)
    ccall((:glMultiTexCoord4ivARB,libcudart),Void,(GLenum,Ptr{GLint}),target,v)
end

function glMultiTexCoord4sARB(target,s,t,r,q)
    ccall((:glMultiTexCoord4sARB,libcudart),Void,(GLenum,GLshort,GLshort,GLshort,GLshort),target,s,t,r,q)
end

function glMultiTexCoord4svARB(target,v)
    ccall((:glMultiTexCoord4svARB,libcudart),Void,(GLenum,Ptr{GLshort}),target,v)
end

function imaxabs(__n)
    ccall((:imaxabs,libcudart),intmax_t,(intmax_t,),__n)
end

function imaxdiv(__numer,__denom)
    ccall((:imaxdiv,libcudart),imaxdiv_t,(intmax_t,intmax_t),__numer,__denom)
end

function strtoimax(__nptr,__endptr,__base)
    ccall((:strtoimax,libcudart),intmax_t,(Cstring,Ptr{Cstring},Cint),__nptr,__endptr,__base)
end

function strtoumax(__nptr,__endptr,__base)
    ccall((:strtoumax,libcudart),uintmax_t,(Cstring,Ptr{Cstring},Cint),__nptr,__endptr,__base)
end

function wcstoimax(__nptr,__endptr,__base)
    ccall((:wcstoimax,libcudart),intmax_t,(Ptr{__gwchar_t},Ptr{Ptr{__gwchar_t}},Cint),__nptr,__endptr,__base)
end

function wcstoumax(__nptr,__endptr,__base)
    ccall((:wcstoumax,libcudart),uintmax_t,(Ptr{__gwchar_t},Ptr{Ptr{__gwchar_t}},Cint),__nptr,__endptr,__base)
end

function glBlendEquationSeparateATI(modeRGB,modeA)
    ccall((:glBlendEquationSeparateATI,libcudart),Void,(GLenum,GLenum),modeRGB,modeA)
end

function cudaGLGetDevices(pCudaDeviceCount,pCudaDevices,cudaDeviceCount,deviceList)
    checkerror(ccall((:cudaGLGetDevices,libcudart),cudaError_t,(Ptr{UInt32},Ptr{Cint},UInt32,cudaGLDeviceList),pCudaDeviceCount,pCudaDevices,cudaDeviceCount,deviceList))
end

function cudaGraphicsGLRegisterImage(resource,image,target,flags)
    checkerror(ccall((:cudaGraphicsGLRegisterImage,libcudart),cudaError_t,(Ptr{Ptr{cudaGraphicsResource}},GLuint,GLenum,UInt32),resource,image,target,flags))
end

function cudaGraphicsGLRegisterBuffer(resource,buffer,flags)
    checkerror(ccall((:cudaGraphicsGLRegisterBuffer,libcudart),cudaError_t,(Ptr{Ptr{cudaGraphicsResource}},GLuint,UInt32),resource,buffer,flags))
end

function cudaGLSetGLDevice(device)
    checkerror(ccall((:cudaGLSetGLDevice,libcudart),cudaError_t,(Cint,),device))
end

function cudaGLRegisterBufferObject(bufObj)
    checkerror(ccall((:cudaGLRegisterBufferObject,libcudart),cudaError_t,(GLuint,),bufObj))
end

function cudaGLMapBufferObject(devPtr,bufObj)
    checkerror(ccall((:cudaGLMapBufferObject,libcudart),cudaError_t,(Ptr{Ptr{Void}},GLuint),devPtr,bufObj))
end

function cudaGLUnmapBufferObject(bufObj)
    checkerror(ccall((:cudaGLUnmapBufferObject,libcudart),cudaError_t,(GLuint,),bufObj))
end

function cudaGLUnregisterBufferObject(bufObj)
    checkerror(ccall((:cudaGLUnregisterBufferObject,libcudart),cudaError_t,(GLuint,),bufObj))
end

function cudaGLSetBufferObjectMapFlags(bufObj,flags)
    checkerror(ccall((:cudaGLSetBufferObjectMapFlags,libcudart),cudaError_t,(GLuint,UInt32),bufObj,flags))
end

function cudaGLMapBufferObjectAsync(devPtr,bufObj,stream)
    checkerror(ccall((:cudaGLMapBufferObjectAsync,libcudart),cudaError_t,(Ptr{Ptr{Void}},GLuint,cudaStream_t),devPtr,bufObj,stream))
end

function cudaGLUnmapBufferObjectAsync(bufObj,stream)
    checkerror(ccall((:cudaGLUnmapBufferObjectAsync,libcudart),cudaError_t,(GLuint,cudaStream_t),bufObj,stream))
end
