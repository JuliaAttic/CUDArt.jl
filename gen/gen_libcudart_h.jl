const cudaHostAllocDefault = 0x00
const cudaHostAllocPortable = 0x01
const cudaHostAllocMapped = 0x02
const cudaHostAllocWriteCombined = 0x04
const cudaHostRegisterDefault = 0x00
const cudaHostRegisterPortable = 0x01
const cudaHostRegisterMapped = 0x02
const cudaPeerAccessDefault = 0x00
const cudaStreamDefault = 0x00
const cudaStreamNonBlocking = 0x01
const cudaEventDefault = 0x00
const cudaEventBlockingSync = 0x01
const cudaEventDisableTiming = 0x02
const cudaEventInterprocess = 0x04
const cudaDeviceScheduleAuto = 0x00
const cudaDeviceScheduleSpin = 0x01
const cudaDeviceScheduleYield = 0x02
const cudaDeviceScheduleBlockingSync = 0x04
const cudaDeviceBlockingSync = 0x04
const cudaDeviceScheduleMask = 0x07
const cudaDeviceMapHost = 0x08
const cudaDeviceLmemResizeToMax = 0x10
const cudaDeviceMask = 0x1f
const cudaArrayDefault = 0x00
const cudaArrayLayered = 0x01
const cudaArraySurfaceLoadStore = 0x02
const cudaArrayCubemap = 0x04
const cudaArrayTextureGather = 0x08
const cudaIpcMemLazyEnablePeerAccess = 0x01
const CUDA_IPC_HANDLE_SIZE = 64
const cudaSurfaceType1D = 0x01
const cudaSurfaceType2D = 0x02
const cudaSurfaceType3D = 0x03
const cudaSurfaceTypeCubemap = 0x0C
const cudaSurfaceType1DLayered = 0xF1
const cudaSurfaceType2DLayered = 0xF2
const cudaSurfaceTypeCubemapLayered = 0xFC
const cudaTextureType1D = 0x01
const cudaTextureType2D = 0x02
const cudaTextureType3D = 0x03
const cudaTextureTypeCubemap = 0x0C
const cudaTextureType1DLayered = 0xF1
const cudaTextureType2DLayered = 0xF2
const cudaTextureTypeCubemapLayered = 0xFC
# begin enum cudaRoundMode
typealias cudaRoundMode Uint32
const cudaRoundNearest = 0
const cudaRoundZero = 1
const cudaRoundPosInf = 2
const cudaRoundMinInf = 3
# end enum cudaRoundMode
typealias ptrdiff_t Clong
typealias size_t Culong
typealias wchar_t Cint
# begin enum cudaError
typealias cudaError Uint32
const cudaSuccess = 0
const cudaErrorMissingConfiguration = 1
const cudaErrorMemoryAllocation = 2
const cudaErrorInitializationError = 3
const cudaErrorLaunchFailure = 4
const cudaErrorPriorLaunchFailure = 5
const cudaErrorLaunchTimeout = 6
const cudaErrorLaunchOutOfResources = 7
const cudaErrorInvalidDeviceFunction = 8
const cudaErrorInvalidConfiguration = 9
const cudaErrorInvalidDevice = 10
const cudaErrorInvalidValue = 11
const cudaErrorInvalidPitchValue = 12
const cudaErrorInvalidSymbol = 13
const cudaErrorMapBufferObjectFailed = 14
const cudaErrorUnmapBufferObjectFailed = 15
const cudaErrorInvalidHostPointer = 16
const cudaErrorInvalidDevicePointer = 17
const cudaErrorInvalidTexture = 18
const cudaErrorInvalidTextureBinding = 19
const cudaErrorInvalidChannelDescriptor = 20
const cudaErrorInvalidMemcpyDirection = 21
const cudaErrorAddressOfConstant = 22
const cudaErrorTextureFetchFailed = 23
const cudaErrorTextureNotBound = 24
const cudaErrorSynchronizationError = 25
const cudaErrorInvalidFilterSetting = 26
const cudaErrorInvalidNormSetting = 27
const cudaErrorMixedDeviceExecution = 28
const cudaErrorCudartUnloading = 29
const cudaErrorUnknown = 30
const cudaErrorNotYetImplemented = 31
const cudaErrorMemoryValueTooLarge = 32
const cudaErrorInvalidResourceHandle = 33
const cudaErrorNotReady = 34
const cudaErrorInsufficientDriver = 35
const cudaErrorSetOnActiveProcess = 36
const cudaErrorInvalidSurface = 37
const cudaErrorNoDevice = 38
const cudaErrorECCUncorrectable = 39
const cudaErrorSharedObjectSymbolNotFound = 40
const cudaErrorSharedObjectInitFailed = 41
const cudaErrorUnsupportedLimit = 42
const cudaErrorDuplicateVariableName = 43
const cudaErrorDuplicateTextureName = 44
const cudaErrorDuplicateSurfaceName = 45
const cudaErrorDevicesUnavailable = 46
const cudaErrorInvalidKernelImage = 47
const cudaErrorNoKernelImageForDevice = 48
const cudaErrorIncompatibleDriverContext = 49
const cudaErrorPeerAccessAlreadyEnabled = 50
const cudaErrorPeerAccessNotEnabled = 51
const cudaErrorDeviceAlreadyInUse = 54
const cudaErrorProfilerDisabled = 55
const cudaErrorProfilerNotInitialized = 56
const cudaErrorProfilerAlreadyStarted = 57
const cudaErrorProfilerAlreadyStopped = 58
const cudaErrorAssert = 59
const cudaErrorTooManyPeers = 60
const cudaErrorHostMemoryAlreadyRegistered = 61
const cudaErrorHostMemoryNotRegistered = 62
const cudaErrorOperatingSystem = 63
const cudaErrorPeerAccessUnsupported = 64
const cudaErrorLaunchMaxDepthExceeded = 65
const cudaErrorLaunchFileScopedTex = 66
const cudaErrorLaunchFileScopedSurf = 67
const cudaErrorSyncDepthExceeded = 68
const cudaErrorLaunchPendingCountExceeded = 69
const cudaErrorNotPermitted = 70
const cudaErrorNotSupported = 71
const cudaErrorStartupFailure = 127
const cudaErrorApiFailureBase = 10000
# end enum cudaError
# begin enum cudaChannelFormatKind
typealias cudaChannelFormatKind Uint32
const cudaChannelFormatKindSigned = 0
const cudaChannelFormatKindUnsigned = 1
const cudaChannelFormatKindFloat = 2
const cudaChannelFormatKindNone = 3
# end enum cudaChannelFormatKind
type cudaChannelFormatDesc
    x::Cint
    y::Cint
    z::Cint
    w::Cint
    f::cudaChannelFormatKind
end
typealias cudaArray_t Ptr{cudaArray}
typealias cudaArray_const_t Ptr{cudaArray}
typealias cudaMipmappedArray_t Ptr{cudaMipmappedArray}
typealias cudaMipmappedArray_const_t Ptr{cudaMipmappedArray}
# begin enum cudaMemoryType
typealias cudaMemoryType Uint32
const cudaMemoryTypeHost = 1
const cudaMemoryTypeDevice = 2
# end enum cudaMemoryType
# begin enum cudaMemcpyKind
typealias cudaMemcpyKind Uint32
const cudaMemcpyHostToHost = 0
const cudaMemcpyHostToDevice = 1
const cudaMemcpyDeviceToHost = 2
const cudaMemcpyDeviceToDevice = 3
const cudaMemcpyDefault = 4
# end enum cudaMemcpyKind
immutable cudaPitchedPtr
    ptr::Ptr{Void}
    pitch::Csize_t
    xsize::Csize_t
    ysize::Csize_t
end
immutable cudaExtent
    width::Csize_t
    height::Csize_t
    depth::Csize_t
end
immutable cudaPos
    x::Csize_t
    y::Csize_t
    z::Csize_t
end
immutable cudaMemcpy3DParms
    srcArray::cudaArray_t
    srcPos::cudaPos
    srcPtr::cudaPitchedPtr
    dstArray::cudaArray_t
    dstPos::cudaPos
    dstPtr::cudaPitchedPtr
    extent::cudaExtent
    kind::cudaMemcpyKind
end
type cudaMemcpy3DPeerParms
    srcArray::cudaArray_t
    srcPos::cudaPos
    srcPtr::cudaPitchedPtr
    srcDevice::Cint
    dstArray::cudaArray_t
    dstPos::cudaPos
    dstPtr::cudaPitchedPtr
    dstDevice::Cint
    extent::cudaExtent
end
# begin enum cudaGraphicsRegisterFlags
typealias cudaGraphicsRegisterFlags Uint32
const cudaGraphicsRegisterFlagsNone = 0
const cudaGraphicsRegisterFlagsReadOnly = 1
const cudaGraphicsRegisterFlagsWriteDiscard = 2
const cudaGraphicsRegisterFlagsSurfaceLoadStore = 4
const cudaGraphicsRegisterFlagsTextureGather = 8
# end enum cudaGraphicsRegisterFlags
# begin enum cudaGraphicsMapFlags
typealias cudaGraphicsMapFlags Uint32
const cudaGraphicsMapFlagsNone = 0
const cudaGraphicsMapFlagsReadOnly = 1
const cudaGraphicsMapFlagsWriteDiscard = 2
# end enum cudaGraphicsMapFlags
# begin enum cudaGraphicsCubeFace
typealias cudaGraphicsCubeFace Uint32
const cudaGraphicsCubeFacePositiveX = 0
const cudaGraphicsCubeFaceNegativeX = 1
const cudaGraphicsCubeFacePositiveY = 2
const cudaGraphicsCubeFaceNegativeY = 3
const cudaGraphicsCubeFacePositiveZ = 4
const cudaGraphicsCubeFaceNegativeZ = 5
# end enum cudaGraphicsCubeFace
# begin enum cudaResourceType
typealias cudaResourceType Uint32
const cudaResourceTypeArray = 0
const cudaResourceTypeMipmappedArray = 1
const cudaResourceTypeLinear = 2
const cudaResourceTypePitch2D = 3
# end enum cudaResourceType
# begin enum cudaResourceViewFormat
typealias cudaResourceViewFormat Uint32
const cudaResViewFormatNone = 0
const cudaResViewFormatUnsignedChar1 = 1
const cudaResViewFormatUnsignedChar2 = 2
const cudaResViewFormatUnsignedChar4 = 3
const cudaResViewFormatSignedChar1 = 4
const cudaResViewFormatSignedChar2 = 5
const cudaResViewFormatSignedChar4 = 6
const cudaResViewFormatUnsignedShort1 = 7
const cudaResViewFormatUnsignedShort2 = 8
const cudaResViewFormatUnsignedShort4 = 9
const cudaResViewFormatSignedShort1 = 10
const cudaResViewFormatSignedShort2 = 11
const cudaResViewFormatSignedShort4 = 12
const cudaResViewFormatUnsignedInt1 = 13
const cudaResViewFormatUnsignedInt2 = 14
const cudaResViewFormatUnsignedInt4 = 15
const cudaResViewFormatSignedInt1 = 16
const cudaResViewFormatSignedInt2 = 17
const cudaResViewFormatSignedInt4 = 18
const cudaResViewFormatHalf1 = 19
const cudaResViewFormatHalf2 = 20
const cudaResViewFormatHalf4 = 21
const cudaResViewFormatFloat1 = 22
const cudaResViewFormatFloat2 = 23
const cudaResViewFormatFloat4 = 24
const cudaResViewFormatUnsignedBlockCompressed1 = 25
const cudaResViewFormatUnsignedBlockCompressed2 = 26
const cudaResViewFormatUnsignedBlockCompressed3 = 27
const cudaResViewFormatUnsignedBlockCompressed4 = 28
const cudaResViewFormatSignedBlockCompressed4 = 29
const cudaResViewFormatUnsignedBlockCompressed5 = 30
const cudaResViewFormatSignedBlockCompressed5 = 31
const cudaResViewFormatUnsignedBlockCompressed6H = 32
const cudaResViewFormatSignedBlockCompressed6H = 33
const cudaResViewFormatUnsignedBlockCompressed7 = 34
# end enum cudaResourceViewFormat
type cudaResourceViewDesc
    format::cudaResourceViewFormat
    width::Csize_t
    height::Csize_t
    depth::Csize_t
    firstMipmapLevel::Uint32
    lastMipmapLevel::Uint32
    firstLayer::Uint32
    lastLayer::Uint32
end
type cudaPointerAttributes
    memoryType::cudaMemoryType
    device::Cint
    devicePointer::Ptr{Void}
    hostPointer::Ptr{Void}
end
type cudaFuncAttributes
    sharedSizeBytes::Csize_t
    constSizeBytes::Csize_t
    localSizeBytes::Csize_t
    maxThreadsPerBlock::Cint
    numRegs::Cint
    ptxVersion::Cint
    binaryVersion::Cint
end
# begin enum cudaFuncCache
typealias cudaFuncCache Uint32
const cudaFuncCachePreferNone = 0
const cudaFuncCachePreferShared = 1
const cudaFuncCachePreferL1 = 2
const cudaFuncCachePreferEqual = 3
# end enum cudaFuncCache
# begin enum cudaSharedMemConfig
typealias cudaSharedMemConfig Uint32
const cudaSharedMemBankSizeDefault = 0
const cudaSharedMemBankSizeFourByte = 1
const cudaSharedMemBankSizeEightByte = 2
# end enum cudaSharedMemConfig
# begin enum cudaComputeMode
typealias cudaComputeMode Uint32
const cudaComputeModeDefault = 0
const cudaComputeModeExclusive = 1
const cudaComputeModeProhibited = 2
const cudaComputeModeExclusiveProcess = 3
# end enum cudaComputeMode
# begin enum cudaLimit
typealias cudaLimit Uint32
const cudaLimitStackSize = 0
const cudaLimitPrintfFifoSize = 1
const cudaLimitMallocHeapSize = 2
const cudaLimitDevRuntimeSyncDepth = 3
const cudaLimitDevRuntimePendingLaunchCount = 4
# end enum cudaLimit
# begin enum cudaOutputMode
typealias cudaOutputMode Uint32
const cudaKeyValuePair = 0
const cudaCSV = 1
# end enum cudaOutputMode
# begin enum cudaDeviceAttr
typealias cudaDeviceAttr Uint32
const cudaDevAttrMaxThreadsPerBlock = 1
const cudaDevAttrMaxBlockDimX = 2
const cudaDevAttrMaxBlockDimY = 3
const cudaDevAttrMaxBlockDimZ = 4
const cudaDevAttrMaxGridDimX = 5
const cudaDevAttrMaxGridDimY = 6
const cudaDevAttrMaxGridDimZ = 7
const cudaDevAttrMaxSharedMemoryPerBlock = 8
const cudaDevAttrTotalConstantMemory = 9
const cudaDevAttrWarpSize = 10
const cudaDevAttrMaxPitch = 11
const cudaDevAttrMaxRegistersPerBlock = 12
const cudaDevAttrClockRate = 13
const cudaDevAttrTextureAlignment = 14
const cudaDevAttrGpuOverlap = 15
const cudaDevAttrMultiProcessorCount = 16
const cudaDevAttrKernelExecTimeout = 17
const cudaDevAttrIntegrated = 18
const cudaDevAttrCanMapHostMemory = 19
const cudaDevAttrComputeMode = 20
const cudaDevAttrMaxTexture1DWidth = 21
const cudaDevAttrMaxTexture2DWidth = 22
const cudaDevAttrMaxTexture2DHeight = 23
const cudaDevAttrMaxTexture3DWidth = 24
const cudaDevAttrMaxTexture3DHeight = 25
const cudaDevAttrMaxTexture3DDepth = 26
const cudaDevAttrMaxTexture2DLayeredWidth = 27
const cudaDevAttrMaxTexture2DLayeredHeight = 28
const cudaDevAttrMaxTexture2DLayeredLayers = 29
const cudaDevAttrSurfaceAlignment = 30
const cudaDevAttrConcurrentKernels = 31
const cudaDevAttrEccEnabled = 32
const cudaDevAttrPciBusId = 33
const cudaDevAttrPciDeviceId = 34
const cudaDevAttrTccDriver = 35
const cudaDevAttrMemoryClockRate = 36
const cudaDevAttrGlobalMemoryBusWidth = 37
const cudaDevAttrL2CacheSize = 38
const cudaDevAttrMaxThreadsPerMultiProcessor = 39
const cudaDevAttrAsyncEngineCount = 40
const cudaDevAttrUnifiedAddressing = 41
const cudaDevAttrMaxTexture1DLayeredWidth = 42
const cudaDevAttrMaxTexture1DLayeredLayers = 43
const cudaDevAttrMaxTexture2DGatherWidth = 45
const cudaDevAttrMaxTexture2DGatherHeight = 46
const cudaDevAttrMaxTexture3DWidthAlt = 47
const cudaDevAttrMaxTexture3DHeightAlt = 48
const cudaDevAttrMaxTexture3DDepthAlt = 49
const cudaDevAttrPciDomainId = 50
const cudaDevAttrTexturePitchAlignment = 51
const cudaDevAttrMaxTextureCubemapWidth = 52
const cudaDevAttrMaxTextureCubemapLayeredWidth = 53
const cudaDevAttrMaxTextureCubemapLayeredLayers = 54
const cudaDevAttrMaxSurface1DWidth = 55
const cudaDevAttrMaxSurface2DWidth = 56
const cudaDevAttrMaxSurface2DHeight = 57
const cudaDevAttrMaxSurface3DWidth = 58
const cudaDevAttrMaxSurface3DHeight = 59
const cudaDevAttrMaxSurface3DDepth = 60
const cudaDevAttrMaxSurface1DLayeredWidth = 61
const cudaDevAttrMaxSurface1DLayeredLayers = 62
const cudaDevAttrMaxSurface2DLayeredWidth = 63
const cudaDevAttrMaxSurface2DLayeredHeight = 64
const cudaDevAttrMaxSurface2DLayeredLayers = 65
const cudaDevAttrMaxSurfaceCubemapWidth = 66
const cudaDevAttrMaxSurfaceCubemapLayeredWidth = 67
const cudaDevAttrMaxSurfaceCubemapLayeredLayers = 68
const cudaDevAttrMaxTexture1DLinearWidth = 69
const cudaDevAttrMaxTexture2DLinearWidth = 70
const cudaDevAttrMaxTexture2DLinearHeight = 71
const cudaDevAttrMaxTexture2DLinearPitch = 72
const cudaDevAttrMaxTexture2DMipmappedWidth = 73
const cudaDevAttrMaxTexture2DMipmappedHeight = 74
const cudaDevAttrComputeCapabilityMajor = 75
const cudaDevAttrComputeCapabilityMinor = 76
const cudaDevAttrMaxTexture1DMipmappedWidth = 77
# end enum cudaDeviceAttr
immutable Array_256_Uint8
    d1::Uint8
    d2::Uint8
    d3::Uint8
    d4::Uint8
    d5::Uint8
    d6::Uint8
    d7::Uint8
    d8::Uint8
    d9::Uint8
    d10::Uint8
    d11::Uint8
    d12::Uint8
    d13::Uint8
    d14::Uint8
    d15::Uint8
    d16::Uint8
    d17::Uint8
    d18::Uint8
    d19::Uint8
    d20::Uint8
    d21::Uint8
    d22::Uint8
    d23::Uint8
    d24::Uint8
    d25::Uint8
    d26::Uint8
    d27::Uint8
    d28::Uint8
    d29::Uint8
    d30::Uint8
    d31::Uint8
    d32::Uint8
    d33::Uint8
    d34::Uint8
    d35::Uint8
    d36::Uint8
    d37::Uint8
    d38::Uint8
    d39::Uint8
    d40::Uint8
    d41::Uint8
    d42::Uint8
    d43::Uint8
    d44::Uint8
    d45::Uint8
    d46::Uint8
    d47::Uint8
    d48::Uint8
    d49::Uint8
    d50::Uint8
    d51::Uint8
    d52::Uint8
    d53::Uint8
    d54::Uint8
    d55::Uint8
    d56::Uint8
    d57::Uint8
    d58::Uint8
    d59::Uint8
    d60::Uint8
    d61::Uint8
    d62::Uint8
    d63::Uint8
    d64::Uint8
    d65::Uint8
    d66::Uint8
    d67::Uint8
    d68::Uint8
    d69::Uint8
    d70::Uint8
    d71::Uint8
    d72::Uint8
    d73::Uint8
    d74::Uint8
    d75::Uint8
    d76::Uint8
    d77::Uint8
    d78::Uint8
    d79::Uint8
    d80::Uint8
    d81::Uint8
    d82::Uint8
    d83::Uint8
    d84::Uint8
    d85::Uint8
    d86::Uint8
    d87::Uint8
    d88::Uint8
    d89::Uint8
    d90::Uint8
    d91::Uint8
    d92::Uint8
    d93::Uint8
    d94::Uint8
    d95::Uint8
    d96::Uint8
    d97::Uint8
    d98::Uint8
    d99::Uint8
    d100::Uint8
    d101::Uint8
    d102::Uint8
    d103::Uint8
    d104::Uint8
    d105::Uint8
    d106::Uint8
    d107::Uint8
    d108::Uint8
    d109::Uint8
    d110::Uint8
    d111::Uint8
    d112::Uint8
    d113::Uint8
    d114::Uint8
    d115::Uint8
    d116::Uint8
    d117::Uint8
    d118::Uint8
    d119::Uint8
    d120::Uint8
    d121::Uint8
    d122::Uint8
    d123::Uint8
    d124::Uint8
    d125::Uint8
    d126::Uint8
    d127::Uint8
    d128::Uint8
    d129::Uint8
    d130::Uint8
    d131::Uint8
    d132::Uint8
    d133::Uint8
    d134::Uint8
    d135::Uint8
    d136::Uint8
    d137::Uint8
    d138::Uint8
    d139::Uint8
    d140::Uint8
    d141::Uint8
    d142::Uint8
    d143::Uint8
    d144::Uint8
    d145::Uint8
    d146::Uint8
    d147::Uint8
    d148::Uint8
    d149::Uint8
    d150::Uint8
    d151::Uint8
    d152::Uint8
    d153::Uint8
    d154::Uint8
    d155::Uint8
    d156::Uint8
    d157::Uint8
    d158::Uint8
    d159::Uint8
    d160::Uint8
    d161::Uint8
    d162::Uint8
    d163::Uint8
    d164::Uint8
    d165::Uint8
    d166::Uint8
    d167::Uint8
    d168::Uint8
    d169::Uint8
    d170::Uint8
    d171::Uint8
    d172::Uint8
    d173::Uint8
    d174::Uint8
    d175::Uint8
    d176::Uint8
    d177::Uint8
    d178::Uint8
    d179::Uint8
    d180::Uint8
    d181::Uint8
    d182::Uint8
    d183::Uint8
    d184::Uint8
    d185::Uint8
    d186::Uint8
    d187::Uint8
    d188::Uint8
    d189::Uint8
    d190::Uint8
    d191::Uint8
    d192::Uint8
    d193::Uint8
    d194::Uint8
    d195::Uint8
    d196::Uint8
    d197::Uint8
    d198::Uint8
    d199::Uint8
    d200::Uint8
    d201::Uint8
    d202::Uint8
    d203::Uint8
    d204::Uint8
    d205::Uint8
    d206::Uint8
    d207::Uint8
    d208::Uint8
    d209::Uint8
    d210::Uint8
    d211::Uint8
    d212::Uint8
    d213::Uint8
    d214::Uint8
    d215::Uint8
    d216::Uint8
    d217::Uint8
    d218::Uint8
    d219::Uint8
    d220::Uint8
    d221::Uint8
    d222::Uint8
    d223::Uint8
    d224::Uint8
    d225::Uint8
    d226::Uint8
    d227::Uint8
    d228::Uint8
    d229::Uint8
    d230::Uint8
    d231::Uint8
    d232::Uint8
    d233::Uint8
    d234::Uint8
    d235::Uint8
    d236::Uint8
    d237::Uint8
    d238::Uint8
    d239::Uint8
    d240::Uint8
    d241::Uint8
    d242::Uint8
    d243::Uint8
    d244::Uint8
    d245::Uint8
    d246::Uint8
    d247::Uint8
    d248::Uint8
    d249::Uint8
    d250::Uint8
    d251::Uint8
    d252::Uint8
    d253::Uint8
    d254::Uint8
    d255::Uint8
    d256::Uint8
end
immutable Array_3_Cint
    d1::Cint
    d2::Cint
    d3::Cint
end
immutable Array_2_Cint
    d1::Cint
    d2::Cint
end
immutable cudaDeviceProp
    name::Array_256_Uint8
    totalGlobalMem::Csize_t
    sharedMemPerBlock::Csize_t
    regsPerBlock::Cint
    warpSize::Cint
    memPitch::Csize_t
    maxThreadsPerBlock::Cint
    maxThreadsDim::Array_3_Cint
    maxGridSize::Array_3_Cint
    clockRate::Cint
    totalConstMem::Csize_t
    major::Cint
    minor::Cint
    textureAlignment::Csize_t
    texturePitchAlignment::Csize_t
    deviceOverlap::Cint
    multiProcessorCount::Cint
    kernelExecTimeoutEnabled::Cint
    integrated::Cint
    canMapHostMemory::Cint
    computeMode::Cint
    maxTexture1D::Cint
    maxTexture1DMipmap::Cint
    maxTexture1DLinear::Cint
    maxTexture2D::Array_2_Cint
    maxTexture2DMipmap::Array_2_Cint
    maxTexture2DLinear::Array_3_Cint
    maxTexture2DGather::Array_2_Cint
    maxTexture3D::Array_3_Cint
    maxTextureCubemap::Cint
    maxTexture1DLayered::Array_2_Cint
    maxTexture2DLayered::Array_3_Cint
    maxTextureCubemapLayered::Array_2_Cint
    maxSurface1D::Cint
    maxSurface2D::Array_2_Cint
    maxSurface3D::Array_3_Cint
    maxSurface1DLayered::Array_2_Cint
    maxSurface2DLayered::Array_3_Cint
    maxSurfaceCubemap::Cint
    maxSurfaceCubemapLayered::Array_2_Cint
    surfaceAlignment::Csize_t
    concurrentKernels::Cint
    ECCEnabled::Cint
    pciBusID::Cint
    pciDeviceID::Cint
    pciDomainID::Cint
    tccDriver::Cint
    asyncEngineCount::Cint
    unifiedAddressing::Cint
    memoryClockRate::Cint
    memoryBusWidth::Cint
    l2CacheSize::Cint
    maxThreadsPerMultiProcessor::Cint
end
immutable Array_64_Uint8
    d1::Uint8
    d2::Uint8
    d3::Uint8
    d4::Uint8
    d5::Uint8
    d6::Uint8
    d7::Uint8
    d8::Uint8
    d9::Uint8
    d10::Uint8
    d11::Uint8
    d12::Uint8
    d13::Uint8
    d14::Uint8
    d15::Uint8
    d16::Uint8
    d17::Uint8
    d18::Uint8
    d19::Uint8
    d20::Uint8
    d21::Uint8
    d22::Uint8
    d23::Uint8
    d24::Uint8
    d25::Uint8
    d26::Uint8
    d27::Uint8
    d28::Uint8
    d29::Uint8
    d30::Uint8
    d31::Uint8
    d32::Uint8
    d33::Uint8
    d34::Uint8
    d35::Uint8
    d36::Uint8
    d37::Uint8
    d38::Uint8
    d39::Uint8
    d40::Uint8
    d41::Uint8
    d42::Uint8
    d43::Uint8
    d44::Uint8
    d45::Uint8
    d46::Uint8
    d47::Uint8
    d48::Uint8
    d49::Uint8
    d50::Uint8
    d51::Uint8
    d52::Uint8
    d53::Uint8
    d54::Uint8
    d55::Uint8
    d56::Uint8
    d57::Uint8
    d58::Uint8
    d59::Uint8
    d60::Uint8
    d61::Uint8
    d62::Uint8
    d63::Uint8
    d64::Uint8
end
type cudaIpcEventHandle_st
    reserved::Array_64_Uint8
end
type cudaIpcEventHandle_t
    reserved::Array_64_Uint8
end
type cudaIpcMemHandle_st
    reserved::Array_64_Uint8
end
type cudaIpcMemHandle_t
    reserved::Array_64_Uint8
end
typealias cudaStream_t Ptr{CUstream_st}
typealias cudaEvent_t Ptr{CUevent_st}
typealias cudaGraphicsResource_t Ptr{cudaGraphicsResource}
# begin enum cudaSurfaceBoundaryMode
typealias cudaSurfaceBoundaryMode Uint32
const cudaBoundaryModeZero = 0
const cudaBoundaryModeClamp = 1
const cudaBoundaryModeTrap = 2
# end enum cudaSurfaceBoundaryMode
# begin enum cudaSurfaceFormatMode
typealias cudaSurfaceFormatMode Uint32
const cudaFormatModeForced = 0
const cudaFormatModeAuto = 1
# end enum cudaSurfaceFormatMode
type surfaceReference
    channelDesc::cudaChannelFormatDesc
end
typealias cudaSurfaceObject_t Culonglong
# begin enum cudaTextureAddressMode
typealias cudaTextureAddressMode Uint32
const cudaAddressModeWrap = 0
const cudaAddressModeClamp = 1
const cudaAddressModeMirror = 2
const cudaAddressModeBorder = 3
# end enum cudaTextureAddressMode
# begin enum cudaTextureFilterMode
typealias cudaTextureFilterMode Uint32
const cudaFilterModePoint = 0
const cudaFilterModeLinear = 1
# end enum cudaTextureFilterMode
# begin enum cudaTextureReadMode
typealias cudaTextureReadMode Uint32
const cudaReadModeElementType = 0
const cudaReadModeNormalizedFloat = 1
# end enum cudaTextureReadMode
immutable Array_3_cudaTextureAddressMode
    d1::cudaTextureAddressMode
    d2::cudaTextureAddressMode
    d3::cudaTextureAddressMode
end
immutable Array_15_Cint
    d1::Cint
    d2::Cint
    d3::Cint
    d4::Cint
    d5::Cint
    d6::Cint
    d7::Cint
    d8::Cint
    d9::Cint
    d10::Cint
    d11::Cint
    d12::Cint
    d13::Cint
    d14::Cint
    d15::Cint
end
type textureReference
    normalized::Cint
    filterMode::cudaTextureFilterMode
    addressMode::Array_3_cudaTextureAddressMode
    channelDesc::cudaChannelFormatDesc
    sRGB::Cint
    maxAnisotropy::Uint32
    mipmapFilterMode::cudaTextureFilterMode
    mipmapLevelBias::Cfloat
    minMipmapLevelClamp::Cfloat
    maxMipmapLevelClamp::Cfloat
    __cudaReserved::Array_15_Cint
end
type cudaTextureDesc
    addressMode::Array_3_cudaTextureAddressMode
    filterMode::cudaTextureFilterMode
    readMode::cudaTextureReadMode
    sRGB::Cint
    normalizedCoords::Cint
    maxAnisotropy::Uint32
    mipmapFilterMode::cudaTextureFilterMode
    mipmapLevelBias::Cfloat
    minMipmapLevelClamp::Cfloat
    maxMipmapLevelClamp::Cfloat
end
typealias cudaTextureObject_t Culonglong
type char1
    x::Uint8
end
type uchar1
    x::Cuchar
end
type char3
    x::Uint8
    y::Uint8
    z::Uint8
end
type uchar3
    x::Cuchar
    y::Cuchar
    z::Cuchar
end
type short1
    x::Int16
end
type ushort1
    x::Uint16
end
type short3
    x::Int16
    y::Int16
    z::Int16
end
type ushort3
    x::Uint16
    y::Uint16
    z::Uint16
end
type int1
    x::Cint
end
type uint1
    x::Uint32
end
type int3
    x::Cint
    y::Cint
    z::Cint
end
type uint3
    x::Uint32
    y::Uint32
    z::Uint32
end
type long1
    x::Clong
end
type ulong1
    x::Culong
end
type long3
    x::Clong
    y::Clong
    z::Clong
end
type ulong3
    x::Culong
    y::Culong
    z::Culong
end
type float1
    x::Cfloat
end
type float3
    x::Cfloat
    y::Cfloat
    z::Cfloat
end
type longlong1
    x::Clonglong
end
type ulonglong1
    x::Culonglong
end
type longlong3
    x::Clonglong
    y::Clonglong
    z::Clonglong
end
type ulonglong3
    x::Culonglong
    y::Culonglong
    z::Culonglong
end
type double1
    x::Cdouble
end
type double3
    x::Cdouble
    y::Cdouble
    z::Cdouble
end
type dim3
    x::Uint32
    y::Uint32
    z::Uint32
end
typealias cudaStreamCallback_t Ptr{Void}
