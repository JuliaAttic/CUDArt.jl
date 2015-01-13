
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
const cudaDeviceMask = 0x01
const cudaArrayDefault = 0x00
const cudaArrayLayered = 0x01
const cudaArraySurfaceLoadStore = 0x02
const cudaArrayCubemap = 0x04
const cudaArrayTextureGather = 0x08
const cudaIpcMemLazyEnablePeerAccess = 0x01
const cudaMemAttachGlobal = 0x01
const cudaMemAttachHost = 0x02
const cudaMemAttachSingle = 0x04

# Skipping MacroDefinition: cudaDevicePropDontCare { { '\0' } , /* char   name[256];               */ 0 , /* size_t totalGlobalMem;          */ 0 , /* size_t sharedMemPerBlock;       */ 0 , /* int    regsPerBlock;            */ 0 , /* int    warpSize;                */ 0 , /* size_t memPitch;                */ 0 , /* int    maxThreadsPerBlock;      */ { 0 , 0 , 0 } , /* int    maxThreadsDim[3];        */ { 0 , 0 , 0 } , /* int    maxGridSize[3];          */ 0 , /* int    clockRate;               */ 0 , /* size_t totalConstMem;           */ - 1 , /* int    major;                   */ - 1 , /* int    minor;                   */ 0 , /* size_t textureAlignment;        */ 0 , /* size_t texturePitchAlignment    */ - 1 , /* int    deviceOverlap;           */ 0 , /* int    multiProcessorCount;     */ 0 , /* int    kernelExecTimeoutEnabled */ 0 , /* int    integrated               */ 0 , /* int    canMapHostMemory         */ 0 , /* int    computeMode              */ 0 , /* int    maxTexture1D             */ 0 , /* int    maxTexture1DMipmap       */ 0 , /* int    maxTexture1DLinear       */ { 0 , 0 } , /* int    maxTexture2D[2]          */ { 0 , 0 } , /* int    maxTexture2DMipmap[2]    */ { 0 , 0 , 0 } , /* int    maxTexture2DLinear[3]    */ { 0 , 0 } , /* int    maxTexture2DGather[2]    */ { 0 , 0 , 0 } , /* int    maxTexture3D[3]          */ { 0 , 0 , 0 } , /* int    maxTexture3DAlt[3]       */ 0 , /* int    maxTextureCubemap        */ { 0 , 0 } , /* int    maxTexture1DLayered[2]   */ { 0 , 0 , 0 } , /* int    maxTexture2DLayered[3]   */ { 0 , 0 } , /* int    maxTextureCubemapLayered[2] */ 0 , /* int    maxSurface1D             */ { 0 , 0 } , /* int    maxSurface2D[2]          */ { 0 , 0 , 0 } , /* int    maxSurface3D[3]          */ { 0 , 0 } , /* int    maxSurface1DLayered[2]   */ { 0 , 0 , 0 } , /* int    maxSurface2DLayered[3]   */ 0 , /* int    maxSurfaceCubemap        */ { 0 , 0 } , /* int    maxSurfaceCubemapLayered[2] */ 0 , /* size_t surfaceAlignment         */ 0 , /* int    concurrentKernels        */ 0 , /* int    ECCEnabled               */ 0 , /* int    pciBusID                 */ 0 , /* int    pciDeviceID              */ 0 , /* int    pciDomainID              */ 0 , /* int    tccDriver                */ 0 , /* int    asyncEngineCount         */ 0 , /* int    unifiedAddressing        */ 0 , /* int    memoryClockRate          */ 0 , /* int    memoryBusWidth           */ 0 , /* int    l2CacheSize              */ 0 , /* int    maxThreadsPerMultiProcessor */ 0 , /* int    streamPrioritiesSupported */ 0 , /* int    globalL1CacheSupported   */ 0 , /* int    localL1CacheSupported    */ 0 , /* size_t sharedMemPerMultiprocessor; */ 0 , /* int    regsPerMultiprocessor;   */ 0 , /* int    managedMemory            */ 0 , /* int    isMultiGpuBoard          */ 0 , /* int    multiGpuBoardGroupID     */ }

const CUDA_IPC_HANDLE_SIZE = 64

# begin enum cudaError
typealias cudaError Uint32
const cudaSuccess = (uint32)(0)
const cudaErrorMissingConfiguration = (uint32)(1)
const cudaErrorMemoryAllocation = (uint32)(2)
const cudaErrorInitializationError = (uint32)(3)
const cudaErrorLaunchFailure = (uint32)(4)
const cudaErrorPriorLaunchFailure = (uint32)(5)
const cudaErrorLaunchTimeout = (uint32)(6)
const cudaErrorLaunchOutOfResources = (uint32)(7)
const cudaErrorInvalidDeviceFunction = (uint32)(8)
const cudaErrorInvalidConfiguration = (uint32)(9)
const cudaErrorInvalidDevice = (uint32)(10)
const cudaErrorInvalidValue = (uint32)(11)
const cudaErrorInvalidPitchValue = (uint32)(12)
const cudaErrorInvalidSymbol = (uint32)(13)
const cudaErrorMapBufferObjectFailed = (uint32)(14)
const cudaErrorUnmapBufferObjectFailed = (uint32)(15)
const cudaErrorInvalidHostPointer = (uint32)(16)
const cudaErrorInvalidDevicePointer = (uint32)(17)
const cudaErrorInvalidTexture = (uint32)(18)
const cudaErrorInvalidTextureBinding = (uint32)(19)
const cudaErrorInvalidChannelDescriptor = (uint32)(20)
const cudaErrorInvalidMemcpyDirection = (uint32)(21)
const cudaErrorAddressOfConstant = (uint32)(22)
const cudaErrorTextureFetchFailed = (uint32)(23)
const cudaErrorTextureNotBound = (uint32)(24)
const cudaErrorSynchronizationError = (uint32)(25)
const cudaErrorInvalidFilterSetting = (uint32)(26)
const cudaErrorInvalidNormSetting = (uint32)(27)
const cudaErrorMixedDeviceExecution = (uint32)(28)
const cudaErrorCudartUnloading = (uint32)(29)
const cudaErrorUnknown = (uint32)(30)
const cudaErrorNotYetImplemented = (uint32)(31)
const cudaErrorMemoryValueTooLarge = (uint32)(32)
const cudaErrorInvalidResourceHandle = (uint32)(33)
const cudaErrorNotReady = (uint32)(34)
const cudaErrorInsufficientDriver = (uint32)(35)
const cudaErrorSetOnActiveProcess = (uint32)(36)
const cudaErrorInvalidSurface = (uint32)(37)
const cudaErrorNoDevice = (uint32)(38)
const cudaErrorECCUncorrectable = (uint32)(39)
const cudaErrorSharedObjectSymbolNotFound = (uint32)(40)
const cudaErrorSharedObjectInitFailed = (uint32)(41)
const cudaErrorUnsupportedLimit = (uint32)(42)
const cudaErrorDuplicateVariableName = (uint32)(43)
const cudaErrorDuplicateTextureName = (uint32)(44)
const cudaErrorDuplicateSurfaceName = (uint32)(45)
const cudaErrorDevicesUnavailable = (uint32)(46)
const cudaErrorInvalidKernelImage = (uint32)(47)
const cudaErrorNoKernelImageForDevice = (uint32)(48)
const cudaErrorIncompatibleDriverContext = (uint32)(49)
const cudaErrorPeerAccessAlreadyEnabled = (uint32)(50)
const cudaErrorPeerAccessNotEnabled = (uint32)(51)
const cudaErrorDeviceAlreadyInUse = (uint32)(54)
const cudaErrorProfilerDisabled = (uint32)(55)
const cudaErrorProfilerNotInitialized = (uint32)(56)
const cudaErrorProfilerAlreadyStarted = (uint32)(57)
const cudaErrorProfilerAlreadyStopped = (uint32)(58)
const cudaErrorAssert = (uint32)(59)
const cudaErrorTooManyPeers = (uint32)(60)
const cudaErrorHostMemoryAlreadyRegistered = (uint32)(61)
const cudaErrorHostMemoryNotRegistered = (uint32)(62)
const cudaErrorOperatingSystem = (uint32)(63)
const cudaErrorPeerAccessUnsupported = (uint32)(64)
const cudaErrorLaunchMaxDepthExceeded = (uint32)(65)
const cudaErrorLaunchFileScopedTex = (uint32)(66)
const cudaErrorLaunchFileScopedSurf = (uint32)(67)
const cudaErrorSyncDepthExceeded = (uint32)(68)
const cudaErrorLaunchPendingCountExceeded = (uint32)(69)
const cudaErrorNotPermitted = (uint32)(70)
const cudaErrorNotSupported = (uint32)(71)
const cudaErrorHardwareStackError = (uint32)(72)
const cudaErrorIllegalInstruction = (uint32)(73)
const cudaErrorMisalignedAddress = (uint32)(74)
const cudaErrorInvalidAddressSpace = (uint32)(75)
const cudaErrorInvalidPc = (uint32)(76)
const cudaErrorIllegalAddress = (uint32)(77)
const cudaErrorInvalidPtx = (uint32)(78)
const cudaErrorInvalidGraphicsContext = (uint32)(79)
const cudaErrorStartupFailure = (uint32)(127)
const cudaErrorApiFailureBase = (uint32)(10000)
# end enum cudaError

# begin enum cudaChannelFormatKind
typealias cudaChannelFormatKind Uint32
const cudaChannelFormatKindSigned = (uint32)(0)
const cudaChannelFormatKindUnsigned = (uint32)(1)
const cudaChannelFormatKindFloat = (uint32)(2)
const cudaChannelFormatKindNone = (uint32)(3)
# end enum cudaChannelFormatKind

immutable cudaChannelFormatDesc
    x::Cint
    y::Cint
    z::Cint
    w::Cint
    f::cudaChannelFormatKind
end

typealias cudaArray Void
typealias cudaArray_t Ptr{cudaArray}
typealias cudaArray_const_t Ptr{cudaArray}
typealias cudaMipmappedArray Void
typealias cudaMipmappedArray_t Ptr{cudaMipmappedArray}
typealias cudaMipmappedArray_const_t Ptr{cudaMipmappedArray}

# begin enum cudaMemoryType
typealias cudaMemoryType Uint32
const cudaMemoryTypeHost = (uint32)(1)
const cudaMemoryTypeDevice = (uint32)(2)
# end enum cudaMemoryType

# begin enum cudaMemcpyKind
typealias cudaMemcpyKind Uint32
const cudaMemcpyHostToHost = (uint32)(0)
const cudaMemcpyHostToDevice = (uint32)(1)
const cudaMemcpyDeviceToHost = (uint32)(2)
const cudaMemcpyDeviceToDevice = (uint32)(3)
const cudaMemcpyDefault = (uint32)(4)
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

immutable cudaMemcpy3DPeerParms
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

typealias cudaGraphicsResource Void

# begin enum cudaGraphicsRegisterFlags
typealias cudaGraphicsRegisterFlags Uint32
const cudaGraphicsRegisterFlagsNone = (uint32)(0)
const cudaGraphicsRegisterFlagsReadOnly = (uint32)(1)
const cudaGraphicsRegisterFlagsWriteDiscard = (uint32)(2)
const cudaGraphicsRegisterFlagsSurfaceLoadStore = (uint32)(4)
const cudaGraphicsRegisterFlagsTextureGather = (uint32)(8)
# end enum cudaGraphicsRegisterFlags

# begin enum cudaGraphicsMapFlags
typealias cudaGraphicsMapFlags Uint32
const cudaGraphicsMapFlagsNone = (uint32)(0)
const cudaGraphicsMapFlagsReadOnly = (uint32)(1)
const cudaGraphicsMapFlagsWriteDiscard = (uint32)(2)
# end enum cudaGraphicsMapFlags

# begin enum cudaGraphicsCubeFace
typealias cudaGraphicsCubeFace Uint32
const cudaGraphicsCubeFacePositiveX = (uint32)(0)
const cudaGraphicsCubeFaceNegativeX = (uint32)(1)
const cudaGraphicsCubeFacePositiveY = (uint32)(2)
const cudaGraphicsCubeFaceNegativeY = (uint32)(3)
const cudaGraphicsCubeFacePositiveZ = (uint32)(4)
const cudaGraphicsCubeFaceNegativeZ = (uint32)(5)
# end enum cudaGraphicsCubeFace

# begin enum cudaResourceType
typealias cudaResourceType Uint32
const cudaResourceTypeArray = (uint32)(0)
const cudaResourceTypeMipmappedArray = (uint32)(1)
const cudaResourceTypeLinear = (uint32)(2)
const cudaResourceTypePitch2D = (uint32)(3)
# end enum cudaResourceType

# begin enum cudaResourceViewFormat
typealias cudaResourceViewFormat Uint32
const cudaResViewFormatNone = (uint32)(0)
const cudaResViewFormatUnsignedChar1 = (uint32)(1)
const cudaResViewFormatUnsignedChar2 = (uint32)(2)
const cudaResViewFormatUnsignedChar4 = (uint32)(3)
const cudaResViewFormatSignedChar1 = (uint32)(4)
const cudaResViewFormatSignedChar2 = (uint32)(5)
const cudaResViewFormatSignedChar4 = (uint32)(6)
const cudaResViewFormatUnsignedShort1 = (uint32)(7)
const cudaResViewFormatUnsignedShort2 = (uint32)(8)
const cudaResViewFormatUnsignedShort4 = (uint32)(9)
const cudaResViewFormatSignedShort1 = (uint32)(10)
const cudaResViewFormatSignedShort2 = (uint32)(11)
const cudaResViewFormatSignedShort4 = (uint32)(12)
const cudaResViewFormatUnsignedInt1 = (uint32)(13)
const cudaResViewFormatUnsignedInt2 = (uint32)(14)
const cudaResViewFormatUnsignedInt4 = (uint32)(15)
const cudaResViewFormatSignedInt1 = (uint32)(16)
const cudaResViewFormatSignedInt2 = (uint32)(17)
const cudaResViewFormatSignedInt4 = (uint32)(18)
const cudaResViewFormatHalf1 = (uint32)(19)
const cudaResViewFormatHalf2 = (uint32)(20)
const cudaResViewFormatHalf4 = (uint32)(21)
const cudaResViewFormatFloat1 = (uint32)(22)
const cudaResViewFormatFloat2 = (uint32)(23)
const cudaResViewFormatFloat4 = (uint32)(24)
const cudaResViewFormatUnsignedBlockCompressed1 = (uint32)(25)
const cudaResViewFormatUnsignedBlockCompressed2 = (uint32)(26)
const cudaResViewFormatUnsignedBlockCompressed3 = (uint32)(27)
const cudaResViewFormatUnsignedBlockCompressed4 = (uint32)(28)
const cudaResViewFormatSignedBlockCompressed4 = (uint32)(29)
const cudaResViewFormatUnsignedBlockCompressed5 = (uint32)(30)
const cudaResViewFormatSignedBlockCompressed5 = (uint32)(31)
const cudaResViewFormatUnsignedBlockCompressed6H = (uint32)(32)
const cudaResViewFormatSignedBlockCompressed6H = (uint32)(33)
const cudaResViewFormatUnsignedBlockCompressed7 = (uint32)(34)
# end enum cudaResourceViewFormat

immutable cudaResourceDesc
    resType::cudaResourceType
    res::Void
end

immutable cudaResourceViewDesc
    format::cudaResourceViewFormat
    width::Csize_t
    height::Csize_t
    depth::Csize_t
    firstMipmapLevel::Uint32
    lastMipmapLevel::Uint32
    firstLayer::Uint32
    lastLayer::Uint32
end

immutable cudaPointerAttributes
    memoryType::cudaMemoryType
    device::Cint
    devicePointer::Ptr{Void}
    hostPointer::Ptr{Void}
    isManaged::Cint
end

immutable cudaFuncAttributes
    sharedSizeBytes::Csize_t
    constSizeBytes::Csize_t
    localSizeBytes::Csize_t
    maxThreadsPerBlock::Cint
    numRegs::Cint
    ptxVersion::Cint
    binaryVersion::Cint
    cacheModeCA::Cint
end

# begin enum cudaFuncCache
typealias cudaFuncCache Uint32
const cudaFuncCachePreferNone = (uint32)(0)
const cudaFuncCachePreferShared = (uint32)(1)
const cudaFuncCachePreferL1 = (uint32)(2)
const cudaFuncCachePreferEqual = (uint32)(3)
# end enum cudaFuncCache

# begin enum cudaSharedMemConfig
typealias cudaSharedMemConfig Uint32
const cudaSharedMemBankSizeDefault = (uint32)(0)
const cudaSharedMemBankSizeFourByte = (uint32)(1)
const cudaSharedMemBankSizeEightByte = (uint32)(2)
# end enum cudaSharedMemConfig

# begin enum cudaComputeMode
typealias cudaComputeMode Uint32
const cudaComputeModeDefault = (uint32)(0)
const cudaComputeModeExclusive = (uint32)(1)
const cudaComputeModeProhibited = (uint32)(2)
const cudaComputeModeExclusiveProcess = (uint32)(3)
# end enum cudaComputeMode

# begin enum cudaLimit
typealias cudaLimit Uint32
const cudaLimitStackSize = (uint32)(0)
const cudaLimitPrintfFifoSize = (uint32)(1)
const cudaLimitMallocHeapSize = (uint32)(2)
const cudaLimitDevRuntimeSyncDepth = (uint32)(3)
const cudaLimitDevRuntimePendingLaunchCount = (uint32)(4)
# end enum cudaLimit

# begin enum cudaOutputMode
typealias cudaOutputMode Uint32
const cudaKeyValuePair = (uint32)(0)
const cudaCSV = (uint32)(1)
# end enum cudaOutputMode

# begin enum cudaDeviceAttr
typealias cudaDeviceAttr Uint32
const cudaDevAttrMaxThreadsPerBlock = (uint32)(1)
const cudaDevAttrMaxBlockDimX = (uint32)(2)
const cudaDevAttrMaxBlockDimY = (uint32)(3)
const cudaDevAttrMaxBlockDimZ = (uint32)(4)
const cudaDevAttrMaxGridDimX = (uint32)(5)
const cudaDevAttrMaxGridDimY = (uint32)(6)
const cudaDevAttrMaxGridDimZ = (uint32)(7)
const cudaDevAttrMaxSharedMemoryPerBlock = (uint32)(8)
const cudaDevAttrTotalConstantMemory = (uint32)(9)
const cudaDevAttrWarpSize = (uint32)(10)
const cudaDevAttrMaxPitch = (uint32)(11)
const cudaDevAttrMaxRegistersPerBlock = (uint32)(12)
const cudaDevAttrClockRate = (uint32)(13)
const cudaDevAttrTextureAlignment = (uint32)(14)
const cudaDevAttrGpuOverlap = (uint32)(15)
const cudaDevAttrMultiProcessorCount = (uint32)(16)
const cudaDevAttrKernelExecTimeout = (uint32)(17)
const cudaDevAttrIntegrated = (uint32)(18)
const cudaDevAttrCanMapHostMemory = (uint32)(19)
const cudaDevAttrComputeMode = (uint32)(20)
const cudaDevAttrMaxTexture1DWidth = (uint32)(21)
const cudaDevAttrMaxTexture2DWidth = (uint32)(22)
const cudaDevAttrMaxTexture2DHeight = (uint32)(23)
const cudaDevAttrMaxTexture3DWidth = (uint32)(24)
const cudaDevAttrMaxTexture3DHeight = (uint32)(25)
const cudaDevAttrMaxTexture3DDepth = (uint32)(26)
const cudaDevAttrMaxTexture2DLayeredWidth = (uint32)(27)
const cudaDevAttrMaxTexture2DLayeredHeight = (uint32)(28)
const cudaDevAttrMaxTexture2DLayeredLayers = (uint32)(29)
const cudaDevAttrSurfaceAlignment = (uint32)(30)
const cudaDevAttrConcurrentKernels = (uint32)(31)
const cudaDevAttrEccEnabled = (uint32)(32)
const cudaDevAttrPciBusId = (uint32)(33)
const cudaDevAttrPciDeviceId = (uint32)(34)
const cudaDevAttrTccDriver = (uint32)(35)
const cudaDevAttrMemoryClockRate = (uint32)(36)
const cudaDevAttrGlobalMemoryBusWidth = (uint32)(37)
const cudaDevAttrL2CacheSize = (uint32)(38)
const cudaDevAttrMaxThreadsPerMultiProcessor = (uint32)(39)
const cudaDevAttrAsyncEngineCount = (uint32)(40)
const cudaDevAttrUnifiedAddressing = (uint32)(41)
const cudaDevAttrMaxTexture1DLayeredWidth = (uint32)(42)
const cudaDevAttrMaxTexture1DLayeredLayers = (uint32)(43)
const cudaDevAttrMaxTexture2DGatherWidth = (uint32)(45)
const cudaDevAttrMaxTexture2DGatherHeight = (uint32)(46)
const cudaDevAttrMaxTexture3DWidthAlt = (uint32)(47)
const cudaDevAttrMaxTexture3DHeightAlt = (uint32)(48)
const cudaDevAttrMaxTexture3DDepthAlt = (uint32)(49)
const cudaDevAttrPciDomainId = (uint32)(50)
const cudaDevAttrTexturePitchAlignment = (uint32)(51)
const cudaDevAttrMaxTextureCubemapWidth = (uint32)(52)
const cudaDevAttrMaxTextureCubemapLayeredWidth = (uint32)(53)
const cudaDevAttrMaxTextureCubemapLayeredLayers = (uint32)(54)
const cudaDevAttrMaxSurface1DWidth = (uint32)(55)
const cudaDevAttrMaxSurface2DWidth = (uint32)(56)
const cudaDevAttrMaxSurface2DHeight = (uint32)(57)
const cudaDevAttrMaxSurface3DWidth = (uint32)(58)
const cudaDevAttrMaxSurface3DHeight = (uint32)(59)
const cudaDevAttrMaxSurface3DDepth = (uint32)(60)
const cudaDevAttrMaxSurface1DLayeredWidth = (uint32)(61)
const cudaDevAttrMaxSurface1DLayeredLayers = (uint32)(62)
const cudaDevAttrMaxSurface2DLayeredWidth = (uint32)(63)
const cudaDevAttrMaxSurface2DLayeredHeight = (uint32)(64)
const cudaDevAttrMaxSurface2DLayeredLayers = (uint32)(65)
const cudaDevAttrMaxSurfaceCubemapWidth = (uint32)(66)
const cudaDevAttrMaxSurfaceCubemapLayeredWidth = (uint32)(67)
const cudaDevAttrMaxSurfaceCubemapLayeredLayers = (uint32)(68)
const cudaDevAttrMaxTexture1DLinearWidth = (uint32)(69)
const cudaDevAttrMaxTexture2DLinearWidth = (uint32)(70)
const cudaDevAttrMaxTexture2DLinearHeight = (uint32)(71)
const cudaDevAttrMaxTexture2DLinearPitch = (uint32)(72)
const cudaDevAttrMaxTexture2DMipmappedWidth = (uint32)(73)
const cudaDevAttrMaxTexture2DMipmappedHeight = (uint32)(74)
const cudaDevAttrComputeCapabilityMajor = (uint32)(75)
const cudaDevAttrComputeCapabilityMinor = (uint32)(76)
const cudaDevAttrMaxTexture1DMipmappedWidth = (uint32)(77)
const cudaDevAttrStreamPrioritiesSupported = (uint32)(78)
const cudaDevAttrGlobalL1CacheSupported = (uint32)(79)
const cudaDevAttrLocalL1CacheSupported = (uint32)(80)
const cudaDevAttrMaxSharedMemoryPerMultiprocessor = (uint32)(81)
const cudaDevAttrMaxRegistersPerMultiprocessor = (uint32)(82)
const cudaDevAttrManagedMemory = (uint32)(83)
const cudaDevAttrIsMultiGpuBoard = (uint32)(84)
const cudaDevAttrMultiGpuBoardGroupID = (uint32)(85)
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

zero(::Type{Array_256_Uint8}) = Array_256_Uint8(fill(zero(Uint8),256)...)

immutable Array_3_Cint
    d1::Cint
    d2::Cint
    d3::Cint
end

zero(::Type{Array_3_Cint}) = Array_3_Cint(fill(zero(Cint),3)...)

immutable Array_2_Cint
    d1::Cint
    d2::Cint
end

zero(::Type{Array_2_Cint}) = Array_2_Cint(fill(zero(Cint),2)...)

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
    maxTexture3DAlt::Array_3_Cint
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
    streamPrioritiesSupported::Cint
    globalL1CacheSupported::Cint
    localL1CacheSupported::Cint
    sharedMemPerMultiprocessor::Csize_t
    regsPerMultiprocessor::Cint
    managedMemory::Cint
    isMultiGpuBoard::Cint
    multiGpuBoardGroupID::Cint
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

zero(::Type{Array_64_Uint8}) = Array_64_Uint8(fill(zero(Uint8),64)...)

immutable cudaIpcEventHandle_st
    reserved::Array_64_Uint8
end

immutable cudaIpcEventHandle_t
    reserved::Array_64_Uint8
end

immutable cudaIpcMemHandle_st
    reserved::Array_64_Uint8
end

immutable cudaIpcMemHandle_t
    reserved::Array_64_Uint8
end

typealias cudaError_t cudaError
typealias CUstream_st Void
typealias cudaStream_t Ptr{CUstream_st}
typealias CUevent_st Void
typealias cudaEvent_t Ptr{CUevent_st}
typealias cudaGraphicsResource_t Ptr{cudaGraphicsResource}
typealias CUuuid_st Void
typealias cudaUUID_t Void
typealias cudaOutputMode_t cudaOutputMode

immutable char1
    x::Uint8
end

immutable uchar1
    x::Cuchar
end

immutable char3
    x::Uint8
    y::Uint8
    z::Uint8
end

immutable uchar3
    x::Cuchar
    y::Cuchar
    z::Cuchar
end

immutable short1
    x::Int16
end

immutable ushort1
    x::Uint16
end

immutable short3
    x::Int16
    y::Int16
    z::Int16
end

immutable ushort3
    x::Uint16
    y::Uint16
    z::Uint16
end

immutable int1
    x::Cint
end

immutable uint1
    x::Uint32
end

immutable int3
    x::Cint
    y::Cint
    z::Cint
end

immutable uint3
    x::Uint32
    y::Uint32
    z::Uint32
end

immutable long1
    x::Clong
end

immutable ulong1
    x::Culong
end

immutable long3
    x::Clong
    y::Clong
    z::Clong
end

immutable ulong3
    x::Culong
    y::Culong
    z::Culong
end

immutable float1
    x::Cfloat
end

immutable float3
    x::Cfloat
    y::Cfloat
    z::Cfloat
end

immutable longlong1
    x::Clonglong
end

immutable ulonglong1
    x::Culonglong
end

immutable longlong3
    x::Clonglong
    y::Clonglong
    z::Clonglong
end

immutable ulonglong3
    x::Culonglong
    y::Culonglong
    z::Culonglong
end

immutable double1
    x::Cdouble
end

immutable double3
    x::Cdouble
    y::Cdouble
    z::Cdouble
end

immutable dim3
    x::Uint32
    y::Uint32
    z::Uint32
end

const CUDART_VERSION = 6050

()

typealias cudaStreamCallback_t Ptr{Void}
