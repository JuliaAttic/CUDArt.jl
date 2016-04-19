# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat

const unix = 1
const linux = 1
const MB_LEN_MAX = 16
const LLONG_MAX = __LONG_LONG_MAX__
const LLONG_MIN = -LLONG_MAX - 1
const ULLONG_MAX = LLONG_MAX * UInt64(2) + 1
const NR_OPEN = 1024
const NGROUPS_MAX = 65536
const ARG_MAX = 131072
const LINK_MAX = 127
const MAX_CANON = 255
const MAX_INPUT = 255
const NAME_MAX = 255
const PATH_MAX = 4096
const PIPE_BUF = 4096
const XATTR_NAME_MAX = 255
const XATTR_SIZE_MAX = 65536
const XATTR_LIST_MAX = 65536
const RTSIG_MAX = 32
const PTHREAD_KEYS_MAX = 1024
const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS
const AIO_PRIO_DELTA_MAX = 20
const PTHREAD_STACK_MIN = 16384
const DELAYTIMER_MAX = 2147483647
const TTY_NAME_MAX = 32
const LOGIN_NAME_MAX = 256
const HOST_NAME_MAX = 64
const MQ_PRIO_MAX = 32768

# Skipping MacroDefinition: SEM_VALUE_MAX ( 2147483647

const SSIZE_MAX = LONG_MAX
const BC_BASE_MAX = _POSIX2_BC_BASE_MAX
const BC_DIM_MAX = _POSIX2_BC_DIM_MAX
const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX
const BC_STRING_MAX = _POSIX2_BC_STRING_MAX
const COLL_WEIGHTS_MAX = 255
const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX
const LINE_MAX = _POSIX2_LINE_MAX
const CHARCLASS_NAME_MAX = 2048
const RE_DUP_MAX = Float32(0x07ff)
const cudaHostAllocDefault = 0x00
const cudaHostAllocPortable = 0x01
const cudaHostAllocMapped = 0x02
const cudaHostAllocWriteCombined = 0x04
const cudaHostRegisterDefault = 0x00
const cudaHostRegisterPortable = 0x01
const cudaHostRegisterMapped = 0x02
const cudaHostRegisterIoMemory = 0x04
const cudaPeerAccessDefault = 0x00
const cudaStreamDefault = 0x00
const cudaStreamNonBlocking = 0x01

# Skipping MacroDefinition: cudaStreamLegacy ( ( cudaStream_t ) 0x1 )
# Skipping MacroDefinition: cudaStreamPerThread ( ( cudaStream_t ) 0x2 )

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
const cudaDeviceMask = Float32(0x01)
const cudaArrayDefault = 0x00
const cudaArrayLayered = 0x01
const cudaArraySurfaceLoadStore = 0x02
const cudaArrayCubemap = 0x04
const cudaArrayTextureGather = 0x08
const cudaIpcMemLazyEnablePeerAccess = 0x01
const cudaMemAttachGlobal = 0x01
const cudaMemAttachHost = 0x02
const cudaMemAttachSingle = 0x04
const cudaOccupancyDefault = 0x00
const cudaOccupancyDisableCachingOverride = 0x01

# Skipping MacroDefinition: cudaDevicePropDontCare { { '\0' } , /* char   name[256];               */ 0 , /* size_t totalGlobalMem;          */ 0 , /* size_t sharedMemPerBlock;       */ 0 , /* int    regsPerBlock;            */ 0 , /* int    warpSize;                */ 0 , /* size_t memPitch;                */ 0 , /* int    maxThreadsPerBlock;      */ { 0 , 0 , 0 } , /* int    maxThreadsDim[3];        */ { 0 , 0 , 0 } , /* int    maxGridSize[3];          */ 0 , /* int    clockRate;               */ 0 , /* size_t totalConstMem;           */ - 1 , /* int    major;                   */ - 1 , /* int    minor;                   */ 0 , /* size_t textureAlignment;        */ 0 , /* size_t texturePitchAlignment    */ - 1 , /* int    deviceOverlap;           */ 0 , /* int    multiProcessorCount;     */ 0 , /* int    kernelExecTimeoutEnabled */ 0 , /* int    integrated               */ 0 , /* int    canMapHostMemory         */ 0 , /* int    computeMode              */ 0 , /* int    maxTexture1D             */ 0 , /* int    maxTexture1DMipmap       */ 0 , /* int    maxTexture1DLinear       */ { 0 , 0 } , /* int    maxTexture2D[2]          */ { 0 , 0 } , /* int    maxTexture2DMipmap[2]    */ { 0 , 0 , 0 } , /* int    maxTexture2DLinear[3]    */ { 0 , 0 } , /* int    maxTexture2DGather[2]    */ { 0 , 0 , 0 } , /* int    maxTexture3D[3]          */ { 0 , 0 , 0 } , /* int    maxTexture3DAlt[3]       */ 0 , /* int    maxTextureCubemap        */ { 0 , 0 } , /* int    maxTexture1DLayered[2]   */ { 0 , 0 , 0 } , /* int    maxTexture2DLayered[3]   */ { 0 , 0 } , /* int    maxTextureCubemapLayered[2] */ 0 , /* int    maxSurface1D             */ { 0 , 0 } , /* int    maxSurface2D[2]          */ { 0 , 0 , 0 } , /* int    maxSurface3D[3]          */ { 0 , 0 } , /* int    maxSurface1DLayered[2]   */ { 0 , 0 , 0 } , /* int    maxSurface2DLayered[3]   */ 0 , /* int    maxSurfaceCubemap        */ { 0 , 0 } , /* int    maxSurfaceCubemapLayered[2] */ 0 , /* size_t surfaceAlignment         */ 0 , /* int    concurrentKernels        */ 0 , /* int    ECCEnabled               */ 0 , /* int    pciBusID                 */ 0 , /* int    pciDeviceID              */ 0 , /* int    pciDomainID              */ 0 , /* int    tccDriver                */ 0 , /* int    asyncEngineCount         */ 0 , /* int    unifiedAddressing        */ 0 , /* int    memoryClockRate          */ 0 , /* int    memoryBusWidth           */ 0 , /* int    l2CacheSize              */ 0 , /* int    maxThreadsPerMultiProcessor */ 0 , /* int    streamPrioritiesSupported */ 0 , /* int    globalL1CacheSupported   */ 0 , /* int    localL1CacheSupported    */ 0 , /* size_t sharedMemPerMultiprocessor; */ 0 , /* int    regsPerMultiprocessor;   */ 0 , /* int    managedMemory            */ 0 , /* int    isMultiGpuBoard          */ 0 , /* int    multiGpuBoardGroupID     */ }

const CUDA_IPC_HANDLE_SIZE = 64

@cenum(cudaError,
    cudaSuccess = 0,
    cudaErrorMissingConfiguration = 1,
    cudaErrorMemoryAllocation = 2,
    cudaErrorInitializationError = 3,
    cudaErrorLaunchFailure = 4,
    cudaErrorPriorLaunchFailure = 5,
    cudaErrorLaunchTimeout = 6,
    cudaErrorLaunchOutOfResources = 7,
    cudaErrorInvalidDeviceFunction = 8,
    cudaErrorInvalidConfiguration = 9,
    cudaErrorInvalidDevice = 10,
    cudaErrorInvalidValue = 11,
    cudaErrorInvalidPitchValue = 12,
    cudaErrorInvalidSymbol = 13,
    cudaErrorMapBufferObjectFailed = 14,
    cudaErrorUnmapBufferObjectFailed = 15,
    cudaErrorInvalidHostPointer = 16,
    cudaErrorInvalidDevicePointer = 17,
    cudaErrorInvalidTexture = 18,
    cudaErrorInvalidTextureBinding = 19,
    cudaErrorInvalidChannelDescriptor = 20,
    cudaErrorInvalidMemcpyDirection = 21,
    cudaErrorAddressOfConstant = 22,
    cudaErrorTextureFetchFailed = 23,
    cudaErrorTextureNotBound = 24,
    cudaErrorSynchronizationError = 25,
    cudaErrorInvalidFilterSetting = 26,
    cudaErrorInvalidNormSetting = 27,
    cudaErrorMixedDeviceExecution = 28,
    cudaErrorCudartUnloading = 29,
    cudaErrorUnknown = 30,
    cudaErrorNotYetImplemented = 31,
    cudaErrorMemoryValueTooLarge = 32,
    cudaErrorInvalidResourceHandle = 33,
    cudaErrorNotReady = 34,
    cudaErrorInsufficientDriver = 35,
    cudaErrorSetOnActiveProcess = 36,
    cudaErrorInvalidSurface = 37,
    cudaErrorNoDevice = 38,
    cudaErrorECCUncorrectable = 39,
    cudaErrorSharedObjectSymbolNotFound = 40,
    cudaErrorSharedObjectInitFailed = 41,
    cudaErrorUnsupportedLimit = 42,
    cudaErrorDuplicateVariableName = 43,
    cudaErrorDuplicateTextureName = 44,
    cudaErrorDuplicateSurfaceName = 45,
    cudaErrorDevicesUnavailable = 46,
    cudaErrorInvalidKernelImage = 47,
    cudaErrorNoKernelImageForDevice = 48,
    cudaErrorIncompatibleDriverContext = 49,
    cudaErrorPeerAccessAlreadyEnabled = 50,
    cudaErrorPeerAccessNotEnabled = 51,
    cudaErrorDeviceAlreadyInUse = 54,
    cudaErrorProfilerDisabled = 55,
    cudaErrorProfilerNotInitialized = 56,
    cudaErrorProfilerAlreadyStarted = 57,
    cudaErrorProfilerAlreadyStopped = 58,
    cudaErrorAssert = 59,
    cudaErrorTooManyPeers = 60,
    cudaErrorHostMemoryAlreadyRegistered = 61,
    cudaErrorHostMemoryNotRegistered = 62,
    cudaErrorOperatingSystem = 63,
    cudaErrorPeerAccessUnsupported = 64,
    cudaErrorLaunchMaxDepthExceeded = 65,
    cudaErrorLaunchFileScopedTex = 66,
    cudaErrorLaunchFileScopedSurf = 67,
    cudaErrorSyncDepthExceeded = 68,
    cudaErrorLaunchPendingCountExceeded = 69,
    cudaErrorNotPermitted = 70,
    cudaErrorNotSupported = 71,
    cudaErrorHardwareStackError = 72,
    cudaErrorIllegalInstruction = 73,
    cudaErrorMisalignedAddress = 74,
    cudaErrorInvalidAddressSpace = 75,
    cudaErrorInvalidPc = 76,
    cudaErrorIllegalAddress = 77,
    cudaErrorInvalidPtx = 78,
    cudaErrorInvalidGraphicsContext = 79,
    cudaErrorStartupFailure = 127,
    cudaErrorApiFailureBase = 10000,
)
@cenum(cudaChannelFormatKind,
    cudaChannelFormatKindSigned = 0,
    cudaChannelFormatKindUnsigned = 1,
    cudaChannelFormatKindFloat = 2,
    cudaChannelFormatKindNone = 3,
)

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

@cenum(cudaMemoryType,
    cudaMemoryTypeHost = 1,
    cudaMemoryTypeDevice = 2,
)
@cenum(cudaMemcpyKind,
    cudaMemcpyHostToHost = 0,
    cudaMemcpyHostToDevice = 1,
    cudaMemcpyDeviceToHost = 2,
    cudaMemcpyDeviceToDevice = 3,
    cudaMemcpyDefault = 4,
)

immutable cudaPitchedPtr
    ptr::Ptr{Void}
    pitch::Cint
    xsize::Cint
    ysize::Cint
end

immutable cudaExtent
    width::Cint
    height::Cint
    depth::Cint
end

immutable cudaPos
    x::Cint
    y::Cint
    z::Cint
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

@cenum(cudaGraphicsRegisterFlags,
    cudaGraphicsRegisterFlagsNone = 0,
    cudaGraphicsRegisterFlagsReadOnly = 1,
    cudaGraphicsRegisterFlagsWriteDiscard = 2,
    cudaGraphicsRegisterFlagsSurfaceLoadStore = 4,
    cudaGraphicsRegisterFlagsTextureGather = 8,
)
@cenum(cudaGraphicsMapFlags,
    cudaGraphicsMapFlagsNone = 0,
    cudaGraphicsMapFlagsReadOnly = 1,
    cudaGraphicsMapFlagsWriteDiscard = 2,
)
@cenum(cudaGraphicsCubeFace,
    cudaGraphicsCubeFacePositiveX = 0,
    cudaGraphicsCubeFaceNegativeX = 1,
    cudaGraphicsCubeFacePositiveY = 2,
    cudaGraphicsCubeFaceNegativeY = 3,
    cudaGraphicsCubeFacePositiveZ = 4,
    cudaGraphicsCubeFaceNegativeZ = 5,
)
@cenum(cudaResourceType,
    cudaResourceTypeArray = 0,
    cudaResourceTypeMipmappedArray = 1,
    cudaResourceTypeLinear = 2,
    cudaResourceTypePitch2D = 3,
)
@cenum(cudaResourceViewFormat,
    cudaResViewFormatNone = 0,
    cudaResViewFormatUnsignedChar1 = 1,
    cudaResViewFormatUnsignedChar2 = 2,
    cudaResViewFormatUnsignedChar4 = 3,
    cudaResViewFormatSignedChar1 = 4,
    cudaResViewFormatSignedChar2 = 5,
    cudaResViewFormatSignedChar4 = 6,
    cudaResViewFormatUnsignedShort1 = 7,
    cudaResViewFormatUnsignedShort2 = 8,
    cudaResViewFormatUnsignedShort4 = 9,
    cudaResViewFormatSignedShort1 = 10,
    cudaResViewFormatSignedShort2 = 11,
    cudaResViewFormatSignedShort4 = 12,
    cudaResViewFormatUnsignedInt1 = 13,
    cudaResViewFormatUnsignedInt2 = 14,
    cudaResViewFormatUnsignedInt4 = 15,
    cudaResViewFormatSignedInt1 = 16,
    cudaResViewFormatSignedInt2 = 17,
    cudaResViewFormatSignedInt4 = 18,
    cudaResViewFormatHalf1 = 19,
    cudaResViewFormatHalf2 = 20,
    cudaResViewFormatHalf4 = 21,
    cudaResViewFormatFloat1 = 22,
    cudaResViewFormatFloat2 = 23,
    cudaResViewFormatFloat4 = 24,
    cudaResViewFormatUnsignedBlockCompressed1 = 25,
    cudaResViewFormatUnsignedBlockCompressed2 = 26,
    cudaResViewFormatUnsignedBlockCompressed3 = 27,
    cudaResViewFormatUnsignedBlockCompressed4 = 28,
    cudaResViewFormatSignedBlockCompressed4 = 29,
    cudaResViewFormatUnsignedBlockCompressed5 = 30,
    cudaResViewFormatSignedBlockCompressed5 = 31,
    cudaResViewFormatUnsignedBlockCompressed6H = 32,
    cudaResViewFormatSignedBlockCompressed6H = 33,
    cudaResViewFormatUnsignedBlockCompressed7 = 34,
)

immutable cudaResourceDesc
    resType::cudaResourceType
    res::Void
end

immutable cudaResourceViewDesc
    format::cudaResourceViewFormat
    width::Cint
    height::Cint
    depth::Cint
    firstMipmapLevel::UInt32
    lastMipmapLevel::UInt32
    firstLayer::UInt32
    lastLayer::UInt32
end

immutable cudaPointerAttributes
    memoryType::cudaMemoryType
    device::Cint
    devicePointer::Ptr{Void}
    hostPointer::Ptr{Void}
    isManaged::Cint
end

immutable cudaFuncAttributes
    sharedSizeBytes::Cint
    constSizeBytes::Cint
    localSizeBytes::Cint
    maxThreadsPerBlock::Cint
    numRegs::Cint
    ptxVersion::Cint
    binaryVersion::Cint
    cacheModeCA::Cint
end

@cenum(cudaFuncCache,
    cudaFuncCachePreferNone = 0,
    cudaFuncCachePreferShared = 1,
    cudaFuncCachePreferL1 = 2,
    cudaFuncCachePreferEqual = 3,
)
@cenum(cudaSharedMemConfig,
    cudaSharedMemBankSizeDefault = 0,
    cudaSharedMemBankSizeFourByte = 1,
    cudaSharedMemBankSizeEightByte = 2,
)
@cenum(cudaComputeMode,
    cudaComputeModeDefault = 0,
    cudaComputeModeExclusive = 1,
    cudaComputeModeProhibited = 2,
    cudaComputeModeExclusiveProcess = 3,
)
@cenum(cudaLimit,
    cudaLimitStackSize = 0,
    cudaLimitPrintfFifoSize = 1,
    cudaLimitMallocHeapSize = 2,
    cudaLimitDevRuntimeSyncDepth = 3,
    cudaLimitDevRuntimePendingLaunchCount = 4,
)
@cenum(cudaOutputMode,
    cudaKeyValuePair = 0,
    cudaCSV = 1,
)
@cenum(cudaDeviceAttr,
    cudaDevAttrMaxThreadsPerBlock = 1,
    cudaDevAttrMaxBlockDimX = 2,
    cudaDevAttrMaxBlockDimY = 3,
    cudaDevAttrMaxBlockDimZ = 4,
    cudaDevAttrMaxGridDimX = 5,
    cudaDevAttrMaxGridDimY = 6,
    cudaDevAttrMaxGridDimZ = 7,
    cudaDevAttrMaxSharedMemoryPerBlock = 8,
    cudaDevAttrTotalConstantMemory = 9,
    cudaDevAttrWarpSize = 10,
    cudaDevAttrMaxPitch = 11,
    cudaDevAttrMaxRegistersPerBlock = 12,
    cudaDevAttrClockRate = 13,
    cudaDevAttrTextureAlignment = 14,
    cudaDevAttrGpuOverlap = 15,
    cudaDevAttrMultiProcessorCount = 16,
    cudaDevAttrKernelExecTimeout = 17,
    cudaDevAttrIntegrated = 18,
    cudaDevAttrCanMapHostMemory = 19,
    cudaDevAttrComputeMode = 20,
    cudaDevAttrMaxTexture1DWidth = 21,
    cudaDevAttrMaxTexture2DWidth = 22,
    cudaDevAttrMaxTexture2DHeight = 23,
    cudaDevAttrMaxTexture3DWidth = 24,
    cudaDevAttrMaxTexture3DHeight = 25,
    cudaDevAttrMaxTexture3DDepth = 26,
    cudaDevAttrMaxTexture2DLayeredWidth = 27,
    cudaDevAttrMaxTexture2DLayeredHeight = 28,
    cudaDevAttrMaxTexture2DLayeredLayers = 29,
    cudaDevAttrSurfaceAlignment = 30,
    cudaDevAttrConcurrentKernels = 31,
    cudaDevAttrEccEnabled = 32,
    cudaDevAttrPciBusId = 33,
    cudaDevAttrPciDeviceId = 34,
    cudaDevAttrTccDriver = 35,
    cudaDevAttrMemoryClockRate = 36,
    cudaDevAttrGlobalMemoryBusWidth = 37,
    cudaDevAttrL2CacheSize = 38,
    cudaDevAttrMaxThreadsPerMultiProcessor = 39,
    cudaDevAttrAsyncEngineCount = 40,
    cudaDevAttrUnifiedAddressing = 41,
    cudaDevAttrMaxTexture1DLayeredWidth = 42,
    cudaDevAttrMaxTexture1DLayeredLayers = 43,
    cudaDevAttrMaxTexture2DGatherWidth = 45,
    cudaDevAttrMaxTexture2DGatherHeight = 46,
    cudaDevAttrMaxTexture3DWidthAlt = 47,
    cudaDevAttrMaxTexture3DHeightAlt = 48,
    cudaDevAttrMaxTexture3DDepthAlt = 49,
    cudaDevAttrPciDomainId = 50,
    cudaDevAttrTexturePitchAlignment = 51,
    cudaDevAttrMaxTextureCubemapWidth = 52,
    cudaDevAttrMaxTextureCubemapLayeredWidth = 53,
    cudaDevAttrMaxTextureCubemapLayeredLayers = 54,
    cudaDevAttrMaxSurface1DWidth = 55,
    cudaDevAttrMaxSurface2DWidth = 56,
    cudaDevAttrMaxSurface2DHeight = 57,
    cudaDevAttrMaxSurface3DWidth = 58,
    cudaDevAttrMaxSurface3DHeight = 59,
    cudaDevAttrMaxSurface3DDepth = 60,
    cudaDevAttrMaxSurface1DLayeredWidth = 61,
    cudaDevAttrMaxSurface1DLayeredLayers = 62,
    cudaDevAttrMaxSurface2DLayeredWidth = 63,
    cudaDevAttrMaxSurface2DLayeredHeight = 64,
    cudaDevAttrMaxSurface2DLayeredLayers = 65,
    cudaDevAttrMaxSurfaceCubemapWidth = 66,
    cudaDevAttrMaxSurfaceCubemapLayeredWidth = 67,
    cudaDevAttrMaxSurfaceCubemapLayeredLayers = 68,
    cudaDevAttrMaxTexture1DLinearWidth = 69,
    cudaDevAttrMaxTexture2DLinearWidth = 70,
    cudaDevAttrMaxTexture2DLinearHeight = 71,
    cudaDevAttrMaxTexture2DLinearPitch = 72,
    cudaDevAttrMaxTexture2DMipmappedWidth = 73,
    cudaDevAttrMaxTexture2DMipmappedHeight = 74,
    cudaDevAttrComputeCapabilityMajor = 75,
    cudaDevAttrComputeCapabilityMinor = 76,
    cudaDevAttrMaxTexture1DMipmappedWidth = 77,
    cudaDevAttrStreamPrioritiesSupported = 78,
    cudaDevAttrGlobalL1CacheSupported = 79,
    cudaDevAttrLocalL1CacheSupported = 80,
    cudaDevAttrMaxSharedMemoryPerMultiprocessor = 81,
    cudaDevAttrMaxRegistersPerMultiprocessor = 82,
    cudaDevAttrManagedMemory = 83,
    cudaDevAttrIsMultiGpuBoard = 84,
    cudaDevAttrMultiGpuBoardGroupID = 85,
)

immutable cudaDeviceProp
    name::NTuple{256,UInt8}
    totalGlobalMem::Cint
    sharedMemPerBlock::Cint
    regsPerBlock::Cint
    warpSize::Cint
    memPitch::Cint
    maxThreadsPerBlock::Cint
    maxThreadsDim::NTuple{3,Cint}
    maxGridSize::NTuple{3,Cint}
    clockRate::Cint
    totalConstMem::Cint
    major::Cint
    minor::Cint
    textureAlignment::Cint
    texturePitchAlignment::Cint
    deviceOverlap::Cint
    multiProcessorCount::Cint
    kernelExecTimeoutEnabled::Cint
    integrated::Cint
    canMapHostMemory::Cint
    computeMode::Cint
    maxTexture1D::Cint
    maxTexture1DMipmap::Cint
    maxTexture1DLinear::Cint
    maxTexture2D::NTuple{2,Cint}
    maxTexture2DMipmap::NTuple{2,Cint}
    maxTexture2DLinear::NTuple{3,Cint}
    maxTexture2DGather::NTuple{2,Cint}
    maxTexture3D::NTuple{3,Cint}
    maxTexture3DAlt::NTuple{3,Cint}
    maxTextureCubemap::Cint
    maxTexture1DLayered::NTuple{2,Cint}
    maxTexture2DLayered::NTuple{3,Cint}
    maxTextureCubemapLayered::NTuple{2,Cint}
    maxSurface1D::Cint
    maxSurface2D::NTuple{2,Cint}
    maxSurface3D::NTuple{3,Cint}
    maxSurface1DLayered::NTuple{2,Cint}
    maxSurface2DLayered::NTuple{3,Cint}
    maxSurfaceCubemap::Cint
    maxSurfaceCubemapLayered::NTuple{2,Cint}
    surfaceAlignment::Cint
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
    sharedMemPerMultiprocessor::Cint
    regsPerMultiprocessor::Cint
    managedMemory::Cint
    isMultiGpuBoard::Cint
    multiGpuBoardGroupID::Cint
end

immutable cudaIpcEventHandle_st
    reserved::NTuple{64,UInt8}
end

immutable cudaIpcEventHandle_t
    reserved::NTuple{64,UInt8}
end

immutable cudaIpcMemHandle_st
    reserved::NTuple{64,UInt8}
end

immutable cudaIpcMemHandle_t
    reserved::NTuple{64,UInt8}
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

const cudaSurfaceType1D = 0x01
const cudaSurfaceType2D = 0x02
const cudaSurfaceType3D = 0x03
const cudaSurfaceTypeCubemap = 0x0c
const cudaSurfaceType1DLayered = 0xf1
const cudaSurfaceType2DLayered = 0xf2
const cudaSurfaceTypeCubemapLayered = 0xfc
const cudaTextureType1D = 0x01
const cudaTextureType2D = 0x02
const cudaTextureType3D = 0x03
const cudaTextureTypeCubemap = 0x0c
const cudaTextureType1DLayered = 0xf1
const cudaTextureType2DLayered = 0xf2
const cudaTextureTypeCubemapLayered = 0xfc

@cenum(cudaRoundMode,
    cudaRoundNearest = 0,
    cudaRoundZero = 1,
    cudaRoundPosInf = 2,
    cudaRoundMinInf = 3,
)
@cenum(cudaSurfaceBoundaryMode,
    cudaBoundaryModeZero = 0,
    cudaBoundaryModeClamp = 1,
    cudaBoundaryModeTrap = 2,
)
@cenum(cudaSurfaceFormatMode,
    cudaFormatModeForced = 0,
    cudaFormatModeAuto = 1,
)

immutable surfaceReference
    channelDesc::cudaChannelFormatDesc
end

typealias cudaSurfaceObject_t Culonglong

@cenum(cudaTextureAddressMode,
    cudaAddressModeWrap = 0,
    cudaAddressModeClamp = 1,
    cudaAddressModeMirror = 2,
    cudaAddressModeBorder = 3,
)
@cenum(cudaTextureFilterMode,
    cudaFilterModePoint = 0,
    cudaFilterModeLinear = 1,
)
@cenum(cudaTextureReadMode,
    cudaReadModeElementType = 0,
    cudaReadModeNormalizedFloat = 1,
)

immutable textureReference
    normalized::Cint
    filterMode::cudaTextureFilterMode
    addressMode::NTuple{3,cudaTextureAddressMode}
    channelDesc::cudaChannelFormatDesc
    sRGB::Cint
    maxAnisotropy::UInt32
    mipmapFilterMode::cudaTextureFilterMode
    mipmapLevelBias::Cfloat
    minMipmapLevelClamp::Cfloat
    maxMipmapLevelClamp::Cfloat
    __cudaReserved::NTuple{15,Cint}
end

immutable cudaTextureDesc
    addressMode::NTuple{3,cudaTextureAddressMode}
    filterMode::cudaTextureFilterMode
    readMode::cudaTextureReadMode
    sRGB::Cint
    normalizedCoords::Cint
    maxAnisotropy::UInt32
    mipmapFilterMode::cudaTextureFilterMode
    mipmapLevelBias::Cfloat
    minMipmapLevelClamp::Cfloat
    maxMipmapLevelClamp::Cfloat
end

typealias cudaTextureObject_t Culonglong

immutable char1
    x::UInt8
end

immutable uchar1
    x::Cuchar
end

immutable char3
    x::UInt8
    y::UInt8
    z::UInt8
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
    x::UInt16
end

immutable short3
    x::Int16
    y::Int16
    z::Int16
end

immutable ushort3
    x::UInt16
    y::UInt16
    z::UInt16
end

immutable int1
    x::Cint
end

immutable uint1
    x::UInt32
end

immutable int3
    x::Cint
    y::Cint
    z::Cint
end

immutable uint3
    x::UInt32
    y::UInt32
    z::UInt32
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
    x::UInt32
    y::UInt32
    z::UInt32
end

const CUDART_VERSION = 7050

()

typealias cudaStreamCallback_t Ptr{Void}

# Skipping MacroDefinition: GLAPI __attribute__ ( ( visibility ( "default" ) ) )

const APIENTRY = GLAPIENTRY
const APIENTRYP = $(Expr(:incomplete, "incomplete: premature end of input"))
const GLAPIENTRYP = $(Expr(:incomplete, "incomplete: premature end of input"))
const GL_VERSION_1_1 = 1
const GL_VERSION_1_2 = 1
const GL_VERSION_1_3 = 1
const GL_ARB_imaging = 1
const GL_FALSE = 0
const GL_TRUE = 1
const GL_BYTE = 0x1400
const GL_UNSIGNED_BYTE = 0x1401
const GL_SHORT = 0x1402
const GL_UNSIGNED_SHORT = 0x1403
const GL_INT = 0x1404
const GL_UNSIGNED_INT = 0x1405
const GL_FLOAT = 0x1406
const GL_2_BYTES = 0x1407
const GL_3_BYTES = 0x1408
const GL_4_BYTES = 0x1409
const GL_DOUBLE = 0x140a
const GL_POINTS = 0x0000
const GL_LINES = 0x0001
const GL_LINE_LOOP = 0x0002
const GL_LINE_STRIP = 0x0003
const GL_TRIANGLES = 0x0004
const GL_TRIANGLE_STRIP = 0x0005
const GL_TRIANGLE_FAN = 0x0006
const GL_QUADS = 0x0007
const GL_QUAD_STRIP = 0x0008
const GL_POLYGON = 0x0009
const GL_VERTEX_ARRAY = 0x8074
const GL_NORMAL_ARRAY = 0x8075
const GL_COLOR_ARRAY = 0x8076
const GL_INDEX_ARRAY = 0x8077
const GL_TEXTURE_COORD_ARRAY = 0x8078
const GL_EDGE_FLAG_ARRAY = 0x8079
const GL_VERTEX_ARRAY_SIZE = 0x807a
const GL_VERTEX_ARRAY_TYPE = 0x807b
const GL_VERTEX_ARRAY_STRIDE = 0x807c
const GL_NORMAL_ARRAY_TYPE = 0x807e
const GL_NORMAL_ARRAY_STRIDE = Float32(0x0807)
const GL_COLOR_ARRAY_SIZE = 0x8081
const GL_COLOR_ARRAY_TYPE = 0x8082
const GL_COLOR_ARRAY_STRIDE = 0x8083
const GL_INDEX_ARRAY_TYPE = 0x8085
const GL_INDEX_ARRAY_STRIDE = 0x8086
const GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088
const GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089
const GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808a
const GL_EDGE_FLAG_ARRAY_STRIDE = 0x808c
const GL_VERTEX_ARRAY_POINTER = 0x808e
const GL_NORMAL_ARRAY_POINTER = Float32(0x0808)
const GL_COLOR_ARRAY_POINTER = 0x8090
const GL_INDEX_ARRAY_POINTER = 0x8091
const GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092
const GL_EDGE_FLAG_ARRAY_POINTER = 0x8093
const GL_V2F = 0x2a20
const GL_V3F = 0x2a21
const GL_C4UB_V2F = 0x2a22
const GL_C4UB_V3F = 0x2a23
const GL_C3F_V3F = 0x2a24
const GL_N3F_V3F = 0x2a25
const GL_C4F_N3F_V3F = 0x2a26
const GL_T2F_V3F = 0x2a27
const GL_T4F_V4F = 0x2a28
const GL_T2F_C4UB_V3F = 0x2a29
const GL_T2F_C3F_V3F = 0x2a2a
const GL_T2F_N3F_V3F = 0x2a2b
const GL_T2F_C4F_N3F_V3F = 0x2a2c
const GL_T4F_C4F_N3F_V4F = 0x2a2d
const GL_MATRIX_MODE = 0x0ba0
const GL_MODELVIEW = 0x1700
const GL_PROJECTION = 0x1701
const GL_TEXTURE = 0x1702
const GL_POINT_SMOOTH = 0x0b10
const GL_POINT_SIZE = 0x0b11
const GL_POINT_SIZE_GRANULARITY = 0x0b13
const GL_POINT_SIZE_RANGE = 0x0b12
const GL_LINE_SMOOTH = 0x0b20
const GL_LINE_STIPPLE = 0x0b24
const GL_LINE_STIPPLE_PATTERN = 0x0b25
const GL_LINE_STIPPLE_REPEAT = 0x0b26
const GL_LINE_WIDTH = 0x0b21
const GL_LINE_WIDTH_GRANULARITY = 0x0b23
const GL_LINE_WIDTH_RANGE = 0x0b22
const GL_POINT = 0x1b00
const GL_LINE = 0x1b01
const GL_FILL = 0x1b02
const GL_CW = 0x0900
const GL_CCW = 0x0901
const GL_FRONT = 0x0404
const GL_BACK = 0x0405
const GL_POLYGON_MODE = 0x0b40
const GL_POLYGON_SMOOTH = 0x0b41
const GL_POLYGON_STIPPLE = 0x0b42
const GL_EDGE_FLAG = 0x0b43
const GL_CULL_FACE = 0x0b44
const GL_CULL_FACE_MODE = 0x0b45
const GL_FRONT_FACE = 0x0b46
const GL_POLYGON_OFFSET_FACTOR = 0x8038
const GL_POLYGON_OFFSET_UNITS = 0x2a00
const GL_POLYGON_OFFSET_POINT = 0x2a01
const GL_POLYGON_OFFSET_LINE = 0x2a02
const GL_POLYGON_OFFSET_FILL = 0x8037
const GL_COMPILE = 0x1300
const GL_COMPILE_AND_EXECUTE = 0x1301
const GL_LIST_BASE = 0x0b32
const GL_LIST_INDEX = 0x0b33
const GL_LIST_MODE = 0x0b30
const GL_NEVER = 0x0200
const GL_LESS = 0x0201
const GL_EQUAL = 0x0202
const GL_LEQUAL = 0x0203
const GL_GREATER = 0x0204
const GL_NOTEQUAL = 0x0205
const GL_GEQUAL = 0x0206
const GL_ALWAYS = 0x0207
const GL_DEPTH_TEST = 0x0b71
const GL_DEPTH_BITS = 0x0d56
const GL_DEPTH_CLEAR_VALUE = 0x0b73
const GL_DEPTH_FUNC = 0x0b74
const GL_DEPTH_RANGE = 0x0b70
const GL_DEPTH_WRITEMASK = 0x0b72
const GL_DEPTH_COMPONENT = 0x1902
const GL_LIGHTING = 0x0b50
const GL_LIGHT0 = 0x4000
const GL_LIGHT1 = 0x4001
const GL_LIGHT2 = 0x4002
const GL_LIGHT3 = 0x4003
const GL_LIGHT4 = 0x4004
const GL_LIGHT5 = 0x4005
const GL_LIGHT6 = 0x4006
const GL_LIGHT7 = 0x4007
const GL_SPOT_EXPONENT = 0x1205
const GL_SPOT_CUTOFF = 0x1206
const GL_CONSTANT_ATTENUATION = 0x1207
const GL_LINEAR_ATTENUATION = 0x1208
const GL_QUADRATIC_ATTENUATION = 0x1209
const GL_AMBIENT = 0x1200
const GL_DIFFUSE = 0x1201
const GL_SPECULAR = 0x1202
const GL_SHININESS = 0x1601
const GL_EMISSION = 0x1600
const GL_POSITION = 0x1203
const GL_SPOT_DIRECTION = 0x1204
const GL_AMBIENT_AND_DIFFUSE = 0x1602
const GL_COLOR_INDEXES = 0x1603
const GL_LIGHT_MODEL_TWO_SIDE = 0x0b52
const GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0b51
const GL_LIGHT_MODEL_AMBIENT = 0x0b53
const GL_FRONT_AND_BACK = 0x0408
const GL_SHADE_MODEL = 0x0b54
const GL_FLAT = 0x1d00
const GL_SMOOTH = 0x1d01
const GL_COLOR_MATERIAL = 0x0b57
const GL_COLOR_MATERIAL_FACE = 0x0b55
const GL_COLOR_MATERIAL_PARAMETER = 0x0b56
const GL_NORMALIZE = 0x0ba1
const GL_CLIP_PLANE0 = 0x3000
const GL_CLIP_PLANE1 = 0x3001
const GL_CLIP_PLANE2 = 0x3002
const GL_CLIP_PLANE3 = 0x3003
const GL_CLIP_PLANE4 = 0x3004
const GL_CLIP_PLANE5 = 0x3005
const GL_ACCUM_RED_BITS = 0x0d58
const GL_ACCUM_GREEN_BITS = 0x0d59
const GL_ACCUM_BLUE_BITS = 0x0d5a
const GL_ACCUM_ALPHA_BITS = 0x0d5b
const GL_ACCUM_CLEAR_VALUE = 0x0b80
const GL_ACCUM = 0x0100
const GL_ADD = 0x0104
const GL_LOAD = 0x0101
const GL_MULT = 0x0103
const GL_RETURN = 0x0102
const GL_ALPHA_TEST = 0x0bc0
const GL_ALPHA_TEST_REF = 0x0bc2
const GL_ALPHA_TEST_FUNC = 0x0bc1
const GL_BLEND = 0x0be2
const GL_BLEND_SRC = 0x0be1
const GL_BLEND_DST = 0x0be0
const GL_ZERO = 0
const GL_ONE = 1
const GL_SRC_COLOR = 0x0300
const GL_ONE_MINUS_SRC_COLOR = 0x0301
const GL_SRC_ALPHA = 0x0302
const GL_ONE_MINUS_SRC_ALPHA = 0x0303
const GL_DST_ALPHA = 0x0304
const GL_ONE_MINUS_DST_ALPHA = 0x0305
const GL_DST_COLOR = 0x0306
const GL_ONE_MINUS_DST_COLOR = 0x0307
const GL_SRC_ALPHA_SATURATE = 0x0308
const GL_FEEDBACK = 0x1c01
const GL_RENDER = 0x1c00
const GL_SELECT = 0x1c02
const GL_2D = 0x0600
const GL_3D = 0x0601
const GL_3D_COLOR = 0x0602
const GL_3D_COLOR_TEXTURE = 0x0603
const GL_4D_COLOR_TEXTURE = 0x0604
const GL_POINT_TOKEN = 0x0701
const GL_LINE_TOKEN = 0x0702
const GL_LINE_RESET_TOKEN = 0x0707
const GL_POLYGON_TOKEN = 0x0703
const GL_BITMAP_TOKEN = 0x0704
const GL_DRAW_PIXEL_TOKEN = 0x0705
const GL_COPY_PIXEL_TOKEN = 0x0706
const GL_PASS_THROUGH_TOKEN = 0x0700
const GL_FEEDBACK_BUFFER_POINTER = 0x0df0
const GL_FEEDBACK_BUFFER_SIZE = 0x0df1
const GL_FEEDBACK_BUFFER_TYPE = 0x0df2
const GL_SELECTION_BUFFER_POINTER = 0x0df3
const GL_SELECTION_BUFFER_SIZE = 0x0df4
const GL_FOG = 0x0b60
const GL_FOG_MODE = 0x0b65
const GL_FOG_DENSITY = 0x0b62
const GL_FOG_COLOR = 0x0b66
const GL_FOG_INDEX = 0x0b61
const GL_FOG_START = 0x0b63
const GL_FOG_END = 0x0b64
const GL_LINEAR = 0x2601
const GL_EXP = 0x0800
const GL_EXP2 = 0x0801
const GL_LOGIC_OP = 0x0bf1
const GL_INDEX_LOGIC_OP = 0x0bf1
const GL_COLOR_LOGIC_OP = 0x0bf2
const GL_LOGIC_OP_MODE = 0x0bf0
const GL_CLEAR = 0x1500
const GL_SET = Float32(0x0150)
const GL_COPY = 0x1503
const GL_COPY_INVERTED = 0x150c
const GL_NOOP = 0x1505
const GL_INVERT = 0x150a
const GL_AND = 0x1501
const GL_NAND = 0x150e
const GL_OR = 0x1507
const GL_NOR = 0x1508
const GL_XOR = 0x1506
const GL_EQUIV = 0x1509
const GL_AND_REVERSE = 0x1502
const GL_AND_INVERTED = 0x1504
const GL_OR_REVERSE = 0x150b
const GL_OR_INVERTED = 0x150d
const GL_STENCIL_BITS = 0x0d57
const GL_STENCIL_TEST = 0x0b90
const GL_STENCIL_CLEAR_VALUE = 0x0b91
const GL_STENCIL_FUNC = 0x0b92
const GL_STENCIL_VALUE_MASK = 0x0b93
const GL_STENCIL_FAIL = 0x0b94
const GL_STENCIL_PASS_DEPTH_FAIL = 0x0b95
const GL_STENCIL_PASS_DEPTH_PASS = 0x0b96
const GL_STENCIL_REF = 0x0b97
const GL_STENCIL_WRITEMASK = 0x0b98
const GL_STENCIL_INDEX = 0x1901
const GL_KEEP = 0x1e00
const GL_REPLACE = 0x1e01
const GL_INCR = 0x1e02
const GL_DECR = 0x1e03
const GL_NONE = 0
const GL_LEFT = 0x0406
const GL_RIGHT = 0x0407
const GL_FRONT_LEFT = 0x0400
const GL_FRONT_RIGHT = 0x0401
const GL_BACK_LEFT = 0x0402
const GL_BACK_RIGHT = 0x0403
const GL_AUX0 = 0x0409
const GL_AUX1 = 0x040a
const GL_AUX2 = 0x040b
const GL_AUX3 = 0x040c
const GL_COLOR_INDEX = 0x1900
const GL_RED = 0x1903
const GL_GREEN = 0x1904
const GL_BLUE = 0x1905
const GL_ALPHA = 0x1906
const GL_LUMINANCE = 0x1909
const GL_LUMINANCE_ALPHA = 0x190a
const GL_ALPHA_BITS = 0x0d55
const GL_RED_BITS = 0x0d52
const GL_GREEN_BITS = 0x0d53
const GL_BLUE_BITS = 0x0d54
const GL_INDEX_BITS = 0x0d51
const GL_SUBPIXEL_BITS = 0x0d50
const GL_AUX_BUFFERS = 0x0c00
const GL_READ_BUFFER = 0x0c02
const GL_DRAW_BUFFER = 0x0c01
const GL_DOUBLEBUFFER = 0x0c32
const GL_STEREO = 0x0c33
const GL_BITMAP = 0x1a00
const GL_COLOR = 0x1800
const GL_DEPTH = 0x1801
const GL_STENCIL = 0x1802
const GL_DITHER = 0x0bd0
const GL_RGB = 0x1907
const GL_RGBA = 0x1908
const GL_MAX_LIST_NESTING = 0x0b31
const GL_MAX_EVAL_ORDER = 0x0d30
const GL_MAX_LIGHTS = 0x0d31
const GL_MAX_CLIP_PLANES = 0x0d32
const GL_MAX_TEXTURE_SIZE = 0x0d33
const GL_MAX_PIXEL_MAP_TABLE = 0x0d34
const GL_MAX_ATTRIB_STACK_DEPTH = 0x0d35
const GL_MAX_MODELVIEW_STACK_DEPTH = 0x0d36
const GL_MAX_NAME_STACK_DEPTH = 0x0d37
const GL_MAX_PROJECTION_STACK_DEPTH = 0x0d38
const GL_MAX_TEXTURE_STACK_DEPTH = 0x0d39
const GL_MAX_VIEWPORT_DIMS = 0x0d3a
const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0d3b
const GL_ATTRIB_STACK_DEPTH = 0x0bb0
const GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0bb1
const GL_COLOR_CLEAR_VALUE = 0x0c22
const GL_COLOR_WRITEMASK = 0x0c23
const GL_CURRENT_INDEX = 0x0b01
const GL_CURRENT_COLOR = 0x0b00
const GL_CURRENT_NORMAL = 0x0b02
const GL_CURRENT_RASTER_COLOR = 0x0b04
const GL_CURRENT_RASTER_DISTANCE = 0x0b09
const GL_CURRENT_RASTER_INDEX = 0x0b05
const GL_CURRENT_RASTER_POSITION = 0x0b07
const GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0b06
const GL_CURRENT_RASTER_POSITION_VALID = 0x0b08
const GL_CURRENT_TEXTURE_COORDS = 0x0b03
const GL_INDEX_CLEAR_VALUE = 0x0c20
const GL_INDEX_MODE = 0x0c30
const GL_INDEX_WRITEMASK = 0x0c21
const GL_MODELVIEW_MATRIX = 0x0ba6
const GL_MODELVIEW_STACK_DEPTH = 0x0ba3
const GL_NAME_STACK_DEPTH = 0x0d70
const GL_PROJECTION_MATRIX = 0x0ba7
const GL_PROJECTION_STACK_DEPTH = 0x0ba4
const GL_RENDER_MODE = 0x0c40
const GL_RGBA_MODE = 0x0c31
const GL_TEXTURE_MATRIX = 0x0ba8
const GL_TEXTURE_STACK_DEPTH = 0x0ba5
const GL_VIEWPORT = 0x0ba2
const GL_AUTO_NORMAL = 0x0d80
const GL_MAP1_COLOR_4 = 0x0d90
const GL_MAP1_INDEX = 0x0d91
const GL_MAP1_NORMAL = 0x0d92
const GL_MAP1_TEXTURE_COORD_1 = 0x0d93
const GL_MAP1_TEXTURE_COORD_2 = 0x0d94
const GL_MAP1_TEXTURE_COORD_3 = 0x0d95
const GL_MAP1_TEXTURE_COORD_4 = 0x0d96
const GL_MAP1_VERTEX_3 = 0x0d97
const GL_MAP1_VERTEX_4 = 0x0d98
const GL_MAP2_COLOR_4 = 0x0db0
const GL_MAP2_INDEX = 0x0db1
const GL_MAP2_NORMAL = 0x0db2
const GL_MAP2_TEXTURE_COORD_1 = 0x0db3
const GL_MAP2_TEXTURE_COORD_2 = 0x0db4
const GL_MAP2_TEXTURE_COORD_3 = 0x0db5
const GL_MAP2_TEXTURE_COORD_4 = 0x0db6
const GL_MAP2_VERTEX_3 = 0x0db7
const GL_MAP2_VERTEX_4 = 0x0db8
const GL_MAP1_GRID_DOMAIN = 0x0dd0
const GL_MAP1_GRID_SEGMENTS = 0x0dd1
const GL_MAP2_GRID_DOMAIN = 0x0dd2
const GL_MAP2_GRID_SEGMENTS = 0x0dd3
const GL_COEFF = 0x0a00
const GL_ORDER = 0x0a01
const GL_DOMAIN = 0x0a02
const GL_PERSPECTIVE_CORRECTION_HINT = 0x0c50
const GL_POINT_SMOOTH_HINT = 0x0c51
const GL_LINE_SMOOTH_HINT = 0x0c52
const GL_POLYGON_SMOOTH_HINT = 0x0c53
const GL_FOG_HINT = 0x0c54
const GL_DONT_CARE = 0x1100
const GL_FASTEST = 0x1101
const GL_NICEST = 0x1102
const GL_SCISSOR_BOX = 0x0c10
const GL_SCISSOR_TEST = 0x0c11
const GL_MAP_COLOR = 0x0d10
const GL_MAP_STENCIL = 0x0d11
const GL_INDEX_SHIFT = 0x0d12
const GL_INDEX_OFFSET = 0x0d13
const GL_RED_SCALE = 0x0d14
const GL_RED_BIAS = 0x0d15
const GL_GREEN_SCALE = 0x0d18
const GL_GREEN_BIAS = 0x0d19
const GL_BLUE_SCALE = 0x0d1a
const GL_BLUE_BIAS = 0x0d1b
const GL_ALPHA_SCALE = 0x0d1c
const GL_ALPHA_BIAS = 0x0d1d
const GL_DEPTH_SCALE = 0x0d1e
const GL_DEPTH_BIAS = Float32(0x00d1)
const GL_PIXEL_MAP_S_TO_S_SIZE = 0x0cb1
const GL_PIXEL_MAP_I_TO_I_SIZE = 0x0cb0
const GL_PIXEL_MAP_I_TO_R_SIZE = 0x0cb2
const GL_PIXEL_MAP_I_TO_G_SIZE = 0x0cb3
const GL_PIXEL_MAP_I_TO_B_SIZE = 0x0cb4
const GL_PIXEL_MAP_I_TO_A_SIZE = 0x0cb5
const GL_PIXEL_MAP_R_TO_R_SIZE = 0x0cb6
const GL_PIXEL_MAP_G_TO_G_SIZE = 0x0cb7
const GL_PIXEL_MAP_B_TO_B_SIZE = 0x0cb8
const GL_PIXEL_MAP_A_TO_A_SIZE = 0x0cb9
const GL_PIXEL_MAP_S_TO_S = 0x0c71
const GL_PIXEL_MAP_I_TO_I = 0x0c70
const GL_PIXEL_MAP_I_TO_R = 0x0c72
const GL_PIXEL_MAP_I_TO_G = 0x0c73
const GL_PIXEL_MAP_I_TO_B = 0x0c74
const GL_PIXEL_MAP_I_TO_A = 0x0c75
const GL_PIXEL_MAP_R_TO_R = 0x0c76
const GL_PIXEL_MAP_G_TO_G = 0x0c77
const GL_PIXEL_MAP_B_TO_B = 0x0c78
const GL_PIXEL_MAP_A_TO_A = 0x0c79
const GL_PACK_ALIGNMENT = 0x0d05
const GL_PACK_LSB_FIRST = 0x0d01
const GL_PACK_ROW_LENGTH = 0x0d02
const GL_PACK_SKIP_PIXELS = 0x0d04
const GL_PACK_SKIP_ROWS = 0x0d03
const GL_PACK_SWAP_BYTES = 0x0d00
const GL_UNPACK_ALIGNMENT = 0x0cf5
const GL_UNPACK_LSB_FIRST = 0x0cf1
const GL_UNPACK_ROW_LENGTH = 0x0cf2
const GL_UNPACK_SKIP_PIXELS = 0x0cf4
const GL_UNPACK_SKIP_ROWS = 0x0cf3
const GL_UNPACK_SWAP_BYTES = 0x0cf0
const GL_ZOOM_X = 0x0d16
const GL_ZOOM_Y = 0x0d17
const GL_TEXTURE_ENV = 0x2300
const GL_TEXTURE_ENV_MODE = 0x2200
const GL_TEXTURE_1D = 0x0de0
const GL_TEXTURE_2D = 0x0de1
const GL_TEXTURE_WRAP_S = 0x2802
const GL_TEXTURE_WRAP_T = 0x2803
const GL_TEXTURE_MAG_FILTER = 0x2800
const GL_TEXTURE_MIN_FILTER = 0x2801
const GL_TEXTURE_ENV_COLOR = 0x2201
const GL_TEXTURE_GEN_S = 0x0c60
const GL_TEXTURE_GEN_T = 0x0c61
const GL_TEXTURE_GEN_R = 0x0c62
const GL_TEXTURE_GEN_Q = 0x0c63
const GL_TEXTURE_GEN_MODE = 0x2500
const GL_TEXTURE_BORDER_COLOR = 0x1004
const GL_TEXTURE_WIDTH = 0x1000
const GL_TEXTURE_HEIGHT = 0x1001
const GL_TEXTURE_BORDER = 0x1005
const GL_TEXTURE_COMPONENTS = 0x1003
const GL_TEXTURE_RED_SIZE = 0x805c
const GL_TEXTURE_GREEN_SIZE = 0x805d
const GL_TEXTURE_BLUE_SIZE = 0x805e
const GL_TEXTURE_ALPHA_SIZE = Float32(0x0805)
const GL_TEXTURE_LUMINANCE_SIZE = 0x8060
const GL_TEXTURE_INTENSITY_SIZE = 0x8061
const GL_NEAREST_MIPMAP_NEAREST = 0x2700
const GL_NEAREST_MIPMAP_LINEAR = 0x2702
const GL_LINEAR_MIPMAP_NEAREST = 0x2701
const GL_LINEAR_MIPMAP_LINEAR = 0x2703
const GL_OBJECT_LINEAR = 0x2401
const GL_OBJECT_PLANE = 0x2501
const GL_EYE_LINEAR = 0x2400
const GL_EYE_PLANE = 0x2502
const GL_SPHERE_MAP = 0x2402
const GL_DECAL = 0x2101
const GL_MODULATE = 0x2100
const GL_NEAREST = 0x2600
const GL_REPEAT = 0x2901
const GL_CLAMP = 0x2900
const GL_S = 0x2000
const GL_T = 0x2001
const GL_R = 0x2002
const GL_Q = 0x2003
const GL_VENDOR = 0x1f00
const GL_RENDERER = 0x1f01
const GL_VERSION = 0x1f02
const GL_EXTENSIONS = 0x1f03
const GL_NO_ERROR = 0
const GL_INVALID_ENUM = 0x0500
const GL_INVALID_VALUE = 0x0501
const GL_INVALID_OPERATION = 0x0502
const GL_STACK_OVERFLOW = 0x0503
const GL_STACK_UNDERFLOW = 0x0504
const GL_OUT_OF_MEMORY = 0x0505
const GL_CURRENT_BIT = 0x00000001
const GL_POINT_BIT = 0x00000002
const GL_LINE_BIT = 0x00000004
const GL_POLYGON_BIT = 0x00000008
const GL_POLYGON_STIPPLE_BIT = 0x00000010
const GL_PIXEL_MODE_BIT = 0x00000020
const GL_LIGHTING_BIT = 0x00000040
const GL_FOG_BIT = 0x00000080
const GL_DEPTH_BUFFER_BIT = 0x00000100
const GL_ACCUM_BUFFER_BIT = 0x00000200
const GL_STENCIL_BUFFER_BIT = 0x00000400
const GL_VIEWPORT_BIT = 0x00000800
const GL_TRANSFORM_BIT = 0x00001000
const GL_ENABLE_BIT = 0x00002000
const GL_COLOR_BUFFER_BIT = 0x00004000
const GL_HINT_BIT = 0x00008000
const GL_EVAL_BIT = 0x00010000
const GL_LIST_BIT = 0x00020000
const GL_TEXTURE_BIT = 0x00040000
const GL_SCISSOR_BIT = 0x00080000
const GL_ALL_ATTRIB_BITS = Float32(0x0fffffff)
const GL_PROXY_TEXTURE_1D = 0x8063
const GL_PROXY_TEXTURE_2D = 0x8064
const GL_TEXTURE_PRIORITY = 0x8066
const GL_TEXTURE_RESIDENT = 0x8067
const GL_TEXTURE_BINDING_1D = 0x8068
const GL_TEXTURE_BINDING_2D = 0x8069
const GL_TEXTURE_INTERNAL_FORMAT = 0x1003
const GL_ALPHA4 = 0x803b
const GL_ALPHA8 = 0x803c
const GL_ALPHA12 = 0x803d
const GL_ALPHA16 = 0x803e
const GL_LUMINANCE4 = Float32(0x0803)
const GL_LUMINANCE8 = 0x8040
const GL_LUMINANCE12 = 0x8041
const GL_LUMINANCE16 = 0x8042
const GL_LUMINANCE4_ALPHA4 = 0x8043
const GL_LUMINANCE6_ALPHA2 = 0x8044
const GL_LUMINANCE8_ALPHA8 = 0x8045
const GL_LUMINANCE12_ALPHA4 = 0x8046
const GL_LUMINANCE12_ALPHA12 = 0x8047
const GL_LUMINANCE16_ALPHA16 = 0x8048
const GL_INTENSITY = 0x8049
const GL_INTENSITY4 = 0x804a
const GL_INTENSITY8 = 0x804b
const GL_INTENSITY12 = 0x804c
const GL_INTENSITY16 = 0x804d
const GL_R3_G3_B2 = 0x2a10
const GL_RGB4 = Float32(0x0804)
const GL_RGB5 = 0x8050
const GL_RGB8 = 0x8051
const GL_RGB10 = 0x8052
const GL_RGB12 = 0x8053
const GL_RGB16 = 0x8054
const GL_RGBA2 = 0x8055
const GL_RGBA4 = 0x8056
const GL_RGB5_A1 = 0x8057
const GL_RGBA8 = 0x8058
const GL_RGB10_A2 = 0x8059
const GL_RGBA12 = 0x805a
const GL_RGBA16 = 0x805b
const GL_CLIENT_PIXEL_STORE_BIT = 0x00000001
const GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002
const GL_ALL_CLIENT_ATTRIB_BITS = Float32(0x0fffffff)
const GL_CLIENT_ALL_ATTRIB_BITS = Float32(0x0fffffff)
const GL_RESCALE_NORMAL = 0x803a
const GL_CLAMP_TO_EDGE = Float32(0x0812)
const GL_MAX_ELEMENTS_VERTICES = 0x80e8
const GL_MAX_ELEMENTS_INDICES = 0x80e9
const GL_BGR = 0x80e0
const GL_BGRA = 0x80e1
const GL_UNSIGNED_BYTE_3_3_2 = 0x8032
const GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362
const GL_UNSIGNED_SHORT_5_6_5 = 0x8363
const GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364
const GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033
const GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365
const GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034
const GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366
const GL_UNSIGNED_INT_8_8_8_8 = 0x8035
const GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367
const GL_UNSIGNED_INT_10_10_10_2 = 0x8036
const GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368
const GL_LIGHT_MODEL_COLOR_CONTROL = 0x81f8
const GL_SINGLE_COLOR = 0x81f9
const GL_SEPARATE_SPECULAR_COLOR = 0x81fa
const GL_TEXTURE_MIN_LOD = 0x813a
const GL_TEXTURE_MAX_LOD = 0x813b
const GL_TEXTURE_BASE_LEVEL = 0x813c
const GL_TEXTURE_MAX_LEVEL = 0x813d
const GL_SMOOTH_POINT_SIZE_RANGE = 0x0b12
const GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0b13
const GL_SMOOTH_LINE_WIDTH_RANGE = 0x0b22
const GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0b23
const GL_ALIASED_POINT_SIZE_RANGE = 0x846d
const GL_ALIASED_LINE_WIDTH_RANGE = 0x846e
const GL_PACK_SKIP_IMAGES = 0x806b
const GL_PACK_IMAGE_HEIGHT = 0x806c
const GL_UNPACK_SKIP_IMAGES = 0x806d
const GL_UNPACK_IMAGE_HEIGHT = 0x806e
const GL_TEXTURE_3D = Float32(0x0806)
const GL_PROXY_TEXTURE_3D = 0x8070
const GL_TEXTURE_DEPTH = 0x8071
const GL_TEXTURE_WRAP_R = 0x8072
const GL_MAX_3D_TEXTURE_SIZE = 0x8073
const GL_TEXTURE_BINDING_3D = 0x806a
const GL_CONSTANT_COLOR = 0x8001
const GL_ONE_MINUS_CONSTANT_COLOR = 0x8002
const GL_CONSTANT_ALPHA = 0x8003
const GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004
const GL_COLOR_TABLE = 0x80d0
const GL_POST_CONVOLUTION_COLOR_TABLE = 0x80d1
const GL_POST_COLOR_MATRIX_COLOR_TABLE = 0x80d2
const GL_PROXY_COLOR_TABLE = 0x80d3
const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80d4
const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80d5
const GL_COLOR_TABLE_SCALE = 0x80d6
const GL_COLOR_TABLE_BIAS = 0x80d7
const GL_COLOR_TABLE_FORMAT = 0x80d8
const GL_COLOR_TABLE_WIDTH = 0x80d9
const GL_COLOR_TABLE_RED_SIZE = 0x80da
const GL_COLOR_TABLE_GREEN_SIZE = 0x80db
const GL_COLOR_TABLE_BLUE_SIZE = 0x80dc
const GL_COLOR_TABLE_ALPHA_SIZE = 0x80dd
const GL_COLOR_TABLE_LUMINANCE_SIZE = 0x80de
const GL_COLOR_TABLE_INTENSITY_SIZE = Float32(0x080d)
const GL_CONVOLUTION_1D = 0x8010
const GL_CONVOLUTION_2D = 0x8011
const GL_SEPARABLE_2D = 0x8012
const GL_CONVOLUTION_BORDER_MODE = 0x8013
const GL_CONVOLUTION_FILTER_SCALE = 0x8014
const GL_CONVOLUTION_FILTER_BIAS = 0x8015
const GL_REDUCE = 0x8016
const GL_CONVOLUTION_FORMAT = 0x8017
const GL_CONVOLUTION_WIDTH = 0x8018
const GL_CONVOLUTION_HEIGHT = 0x8019
const GL_MAX_CONVOLUTION_WIDTH = 0x801a
const GL_MAX_CONVOLUTION_HEIGHT = 0x801b
const GL_POST_CONVOLUTION_RED_SCALE = 0x801c
const GL_POST_CONVOLUTION_GREEN_SCALE = 0x801d
const GL_POST_CONVOLUTION_BLUE_SCALE = 0x801e
const GL_POST_CONVOLUTION_ALPHA_SCALE = Float32(0x0801)
const GL_POST_CONVOLUTION_RED_BIAS = 0x8020
const GL_POST_CONVOLUTION_GREEN_BIAS = 0x8021
const GL_POST_CONVOLUTION_BLUE_BIAS = 0x8022
const GL_POST_CONVOLUTION_ALPHA_BIAS = 0x8023
const GL_CONSTANT_BORDER = 0x8151
const GL_REPLICATE_BORDER = 0x8153
const GL_CONVOLUTION_BORDER_COLOR = 0x8154
const GL_COLOR_MATRIX = 0x80b1
const GL_COLOR_MATRIX_STACK_DEPTH = 0x80b2
const GL_MAX_COLOR_MATRIX_STACK_DEPTH = 0x80b3
const GL_POST_COLOR_MATRIX_RED_SCALE = 0x80b4
const GL_POST_COLOR_MATRIX_GREEN_SCALE = 0x80b5
const GL_POST_COLOR_MATRIX_BLUE_SCALE = 0x80b6
const GL_POST_COLOR_MATRIX_ALPHA_SCALE = 0x80b7
const GL_POST_COLOR_MATRIX_RED_BIAS = 0x80b8
const GL_POST_COLOR_MATRIX_GREEN_BIAS = 0x80b9
const GL_POST_COLOR_MATRIX_BLUE_BIAS = 0x80ba
const GL_POST_COLOR_MATRIX_ALPHA_BIAS = 0x80bb
const GL_HISTOGRAM = 0x8024
const GL_PROXY_HISTOGRAM = 0x8025
const GL_HISTOGRAM_WIDTH = 0x8026
const GL_HISTOGRAM_FORMAT = 0x8027
const GL_HISTOGRAM_RED_SIZE = 0x8028
const GL_HISTOGRAM_GREEN_SIZE = 0x8029
const GL_HISTOGRAM_BLUE_SIZE = 0x802a
const GL_HISTOGRAM_ALPHA_SIZE = 0x802b
const GL_HISTOGRAM_LUMINANCE_SIZE = 0x802c
const GL_HISTOGRAM_SINK = 0x802d
const GL_MINMAX = 0x802e
const GL_MINMAX_FORMAT = Float32(0x0802)
const GL_MINMAX_SINK = 0x8030
const GL_TABLE_TOO_LARGE = 0x8031
const GL_BLEND_EQUATION = 0x8009
const GL_MIN = 0x8007
const GL_MAX = 0x8008
const GL_FUNC_ADD = 0x8006
const GL_FUNC_SUBTRACT = 0x800a
const GL_FUNC_REVERSE_SUBTRACT = 0x800b
const GL_BLEND_COLOR = 0x8005
const GL_TEXTURE0 = 0x84c0
const GL_TEXTURE1 = 0x84c1
const GL_TEXTURE2 = 0x84c2
const GL_TEXTURE3 = 0x84c3
const GL_TEXTURE4 = 0x84c4
const GL_TEXTURE5 = 0x84c5
const GL_TEXTURE6 = 0x84c6
const GL_TEXTURE7 = 0x84c7
const GL_TEXTURE8 = 0x84c8
const GL_TEXTURE9 = 0x84c9
const GL_TEXTURE10 = 0x84ca
const GL_TEXTURE11 = 0x84cb
const GL_TEXTURE12 = 0x84cc
const GL_TEXTURE13 = 0x84cd
const GL_TEXTURE14 = 0x84ce
const GL_TEXTURE15 = Float32(0x084c)
const GL_TEXTURE16 = 0x84d0
const GL_TEXTURE17 = 0x84d1
const GL_TEXTURE18 = 0x84d2
const GL_TEXTURE19 = 0x84d3
const GL_TEXTURE20 = 0x84d4
const GL_TEXTURE21 = 0x84d5
const GL_TEXTURE22 = 0x84d6
const GL_TEXTURE23 = 0x84d7
const GL_TEXTURE24 = 0x84d8
const GL_TEXTURE25 = 0x84d9
const GL_TEXTURE26 = 0x84da
const GL_TEXTURE27 = 0x84db
const GL_TEXTURE28 = 0x84dc
const GL_TEXTURE29 = 0x84dd
const GL_TEXTURE30 = 0x84de
const GL_TEXTURE31 = Float32(0x084d)
const GL_ACTIVE_TEXTURE = 0x84e0
const GL_CLIENT_ACTIVE_TEXTURE = 0x84e1
const GL_MAX_TEXTURE_UNITS = 0x84e2
const GL_NORMAL_MAP = 0x8511
const GL_REFLECTION_MAP = 0x8512
const GL_TEXTURE_CUBE_MAP = 0x8513
const GL_TEXTURE_BINDING_CUBE_MAP = 0x8514
const GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851a
const GL_PROXY_TEXTURE_CUBE_MAP = 0x851b
const GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851c
const GL_COMPRESSED_ALPHA = 0x84e9
const GL_COMPRESSED_LUMINANCE = 0x84ea
const GL_COMPRESSED_LUMINANCE_ALPHA = 0x84eb
const GL_COMPRESSED_INTENSITY = 0x84ec
const GL_COMPRESSED_RGB = 0x84ed
const GL_COMPRESSED_RGBA = 0x84ee
const GL_TEXTURE_COMPRESSION_HINT = Float32(0x084e)
const GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86a0
const GL_TEXTURE_COMPRESSED = 0x86a1
const GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86a2
const GL_COMPRESSED_TEXTURE_FORMATS = 0x86a3
const GL_MULTISAMPLE = 0x809d
const GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809e
const GL_SAMPLE_ALPHA_TO_ONE = Float32(0x0809)
const GL_SAMPLE_COVERAGE = 0x80a0
const GL_SAMPLE_BUFFERS = 0x80a8
const GL_SAMPLES = 0x80a9
const GL_SAMPLE_COVERAGE_VALUE = 0x80aa
const GL_SAMPLE_COVERAGE_INVERT = 0x80ab
const GL_MULTISAMPLE_BIT = 0x20000000
const GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84e3
const GL_TRANSPOSE_PROJECTION_MATRIX = 0x84e4
const GL_TRANSPOSE_TEXTURE_MATRIX = 0x84e5
const GL_TRANSPOSE_COLOR_MATRIX = 0x84e6
const GL_COMBINE = 0x8570
const GL_COMBINE_RGB = 0x8571
const GL_COMBINE_ALPHA = 0x8572
const GL_SOURCE0_RGB = 0x8580
const GL_SOURCE1_RGB = 0x8581
const GL_SOURCE2_RGB = 0x8582
const GL_SOURCE0_ALPHA = 0x8588
const GL_SOURCE1_ALPHA = 0x8589
const GL_SOURCE2_ALPHA = 0x858a
const GL_OPERAND0_RGB = 0x8590
const GL_OPERAND1_RGB = 0x8591
const GL_OPERAND2_RGB = 0x8592
const GL_OPERAND0_ALPHA = 0x8598
const GL_OPERAND1_ALPHA = 0x8599
const GL_OPERAND2_ALPHA = 0x859a
const GL_RGB_SCALE = 0x8573
const GL_ADD_SIGNED = 0x8574
const GL_INTERPOLATE = 0x8575
const GL_SUBTRACT = 0x84e7
const GL_CONSTANT = 0x8576
const GL_PRIMARY_COLOR = 0x8577
const GL_PREVIOUS = 0x8578
const GL_DOT3_RGB = 0x86ae
const GL_DOT3_RGBA = Float32(0x086a)
const GL_CLAMP_TO_BORDER = 0x812d
const GL_ARB_multitexture = 1
const GL_TEXTURE0_ARB = 0x84c0
const GL_TEXTURE1_ARB = 0x84c1
const GL_TEXTURE2_ARB = 0x84c2
const GL_TEXTURE3_ARB = 0x84c3
const GL_TEXTURE4_ARB = 0x84c4
const GL_TEXTURE5_ARB = 0x84c5
const GL_TEXTURE6_ARB = 0x84c6
const GL_TEXTURE7_ARB = 0x84c7
const GL_TEXTURE8_ARB = 0x84c8
const GL_TEXTURE9_ARB = 0x84c9
const GL_TEXTURE10_ARB = 0x84ca
const GL_TEXTURE11_ARB = 0x84cb
const GL_TEXTURE12_ARB = 0x84cc
const GL_TEXTURE13_ARB = 0x84cd
const GL_TEXTURE14_ARB = 0x84ce
const GL_TEXTURE15_ARB = Float32(0x084c)
const GL_TEXTURE16_ARB = 0x84d0
const GL_TEXTURE17_ARB = 0x84d1
const GL_TEXTURE18_ARB = 0x84d2
const GL_TEXTURE19_ARB = 0x84d3
const GL_TEXTURE20_ARB = 0x84d4
const GL_TEXTURE21_ARB = 0x84d5
const GL_TEXTURE22_ARB = 0x84d6
const GL_TEXTURE23_ARB = 0x84d7
const GL_TEXTURE24_ARB = 0x84d8
const GL_TEXTURE25_ARB = 0x84d9
const GL_TEXTURE26_ARB = 0x84da
const GL_TEXTURE27_ARB = 0x84db
const GL_TEXTURE28_ARB = 0x84dc
const GL_TEXTURE29_ARB = 0x84dd
const GL_TEXTURE30_ARB = 0x84de
const GL_TEXTURE31_ARB = Float32(0x084d)
const GL_ACTIVE_TEXTURE_ARB = 0x84e0
const GL_CLIENT_ACTIVE_TEXTURE_ARB = 0x84e1
const GL_MAX_TEXTURE_UNITS_ARB = 0x84e2
const GL_GLEXT_VERSION = 20150809
const GL_VERSION_1_4 = 1
const GL_BLEND_DST_RGB = 0x80c8
const GL_BLEND_SRC_RGB = 0x80c9
const GL_BLEND_DST_ALPHA = 0x80ca
const GL_BLEND_SRC_ALPHA = 0x80cb
const GL_POINT_FADE_THRESHOLD_SIZE = 0x8128
const GL_DEPTH_COMPONENT16 = 0x81a5
const GL_DEPTH_COMPONENT24 = 0x81a6
const GL_DEPTH_COMPONENT32 = 0x81a7
const GL_MIRRORED_REPEAT = 0x8370
const GL_MAX_TEXTURE_LOD_BIAS = 0x84fd
const GL_TEXTURE_LOD_BIAS = 0x8501
const GL_INCR_WRAP = 0x8507
const GL_DECR_WRAP = 0x8508
const GL_TEXTURE_DEPTH_SIZE = 0x884a
const GL_TEXTURE_COMPARE_MODE = 0x884c
const GL_TEXTURE_COMPARE_FUNC = 0x884d
const GL_POINT_SIZE_MIN = 0x8126
const GL_POINT_SIZE_MAX = 0x8127
const GL_POINT_DISTANCE_ATTENUATION = 0x8129
const GL_GENERATE_MIPMAP = 0x8191
const GL_GENERATE_MIPMAP_HINT = 0x8192
const GL_FOG_COORDINATE_SOURCE = 0x8450
const GL_FOG_COORDINATE = 0x8451
const GL_FRAGMENT_DEPTH = 0x8452
const GL_CURRENT_FOG_COORDINATE = 0x8453
const GL_FOG_COORDINATE_ARRAY_TYPE = 0x8454
const GL_FOG_COORDINATE_ARRAY_STRIDE = 0x8455
const GL_FOG_COORDINATE_ARRAY_POINTER = 0x8456
const GL_FOG_COORDINATE_ARRAY = 0x8457
const GL_COLOR_SUM = 0x8458
const GL_CURRENT_SECONDARY_COLOR = 0x8459
const GL_SECONDARY_COLOR_ARRAY_SIZE = 0x845a
const GL_SECONDARY_COLOR_ARRAY_TYPE = 0x845b
const GL_SECONDARY_COLOR_ARRAY_STRIDE = 0x845c
const GL_SECONDARY_COLOR_ARRAY_POINTER = 0x845d
const GL_SECONDARY_COLOR_ARRAY = 0x845e
const GL_TEXTURE_FILTER_CONTROL = 0x8500
const GL_DEPTH_TEXTURE_MODE = 0x884b
const GL_COMPARE_R_TO_TEXTURE = 0x884e
const GL_VERSION_1_5 = 1
const GL_BUFFER_SIZE = 0x8764
const GL_BUFFER_USAGE = 0x8765
const GL_QUERY_COUNTER_BITS = 0x8864
const GL_CURRENT_QUERY = 0x8865
const GL_QUERY_RESULT = 0x8866
const GL_QUERY_RESULT_AVAILABLE = 0x8867
const GL_ARRAY_BUFFER = 0x8892
const GL_ELEMENT_ARRAY_BUFFER = 0x8893
const GL_ARRAY_BUFFER_BINDING = 0x8894
const GL_ELEMENT_ARRAY_BUFFER_BINDING = 0x8895
const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = Float32(0x0889)
const GL_READ_ONLY = 0x88b8
const GL_WRITE_ONLY = 0x88b9
const GL_READ_WRITE = 0x88ba
const GL_BUFFER_ACCESS = 0x88bb
const GL_BUFFER_MAPPED = 0x88bc
const GL_BUFFER_MAP_POINTER = 0x88bd
const GL_STREAM_DRAW = 0x88e0
const GL_STREAM_READ = 0x88e1
const GL_STREAM_COPY = 0x88e2
const GL_STATIC_DRAW = 0x88e4
const GL_STATIC_READ = 0x88e5
const GL_STATIC_COPY = 0x88e6
const GL_DYNAMIC_DRAW = 0x88e8
const GL_DYNAMIC_READ = 0x88e9
const GL_DYNAMIC_COPY = 0x88ea
const GL_SAMPLES_PASSED = 0x8914
const GL_SRC1_ALPHA = 0x8589
const GL_VERTEX_ARRAY_BUFFER_BINDING = 0x8896
const GL_NORMAL_ARRAY_BUFFER_BINDING = 0x8897
const GL_COLOR_ARRAY_BUFFER_BINDING = 0x8898
const GL_INDEX_ARRAY_BUFFER_BINDING = 0x8899
const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889a
const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = 0x889b
const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889c
const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 0x889d
const GL_WEIGHT_ARRAY_BUFFER_BINDING = 0x889e
const GL_FOG_COORD_SRC = 0x8450
const GL_FOG_COORD = 0x8451
const GL_CURRENT_FOG_COORD = 0x8453
const GL_FOG_COORD_ARRAY_TYPE = 0x8454
const GL_FOG_COORD_ARRAY_STRIDE = 0x8455
const GL_FOG_COORD_ARRAY_POINTER = 0x8456
const GL_FOG_COORD_ARRAY = 0x8457
const GL_FOG_COORD_ARRAY_BUFFER_BINDING = 0x889d
const GL_SRC0_RGB = 0x8580
const GL_SRC1_RGB = 0x8581
const GL_SRC2_RGB = 0x8582
const GL_SRC0_ALPHA = 0x8588
const GL_SRC2_ALPHA = 0x858a
const GL_VERSION_2_0 = 1
const GL_BLEND_EQUATION_RGB = 0x8009
const GL_VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622
const GL_VERTEX_ATTRIB_ARRAY_SIZE = 0x8623
const GL_VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624
const GL_VERTEX_ATTRIB_ARRAY_TYPE = 0x8625
const GL_CURRENT_VERTEX_ATTRIB = 0x8626
const GL_VERTEX_PROGRAM_POINT_SIZE = 0x8642
const GL_VERTEX_ATTRIB_ARRAY_POINTER = 0x8645
const GL_STENCIL_BACK_FUNC = 0x8800
const GL_STENCIL_BACK_FAIL = 0x8801
const GL_STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802
const GL_STENCIL_BACK_PASS_DEPTH_PASS = 0x8803
const GL_MAX_DRAW_BUFFERS = 0x8824
const GL_DRAW_BUFFER0 = 0x8825
const GL_DRAW_BUFFER1 = 0x8826
const GL_DRAW_BUFFER2 = 0x8827
const GL_DRAW_BUFFER3 = 0x8828
const GL_DRAW_BUFFER4 = 0x8829
const GL_DRAW_BUFFER5 = 0x882a
const GL_DRAW_BUFFER6 = 0x882b
const GL_DRAW_BUFFER7 = 0x882c
const GL_DRAW_BUFFER8 = 0x882d
const GL_DRAW_BUFFER9 = 0x882e
const GL_DRAW_BUFFER10 = Float32(0x0882)
const GL_DRAW_BUFFER11 = 0x8830
const GL_DRAW_BUFFER12 = 0x8831
const GL_DRAW_BUFFER13 = 0x8832
const GL_DRAW_BUFFER14 = 0x8833
const GL_DRAW_BUFFER15 = 0x8834
const GL_BLEND_EQUATION_ALPHA = 0x883d
const GL_MAX_VERTEX_ATTRIBS = 0x8869
const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886a
const GL_MAX_TEXTURE_IMAGE_UNITS = 0x8872
const GL_FRAGMENT_SHADER = 0x8b30
const GL_VERTEX_SHADER = 0x8b31
const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8b49
const GL_MAX_VERTEX_UNIFORM_COMPONENTS = 0x8b4a
const GL_MAX_VARYING_FLOATS = 0x8b4b
const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8b4c
const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8b4d
const GL_SHADER_TYPE = Float32(0x08b4)
const GL_FLOAT_VEC2 = 0x8b50
const GL_FLOAT_VEC3 = 0x8b51
const GL_FLOAT_VEC4 = 0x8b52
const GL_INT_VEC2 = 0x8b53
const GL_INT_VEC3 = 0x8b54
const GL_INT_VEC4 = 0x8b55
const GL_BOOL = 0x8b56
const GL_BOOL_VEC2 = 0x8b57
const GL_BOOL_VEC3 = 0x8b58
const GL_BOOL_VEC4 = 0x8b59
const GL_FLOAT_MAT2 = 0x8b5a
const GL_FLOAT_MAT3 = 0x8b5b
const GL_FLOAT_MAT4 = 0x8b5c
const GL_SAMPLER_1D = 0x8b5d
const GL_SAMPLER_2D = 0x8b5e
const GL_SAMPLER_3D = Float32(0x08b5)
const GL_SAMPLER_CUBE = 0x8b60
const GL_SAMPLER_1D_SHADOW = 0x8b61
const GL_SAMPLER_2D_SHADOW = 0x8b62
const GL_DELETE_STATUS = 0x8b80
const GL_COMPILE_STATUS = 0x8b81
const GL_LINK_STATUS = 0x8b82
const GL_VALIDATE_STATUS = 0x8b83
const GL_INFO_LOG_LENGTH = 0x8b84
const GL_ATTACHED_SHADERS = 0x8b85
const GL_ACTIVE_UNIFORMS = 0x8b86
const GL_ACTIVE_UNIFORM_MAX_LENGTH = 0x8b87
const GL_SHADER_SOURCE_LENGTH = 0x8b88
const GL_ACTIVE_ATTRIBUTES = 0x8b89
const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8b8a
const GL_FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8b8b
const GL_SHADING_LANGUAGE_VERSION = 0x8b8c
const GL_CURRENT_PROGRAM = 0x8b8d
const GL_POINT_SPRITE_COORD_ORIGIN = 0x8ca0
const GL_LOWER_LEFT = 0x8ca1
const GL_UPPER_LEFT = 0x8ca2
const GL_STENCIL_BACK_REF = 0x8ca3
const GL_STENCIL_BACK_VALUE_MASK = 0x8ca4
const GL_STENCIL_BACK_WRITEMASK = 0x8ca5
const GL_VERTEX_PROGRAM_TWO_SIDE = 0x8643
const GL_POINT_SPRITE = 0x8861
const GL_COORD_REPLACE = 0x8862
const GL_MAX_TEXTURE_COORDS = 0x8871
const GL_VERSION_2_1 = 1
const GL_PIXEL_PACK_BUFFER = 0x88eb
const GL_PIXEL_UNPACK_BUFFER = 0x88ec
const GL_PIXEL_PACK_BUFFER_BINDING = 0x88ed
const GL_PIXEL_UNPACK_BUFFER_BINDING = Float32(0x088e)
const GL_FLOAT_MAT2x3 = 0x8b65
const GL_FLOAT_MAT2x4 = 0x8b66
const GL_FLOAT_MAT3x2 = 0x8b67
const GL_FLOAT_MAT3x4 = 0x8b68
const GL_FLOAT_MAT4x2 = 0x8b69
const GL_FLOAT_MAT4x3 = 0x8b6a
const GL_SRGB = 0x8c40
const GL_SRGB8 = 0x8c41
const GL_SRGB_ALPHA = 0x8c42
const GL_SRGB8_ALPHA8 = 0x8c43
const GL_COMPRESSED_SRGB = 0x8c48
const GL_COMPRESSED_SRGB_ALPHA = 0x8c49
const GL_CURRENT_RASTER_SECONDARY_COLOR = Float32(0x0845)
const GL_SLUMINANCE_ALPHA = 0x8c44
const GL_SLUMINANCE8_ALPHA8 = 0x8c45
const GL_SLUMINANCE = 0x8c46
const GL_SLUMINANCE8 = 0x8c47
const GL_COMPRESSED_SLUMINANCE = 0x8c4a
const GL_COMPRESSED_SLUMINANCE_ALPHA = 0x8c4b
const GL_VERSION_3_0 = 1
const GL_COMPARE_REF_TO_TEXTURE = 0x884e
const GL_CLIP_DISTANCE0 = 0x3000
const GL_CLIP_DISTANCE1 = 0x3001
const GL_CLIP_DISTANCE2 = 0x3002
const GL_CLIP_DISTANCE3 = 0x3003
const GL_CLIP_DISTANCE4 = 0x3004
const GL_CLIP_DISTANCE5 = 0x3005
const GL_CLIP_DISTANCE6 = 0x3006
const GL_CLIP_DISTANCE7 = 0x3007
const GL_MAX_CLIP_DISTANCES = 0x0d32
const GL_MAJOR_VERSION = 0x821b
const GL_MINOR_VERSION = 0x821c
const GL_NUM_EXTENSIONS = 0x821d
const GL_CONTEXT_FLAGS = 0x821e
const GL_COMPRESSED_RED = 0x8225
const GL_COMPRESSED_RG = 0x8226
const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x00000001
const GL_RGBA32F = 0x8814
const GL_RGB32F = 0x8815
const GL_RGBA16F = 0x881a
const GL_RGB16F = 0x881b
const GL_VERTEX_ATTRIB_ARRAY_INTEGER = 0x88fd
const GL_MAX_ARRAY_TEXTURE_LAYERS = Float32(0x088f)
const GL_MIN_PROGRAM_TEXEL_OFFSET = 0x8904
const GL_MAX_PROGRAM_TEXEL_OFFSET = 0x8905
const GL_CLAMP_READ_COLOR = 0x891c
const GL_FIXED_ONLY = 0x891d
const GL_MAX_VARYING_COMPONENTS = 0x8b4b
const GL_TEXTURE_1D_ARRAY = 0x8c18
const GL_PROXY_TEXTURE_1D_ARRAY = 0x8c19
const GL_TEXTURE_2D_ARRAY = 0x8c1a
const GL_PROXY_TEXTURE_2D_ARRAY = 0x8c1b
const GL_TEXTURE_BINDING_1D_ARRAY = 0x8c1c
const GL_TEXTURE_BINDING_2D_ARRAY = 0x8c1d
const GL_R11F_G11F_B10F = 0x8c3a
const GL_UNSIGNED_INT_10F_11F_11F_REV = 0x8c3b
const GL_RGB9_E5 = 0x8c3d
const GL_UNSIGNED_INT_5_9_9_9_REV = 0x8c3e
const GL_TEXTURE_SHARED_SIZE = Float32(0x08c3)
const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8c76
const GL_TRANSFORM_FEEDBACK_BUFFER_MODE = Float32(0x08c7)
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8c80
const GL_TRANSFORM_FEEDBACK_VARYINGS = 0x8c83
const GL_TRANSFORM_FEEDBACK_BUFFER_START = 0x8c84
const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8c85
const GL_PRIMITIVES_GENERATED = 0x8c87
const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8c88
const GL_RASTERIZER_DISCARD = 0x8c89
const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8c8a
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8c8b
const GL_INTERLEAVED_ATTRIBS = 0x8c8c
const GL_SEPARATE_ATTRIBS = 0x8c8d
const GL_TRANSFORM_FEEDBACK_BUFFER = 0x8c8e
const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = Float32(0x08c8)
const GL_RGBA32UI = 0x8d70
const GL_RGB32UI = 0x8d71
const GL_RGBA16UI = 0x8d76
const GL_RGB16UI = 0x8d77
const GL_RGBA8UI = 0x8d7c
const GL_RGB8UI = 0x8d7d
const GL_RGBA32I = 0x8d82
const GL_RGB32I = 0x8d83
const GL_RGBA16I = 0x8d88
const GL_RGB16I = 0x8d89
const GL_RGBA8I = 0x8d8e
const GL_RGB8I = Float32(0x08d8)
const GL_RED_INTEGER = 0x8d94
const GL_GREEN_INTEGER = 0x8d95
const GL_BLUE_INTEGER = 0x8d96
const GL_RGB_INTEGER = 0x8d98
const GL_RGBA_INTEGER = 0x8d99
const GL_BGR_INTEGER = 0x8d9a
const GL_BGRA_INTEGER = 0x8d9b
const GL_SAMPLER_1D_ARRAY = 0x8dc0
const GL_SAMPLER_2D_ARRAY = 0x8dc1
const GL_SAMPLER_1D_ARRAY_SHADOW = 0x8dc3
const GL_SAMPLER_2D_ARRAY_SHADOW = 0x8dc4
const GL_SAMPLER_CUBE_SHADOW = 0x8dc5
const GL_UNSIGNED_INT_VEC2 = 0x8dc6
const GL_UNSIGNED_INT_VEC3 = 0x8dc7
const GL_UNSIGNED_INT_VEC4 = 0x8dc8
const GL_INT_SAMPLER_1D = 0x8dc9
const GL_INT_SAMPLER_2D = 0x8dca
const GL_INT_SAMPLER_3D = 0x8dcb
const GL_INT_SAMPLER_CUBE = 0x8dcc
const GL_INT_SAMPLER_1D_ARRAY = 0x8dce
const GL_INT_SAMPLER_2D_ARRAY = Float32(0x08dc)
const GL_UNSIGNED_INT_SAMPLER_1D = 0x8dd1
const GL_UNSIGNED_INT_SAMPLER_2D = 0x8dd2
const GL_UNSIGNED_INT_SAMPLER_3D = 0x8dd3
const GL_UNSIGNED_INT_SAMPLER_CUBE = 0x8dd4
const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8dd6
const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8dd7
const GL_QUERY_WAIT = 0x8e13
const GL_QUERY_NO_WAIT = 0x8e14
const GL_QUERY_BY_REGION_WAIT = 0x8e15
const GL_QUERY_BY_REGION_NO_WAIT = 0x8e16
const GL_BUFFER_ACCESS_FLAGS = Float32(0x0911)
const GL_BUFFER_MAP_LENGTH = 0x9120
const GL_BUFFER_MAP_OFFSET = 0x9121
const GL_DEPTH_COMPONENT32F = 0x8cac
const GL_DEPTH32F_STENCIL8 = 0x8cad
const GL_FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8dad
const GL_INVALID_FRAMEBUFFER_OPERATION = 0x0506
const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210
const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211
const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212
const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213
const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214
const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215
const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216
const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217
const GL_FRAMEBUFFER_DEFAULT = 0x8218
const GL_FRAMEBUFFER_UNDEFINED = 0x8219
const GL_DEPTH_STENCIL_ATTACHMENT = 0x821a
const GL_MAX_RENDERBUFFER_SIZE = 0x84e8
const GL_DEPTH_STENCIL = 0x84f9
const GL_UNSIGNED_INT_24_8 = 0x84fa
const GL_DEPTH24_STENCIL8 = 0x88f0
const GL_TEXTURE_STENCIL_SIZE = 0x88f1
const GL_TEXTURE_RED_TYPE = 0x8c10
const GL_TEXTURE_GREEN_TYPE = 0x8c11
const GL_TEXTURE_BLUE_TYPE = 0x8c12
const GL_TEXTURE_ALPHA_TYPE = 0x8c13
const GL_TEXTURE_DEPTH_TYPE = 0x8c16
const GL_UNSIGNED_NORMALIZED = 0x8c17
const GL_FRAMEBUFFER_BINDING = 0x8ca6
const GL_DRAW_FRAMEBUFFER_BINDING = 0x8ca6
const GL_RENDERBUFFER_BINDING = 0x8ca7
const GL_READ_FRAMEBUFFER = 0x8ca8
const GL_DRAW_FRAMEBUFFER = 0x8ca9
const GL_READ_FRAMEBUFFER_BINDING = 0x8caa
const GL_RENDERBUFFER_SAMPLES = 0x8cab
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8cd0
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8cd1
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8cd2
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8cd3
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8cd4
const GL_FRAMEBUFFER_COMPLETE = 0x8cd5
const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8cd6
const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8cd7
const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8cdb
const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8cdc
const GL_FRAMEBUFFER_UNSUPPORTED = 0x8cdd
const GL_MAX_COLOR_ATTACHMENTS = Float32(0x08cd)
const GL_COLOR_ATTACHMENT0 = 0x8ce0
const GL_COLOR_ATTACHMENT1 = 0x8ce1
const GL_COLOR_ATTACHMENT2 = 0x8ce2
const GL_COLOR_ATTACHMENT3 = 0x8ce3
const GL_COLOR_ATTACHMENT4 = 0x8ce4
const GL_COLOR_ATTACHMENT5 = 0x8ce5
const GL_COLOR_ATTACHMENT6 = 0x8ce6
const GL_COLOR_ATTACHMENT7 = 0x8ce7
const GL_COLOR_ATTACHMENT8 = 0x8ce8
const GL_COLOR_ATTACHMENT9 = 0x8ce9
const GL_COLOR_ATTACHMENT10 = 0x8cea
const GL_COLOR_ATTACHMENT11 = 0x8ceb
const GL_COLOR_ATTACHMENT12 = 0x8cec
const GL_COLOR_ATTACHMENT13 = 0x8ced
const GL_COLOR_ATTACHMENT14 = 0x8cee
const GL_COLOR_ATTACHMENT15 = Float32(0x08ce)
const GL_COLOR_ATTACHMENT16 = 0x8cf0
const GL_COLOR_ATTACHMENT17 = 0x8cf1
const GL_COLOR_ATTACHMENT18 = 0x8cf2
const GL_COLOR_ATTACHMENT19 = 0x8cf3
const GL_COLOR_ATTACHMENT20 = 0x8cf4
const GL_COLOR_ATTACHMENT21 = 0x8cf5
const GL_COLOR_ATTACHMENT22 = 0x8cf6
const GL_COLOR_ATTACHMENT23 = 0x8cf7
const GL_COLOR_ATTACHMENT24 = 0x8cf8
const GL_COLOR_ATTACHMENT25 = 0x8cf9
const GL_COLOR_ATTACHMENT26 = 0x8cfa
const GL_COLOR_ATTACHMENT27 = 0x8cfb
const GL_COLOR_ATTACHMENT28 = 0x8cfc
const GL_COLOR_ATTACHMENT29 = 0x8cfd
const GL_COLOR_ATTACHMENT30 = 0x8cfe
const GL_COLOR_ATTACHMENT31 = Float32(0x08cf)
const GL_DEPTH_ATTACHMENT = 0x8d00
const GL_STENCIL_ATTACHMENT = 0x8d20
const GL_FRAMEBUFFER = 0x8d40
const GL_RENDERBUFFER = 0x8d41
const GL_RENDERBUFFER_WIDTH = 0x8d42
const GL_RENDERBUFFER_HEIGHT = 0x8d43
const GL_RENDERBUFFER_INTERNAL_FORMAT = 0x8d44
const GL_STENCIL_INDEX1 = 0x8d46
const GL_STENCIL_INDEX4 = 0x8d47
const GL_STENCIL_INDEX8 = 0x8d48
const GL_STENCIL_INDEX16 = 0x8d49
const GL_RENDERBUFFER_RED_SIZE = 0x8d50
const GL_RENDERBUFFER_GREEN_SIZE = 0x8d51
const GL_RENDERBUFFER_BLUE_SIZE = 0x8d52
const GL_RENDERBUFFER_ALPHA_SIZE = 0x8d53
const GL_RENDERBUFFER_DEPTH_SIZE = 0x8d54
const GL_RENDERBUFFER_STENCIL_SIZE = 0x8d55
const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8d56
const GL_MAX_SAMPLES = 0x8d57
const GL_INDEX = 0x8222
const GL_TEXTURE_LUMINANCE_TYPE = 0x8c14
const GL_TEXTURE_INTENSITY_TYPE = 0x8c15
const GL_FRAMEBUFFER_SRGB = 0x8db9
const GL_HALF_FLOAT = 0x140b
const GL_MAP_READ_BIT = 0x0001
const GL_MAP_WRITE_BIT = 0x0002
const GL_MAP_INVALIDATE_RANGE_BIT = 0x0004
const GL_MAP_INVALIDATE_BUFFER_BIT = 0x0008
const GL_MAP_FLUSH_EXPLICIT_BIT = 0x0010
const GL_MAP_UNSYNCHRONIZED_BIT = 0x0020
const GL_COMPRESSED_RED_RGTC1 = 0x8dbb
const GL_COMPRESSED_SIGNED_RED_RGTC1 = 0x8dbc
const GL_COMPRESSED_RG_RGTC2 = 0x8dbd
const GL_COMPRESSED_SIGNED_RG_RGTC2 = 0x8dbe
const GL_RG = 0x8227
const GL_RG_INTEGER = 0x8228
const GL_R8 = 0x8229
const GL_R16 = 0x822a
const GL_RG8 = 0x822b
const GL_RG16 = 0x822c
const GL_R16F = 0x822d
const GL_R32F = 0x822e
const GL_RG16F = Float32(0x0822)
const GL_RG32F = 0x8230
const GL_R8I = 0x8231
const GL_R8UI = 0x8232
const GL_R16I = 0x8233
const GL_R16UI = 0x8234
const GL_R32I = 0x8235
const GL_R32UI = 0x8236
const GL_RG8I = 0x8237
const GL_RG8UI = 0x8238
const GL_RG16I = 0x8239
const GL_RG16UI = 0x823a
const GL_RG32I = 0x823b
const GL_RG32UI = 0x823c
const GL_VERTEX_ARRAY_BINDING = 0x85b5
const GL_CLAMP_VERTEX_COLOR = 0x891a
const GL_CLAMP_FRAGMENT_COLOR = 0x891b
const GL_ALPHA_INTEGER = 0x8d97
const GL_VERSION_3_1 = 1
const GL_SAMPLER_2D_RECT = 0x8b63
const GL_SAMPLER_2D_RECT_SHADOW = 0x8b64
const GL_SAMPLER_BUFFER = 0x8dc2
const GL_INT_SAMPLER_2D_RECT = 0x8dcd
const GL_INT_SAMPLER_BUFFER = 0x8dd0
const GL_UNSIGNED_INT_SAMPLER_2D_RECT = 0x8dd5
const GL_UNSIGNED_INT_SAMPLER_BUFFER = 0x8dd8
const GL_TEXTURE_BUFFER = 0x8c2a
const GL_MAX_TEXTURE_BUFFER_SIZE = 0x8c2b
const GL_TEXTURE_BINDING_BUFFER = 0x8c2c
const GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8c2d
const GL_TEXTURE_RECTANGLE = 0x84f5
const GL_TEXTURE_BINDING_RECTANGLE = 0x84f6
const GL_PROXY_TEXTURE_RECTANGLE = 0x84f7
const GL_MAX_RECTANGLE_TEXTURE_SIZE = 0x84f8
const GL_R8_SNORM = 0x8f94
const GL_RG8_SNORM = 0x8f95
const GL_RGB8_SNORM = 0x8f96
const GL_RGBA8_SNORM = 0x8f97
const GL_R16_SNORM = 0x8f98
const GL_RG16_SNORM = 0x8f99
const GL_RGB16_SNORM = 0x8f9a
const GL_RGBA16_SNORM = 0x8f9b
const GL_SIGNED_NORMALIZED = 0x8f9c
const GL_PRIMITIVE_RESTART = 0x8f9d
const GL_PRIMITIVE_RESTART_INDEX = 0x8f9e
const GL_COPY_READ_BUFFER = 0x8f36
const GL_COPY_WRITE_BUFFER = 0x8f37
const GL_UNIFORM_BUFFER = 0x8a11
const GL_UNIFORM_BUFFER_BINDING = 0x8a28
const GL_UNIFORM_BUFFER_START = 0x8a29
const GL_UNIFORM_BUFFER_SIZE = 0x8a2a
const GL_MAX_VERTEX_UNIFORM_BLOCKS = 0x8a2b
const GL_MAX_GEOMETRY_UNIFORM_BLOCKS = 0x8a2c
const GL_MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8a2d
const GL_MAX_COMBINED_UNIFORM_BLOCKS = 0x8a2e
const GL_MAX_UNIFORM_BUFFER_BINDINGS = Float32(0x08a2)
const GL_MAX_UNIFORM_BLOCK_SIZE = 0x8a30
const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8a31
const GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8a32
const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8a33
const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8a34
const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8a35
const GL_ACTIVE_UNIFORM_BLOCKS = 0x8a36
const GL_UNIFORM_TYPE = 0x8a37
const GL_UNIFORM_SIZE = 0x8a38
const GL_UNIFORM_NAME_LENGTH = 0x8a39
const GL_UNIFORM_BLOCK_INDEX = 0x8a3a
const GL_UNIFORM_OFFSET = 0x8a3b
const GL_UNIFORM_ARRAY_STRIDE = 0x8a3c
const GL_UNIFORM_MATRIX_STRIDE = 0x8a3d
const GL_UNIFORM_IS_ROW_MAJOR = 0x8a3e
const GL_UNIFORM_BLOCK_BINDING = Float32(0x08a3)
const GL_UNIFORM_BLOCK_DATA_SIZE = 0x8a40
const GL_UNIFORM_BLOCK_NAME_LENGTH = 0x8a41
const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8a42
const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8a43
const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8a44
const GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8a45
const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8a46
const GL_INVALID_INDEX = UInt32(0xffffffff)
const GL_VERSION_3_2 = 1
const INT8_MIN = -128
const INT16_MIN = -32767 - 1
const INT32_MIN = -2147483647 - 1

# Skipping MacroDefinition: INT64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT8_MAX = 127
const INT16_MAX = 32767
const INT32_MAX = 2147483647

# Skipping MacroDefinition: INT64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT8_MAX = 255
const UINT16_MAX = 65535
const UINT32_MAX = UInt32(4294967295)

# Skipping MacroDefinition: UINT64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INT_LEAST8_MIN = -128
const INT_LEAST16_MIN = -32767 - 1
const INT_LEAST32_MIN = -2147483647 - 1

# Skipping MacroDefinition: INT_LEAST64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT_LEAST8_MAX = 127
const INT_LEAST16_MAX = 32767
const INT_LEAST32_MAX = 2147483647

# Skipping MacroDefinition: INT_LEAST64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT_LEAST8_MAX = 255
const UINT_LEAST16_MAX = 65535
const UINT_LEAST32_MAX = UInt32(4294967295)

# Skipping MacroDefinition: UINT_LEAST64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INT_FAST8_MIN = -128
const INT_FAST16_MIN = -(Int32(9223372036854775807)) - 1
const INT_FAST32_MIN = -(Int32(9223372036854775807)) - 1

# Skipping MacroDefinition: INT_FAST64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT_FAST8_MAX = 127
const INT_FAST16_MAX = Int32(9223372036854775807)
const INT_FAST32_MAX = Int32(9223372036854775807)

# Skipping MacroDefinition: INT_FAST64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT_FAST8_MAX = 255
const UINT_FAST16_MAX = UInt32(@int128_str("18446744073709551615"))
const UINT_FAST32_MAX = UInt32(@int128_str("18446744073709551615"))

# Skipping MacroDefinition: UINT_FAST64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INTPTR_MIN = -(Int32(9223372036854775807)) - 1
const INTPTR_MAX = Int32(9223372036854775807)
const UINTPTR_MAX = UInt32(@int128_str("18446744073709551615"))

# Skipping MacroDefinition: INTMAX_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )
# Skipping MacroDefinition: INTMAX_MAX ( __INT64_C ( 9223372036854775807 ) )
# Skipping MacroDefinition: UINTMAX_MAX ( __UINT64_C ( 18446744073709551615 ) )

const PTRDIFF_MIN = -(Int32(9223372036854775807)) - 1
const PTRDIFF_MAX = Int32(9223372036854775807)
const SIG_ATOMIC_MIN = -2147483647 - 1
const SIG_ATOMIC_MAX = 2147483647
const SIZE_MAX = UInt32(@int128_str("18446744073709551615"))
const WCHAR_MIN = __WCHAR_MIN
const WCHAR_MAX = __WCHAR_MAX
const WINT_MIN = UInt32(0)
const WINT_MAX = UInt32(4294967295)

# Skipping MacroDefinition: INT8_C ( c ) c
# Skipping MacroDefinition: INT16_C ( c ) c
# Skipping MacroDefinition: INT32_C ( c ) c
# Skipping MacroDefinition: INT64_C ( c ) c ## L
# Skipping MacroDefinition: UINT8_C ( c ) c
# Skipping MacroDefinition: UINT16_C ( c ) c
# Skipping MacroDefinition: UINT32_C ( c ) c ## U
# Skipping MacroDefinition: UINT64_C ( c ) c ## UL
# Skipping MacroDefinition: INTMAX_C ( c ) c ## L
# Skipping MacroDefinition: UINTMAX_C ( c ) c ## UL

const PRId8 = "d"
const PRId16 = "d"
const PRId32 = "d"
const PRId64 = __PRI64_PREFIX
const PRIdLEAST8 = "d"
const PRIdLEAST16 = "d"
const PRIdLEAST32 = "d"
const PRIdLEAST64 = __PRI64_PREFIX
const PRIdFAST8 = "d"
const PRIdFAST16 = __PRIPTR_PREFIX
const PRIdFAST32 = __PRIPTR_PREFIX
const PRIdFAST64 = __PRI64_PREFIX
const PRIi8 = "i"
const PRIi16 = "i"
const PRIi32 = "i"
const PRIi64 = __PRI64_PREFIX
const PRIiLEAST8 = "i"
const PRIiLEAST16 = "i"
const PRIiLEAST32 = "i"
const PRIiLEAST64 = __PRI64_PREFIX
const PRIiFAST8 = "i"
const PRIiFAST16 = __PRIPTR_PREFIX
const PRIiFAST32 = __PRIPTR_PREFIX
const PRIiFAST64 = __PRI64_PREFIX
const PRIo8 = "o"
const PRIo16 = "o"
const PRIo32 = "o"
const PRIo64 = __PRI64_PREFIX
const PRIoLEAST8 = "o"
const PRIoLEAST16 = "o"
const PRIoLEAST32 = "o"
const PRIoLEAST64 = __PRI64_PREFIX
const PRIoFAST8 = "o"
const PRIoFAST16 = __PRIPTR_PREFIX
const PRIoFAST32 = __PRIPTR_PREFIX
const PRIoFAST64 = __PRI64_PREFIX
const PRIu8 = "u"
const PRIu16 = "u"
const PRIu32 = "u"
const PRIu64 = __PRI64_PREFIX
const PRIuLEAST8 = "u"
const PRIuLEAST16 = "u"
const PRIuLEAST32 = "u"
const PRIuLEAST64 = __PRI64_PREFIX
const PRIuFAST8 = "u"
const PRIuFAST16 = __PRIPTR_PREFIX
const PRIuFAST32 = __PRIPTR_PREFIX
const PRIuFAST64 = __PRI64_PREFIX
const PRIx8 = "x"
const PRIx16 = "x"
const PRIx32 = "x"
const PRIx64 = __PRI64_PREFIX
const PRIxLEAST8 = "x"
const PRIxLEAST16 = "x"
const PRIxLEAST32 = "x"
const PRIxLEAST64 = __PRI64_PREFIX
const PRIxFAST8 = "x"
const PRIxFAST16 = __PRIPTR_PREFIX
const PRIxFAST32 = __PRIPTR_PREFIX
const PRIxFAST64 = __PRI64_PREFIX
const PRIX8 = "X"
const PRIX16 = "X"
const PRIX32 = "X"
const PRIX64 = __PRI64_PREFIX
const PRIXLEAST8 = "X"
const PRIXLEAST16 = "X"
const PRIXLEAST32 = "X"
const PRIXLEAST64 = __PRI64_PREFIX
const PRIXFAST8 = "X"
const PRIXFAST16 = __PRIPTR_PREFIX
const PRIXFAST32 = __PRIPTR_PREFIX
const PRIXFAST64 = __PRI64_PREFIX
const PRIdMAX = __PRI64_PREFIX
const PRIiMAX = __PRI64_PREFIX
const PRIoMAX = __PRI64_PREFIX
const PRIuMAX = __PRI64_PREFIX
const PRIxMAX = __PRI64_PREFIX
const PRIXMAX = __PRI64_PREFIX
const PRIdPTR = __PRIPTR_PREFIX
const PRIiPTR = __PRIPTR_PREFIX
const PRIoPTR = __PRIPTR_PREFIX
const PRIuPTR = __PRIPTR_PREFIX
const PRIxPTR = __PRIPTR_PREFIX
const PRIXPTR = __PRIPTR_PREFIX
const SCNd8 = "hhd"
const SCNd16 = "hd"
const SCNd32 = "d"
const SCNd64 = __PRI64_PREFIX
const SCNdLEAST8 = "hhd"
const SCNdLEAST16 = "hd"
const SCNdLEAST32 = "d"
const SCNdLEAST64 = __PRI64_PREFIX
const SCNdFAST8 = "hhd"
const SCNdFAST16 = __PRIPTR_PREFIX
const SCNdFAST32 = __PRIPTR_PREFIX
const SCNdFAST64 = __PRI64_PREFIX
const SCNi8 = "hhi"
const SCNi16 = "hi"
const SCNi32 = "i"
const SCNi64 = __PRI64_PREFIX
const SCNiLEAST8 = "hhi"
const SCNiLEAST16 = "hi"
const SCNiLEAST32 = "i"
const SCNiLEAST64 = __PRI64_PREFIX
const SCNiFAST8 = "hhi"
const SCNiFAST16 = __PRIPTR_PREFIX
const SCNiFAST32 = __PRIPTR_PREFIX
const SCNiFAST64 = __PRI64_PREFIX
const SCNu8 = "hhu"
const SCNu16 = "hu"
const SCNu32 = "u"
const SCNu64 = __PRI64_PREFIX
const SCNuLEAST8 = "hhu"
const SCNuLEAST16 = "hu"
const SCNuLEAST32 = "u"
const SCNuLEAST64 = __PRI64_PREFIX
const SCNuFAST8 = "hhu"
const SCNuFAST16 = __PRIPTR_PREFIX
const SCNuFAST32 = __PRIPTR_PREFIX
const SCNuFAST64 = __PRI64_PREFIX
const SCNo8 = "hho"
const SCNo16 = "ho"
const SCNo32 = "o"
const SCNo64 = __PRI64_PREFIX
const SCNoLEAST8 = "hho"
const SCNoLEAST16 = "ho"
const SCNoLEAST32 = "o"
const SCNoLEAST64 = __PRI64_PREFIX
const SCNoFAST8 = "hho"
const SCNoFAST16 = __PRIPTR_PREFIX
const SCNoFAST32 = __PRIPTR_PREFIX
const SCNoFAST64 = __PRI64_PREFIX
const SCNx8 = "hhx"
const SCNx16 = "hx"
const SCNx32 = "x"
const SCNx64 = __PRI64_PREFIX
const SCNxLEAST8 = "hhx"
const SCNxLEAST16 = "hx"
const SCNxLEAST32 = "x"
const SCNxLEAST64 = __PRI64_PREFIX
const SCNxFAST8 = "hhx"
const SCNxFAST16 = __PRIPTR_PREFIX
const SCNxFAST32 = __PRIPTR_PREFIX
const SCNxFAST64 = __PRI64_PREFIX
const SCNdMAX = __PRI64_PREFIX
const SCNiMAX = __PRI64_PREFIX
const SCNoMAX = __PRI64_PREFIX
const SCNuMAX = __PRI64_PREFIX
const SCNxMAX = __PRI64_PREFIX
const SCNdPTR = __PRIPTR_PREFIX
const SCNiPTR = __PRIPTR_PREFIX
const SCNoPTR = __PRIPTR_PREFIX
const SCNuPTR = __PRIPTR_PREFIX
const SCNxPTR = __PRIPTR_PREFIX
const GL_CONTEXT_CORE_PROFILE_BIT = 0x00000001
const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = 0x00000002
const GL_LINES_ADJACENCY = 0x000a
const GL_LINE_STRIP_ADJACENCY = 0x000b
const GL_TRIANGLES_ADJACENCY = 0x000c
const GL_TRIANGLE_STRIP_ADJACENCY = 0x000d
const GL_PROGRAM_POINT_SIZE = 0x8642
const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 0x8c29
const GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 0x8da7
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 0x8da8
const GL_GEOMETRY_SHADER = 0x8dd9
const GL_GEOMETRY_VERTICES_OUT = 0x8916
const GL_GEOMETRY_INPUT_TYPE = 0x8917
const GL_GEOMETRY_OUTPUT_TYPE = 0x8918
const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = Float32(0x08dd)
const GL_MAX_GEOMETRY_OUTPUT_VERTICES = 0x8de0
const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 0x8de1
const GL_MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122
const GL_MAX_GEOMETRY_INPUT_COMPONENTS = 0x9123
const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 0x9124
const GL_MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125
const GL_CONTEXT_PROFILE_MASK = 0x9126
const GL_DEPTH_CLAMP = Float32(0x0864)
const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8e4c
const GL_FIRST_VERTEX_CONVENTION = 0x8e4d
const GL_LAST_VERTEX_CONVENTION = 0x8e4e
const GL_PROVOKING_VERTEX = Float32(0x08e4)
const GL_TEXTURE_CUBE_MAP_SEAMLESS = Float32(0x0884)
const GL_MAX_SERVER_WAIT_TIMEOUT = 0x9111
const GL_OBJECT_TYPE = 0x9112
const GL_SYNC_CONDITION = 0x9113
const GL_SYNC_STATUS = 0x9114
const GL_SYNC_FLAGS = 0x9115
const GL_SYNC_FENCE = 0x9116
const GL_SYNC_GPU_COMMANDS_COMPLETE = 0x9117
const GL_UNSIGNALED = 0x9118
const GL_SIGNALED = 0x9119
const GL_ALREADY_SIGNALED = 0x911a
const GL_TIMEOUT_EXPIRED = 0x911b
const GL_CONDITION_SATISFIED = 0x911c
const GL_WAIT_FAILED = 0x911d
const GL_TIMEOUT_IGNORED = UInt64(0xffffffffffffffff)
const GL_SYNC_FLUSH_COMMANDS_BIT = 0x00000001
const GL_SAMPLE_POSITION = 0x8e50
const GL_SAMPLE_MASK = 0x8e51
const GL_SAMPLE_MASK_VALUE = 0x8e52
const GL_MAX_SAMPLE_MASK_WORDS = 0x8e59
const GL_TEXTURE_2D_MULTISAMPLE = 0x9100
const GL_PROXY_TEXTURE_2D_MULTISAMPLE = 0x9101
const GL_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9102
const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9103
const GL_TEXTURE_BINDING_2D_MULTISAMPLE = 0x9104
const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 0x9105
const GL_TEXTURE_SAMPLES = 0x9106
const GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = 0x9107
const GL_SAMPLER_2D_MULTISAMPLE = 0x9108
const GL_INT_SAMPLER_2D_MULTISAMPLE = 0x9109
const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910a
const GL_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910b
const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910c
const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910d
const GL_MAX_COLOR_TEXTURE_SAMPLES = 0x910e
const GL_MAX_DEPTH_TEXTURE_SAMPLES = Float32(0x0910)
const GL_MAX_INTEGER_SAMPLES = 0x9110
const GL_VERSION_3_3 = 1
const GL_VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88fe
const GL_SRC1_COLOR = 0x88f9
const GL_ONE_MINUS_SRC1_COLOR = 0x88fa
const GL_ONE_MINUS_SRC1_ALPHA = 0x88fb
const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = 0x88fc
const GL_ANY_SAMPLES_PASSED = Float32(0x08c2)
const GL_SAMPLER_BINDING = 0x8919
const GL_RGB10_A2UI = Float32(0x0906)
const GL_TEXTURE_SWIZZLE_R = 0x8e42
const GL_TEXTURE_SWIZZLE_G = 0x8e43
const GL_TEXTURE_SWIZZLE_B = 0x8e44
const GL_TEXTURE_SWIZZLE_A = 0x8e45
const GL_TEXTURE_SWIZZLE_RGBA = 0x8e46
const GL_TIME_ELAPSED = Float32(0x088b)
const GL_TIMESTAMP = 0x8e28
const GL_INT_2_10_10_10_REV = Float32(0x08d9)
const GL_VERSION_4_0 = 1
const GL_SAMPLE_SHADING = 0x8c36
const GL_MIN_SAMPLE_SHADING_VALUE = 0x8c37
const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8e5e
const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = Float32(0x08e5)
const GL_TEXTURE_CUBE_MAP_ARRAY = 0x9009
const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = 0x900a
const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = 0x900b
const GL_SAMPLER_CUBE_MAP_ARRAY = 0x900c
const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = 0x900d
const GL_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900e
const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = Float32(0x0900)
const GL_DRAW_INDIRECT_BUFFER = Float32(0x08f3)
const GL_DRAW_INDIRECT_BUFFER_BINDING = 0x8f43
const GL_GEOMETRY_SHADER_INVOCATIONS = Float32(0x0887)
const GL_MAX_GEOMETRY_SHADER_INVOCATIONS = 0x8e5a
const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = 0x8e5b
const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = 0x8e5c
const GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = 0x8e5d
const GL_MAX_VERTEX_STREAMS = 0x8e71
const GL_DOUBLE_VEC2 = 0x8ffc
const GL_DOUBLE_VEC3 = 0x8ffd
const GL_DOUBLE_VEC4 = 0x8ffe
const GL_DOUBLE_MAT2 = 0x8f46
const GL_DOUBLE_MAT3 = 0x8f47
const GL_DOUBLE_MAT4 = 0x8f48
const GL_DOUBLE_MAT2x3 = 0x8f49
const GL_DOUBLE_MAT2x4 = 0x8f4a
const GL_DOUBLE_MAT3x2 = 0x8f4b
const GL_DOUBLE_MAT3x4 = 0x8f4c
const GL_DOUBLE_MAT4x2 = 0x8f4d
const GL_DOUBLE_MAT4x3 = 0x8f4e
const GL_ACTIVE_SUBROUTINES = 0x8de5
const GL_ACTIVE_SUBROUTINE_UNIFORMS = 0x8de6
const GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 0x8e47
const GL_ACTIVE_SUBROUTINE_MAX_LENGTH = 0x8e48
const GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 0x8e49
const GL_MAX_SUBROUTINES = 0x8de7
const GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS = 0x8de8
const GL_NUM_COMPATIBLE_SUBROUTINES = 0x8e4a
const GL_COMPATIBLE_SUBROUTINES = 0x8e4b
const GL_PATCHES = 0x000e
const GL_PATCH_VERTICES = 0x8e72
const GL_PATCH_DEFAULT_INNER_LEVEL = 0x8e73
const GL_PATCH_DEFAULT_OUTER_LEVEL = 0x8e74
const GL_TESS_CONTROL_OUTPUT_VERTICES = 0x8e75
const GL_TESS_GEN_MODE = 0x8e76
const GL_TESS_GEN_SPACING = 0x8e77
const GL_TESS_GEN_VERTEX_ORDER = 0x8e78
const GL_TESS_GEN_POINT_MODE = 0x8e79
const GL_ISOLINES = 0x8e7a
const GL_FRACTIONAL_ODD = 0x8e7b
const GL_FRACTIONAL_EVEN = 0x8e7c
const GL_MAX_PATCH_VERTICES = 0x8e7d
const GL_MAX_TESS_GEN_LEVEL = 0x8e7e
const GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = Float32(0x08e7)
const GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8e80
const GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 0x8e81
const GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 0x8e82
const GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 0x8e83
const GL_MAX_TESS_PATCH_COMPONENTS = 0x8e84
const GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 0x8e85
const GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 0x8e86
const GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 0x8e89
const GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 0x8e8a
const GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = 0x886c
const GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 0x886d
const GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8e1e
const GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = Float32(0x08e1)
const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 0x84f0
const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84f1
const GL_TESS_EVALUATION_SHADER = 0x8e87
const GL_TESS_CONTROL_SHADER = 0x8e88
const GL_TRANSFORM_FEEDBACK = 0x8e22
const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED = 0x8e23
const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 0x8e24
const GL_TRANSFORM_FEEDBACK_BINDING = 0x8e25
const GL_MAX_TRANSFORM_FEEDBACK_BUFFERS = 0x8e70
const GL_VERSION_4_1 = 1
const GL_FIXED = 0x140c
const GL_IMPLEMENTATION_COLOR_READ_TYPE = 0x8b9a
const GL_IMPLEMENTATION_COLOR_READ_FORMAT = 0x8b9b
const GL_LOW_FLOAT = 0x8df0
const GL_MEDIUM_FLOAT = 0x8df1
const GL_HIGH_FLOAT = 0x8df2
const GL_LOW_INT = 0x8df3
const GL_MEDIUM_INT = 0x8df4
const GL_HIGH_INT = 0x8df5
const GL_SHADER_COMPILER = 0x8dfa
const GL_SHADER_BINARY_FORMATS = 0x8df8
const GL_NUM_SHADER_BINARY_FORMATS = 0x8df9
const GL_MAX_VERTEX_UNIFORM_VECTORS = 0x8dfb
const GL_MAX_VARYING_VECTORS = 0x8dfc
const GL_MAX_FRAGMENT_UNIFORM_VECTORS = 0x8dfd
const GL_RGB565 = 0x8d62
const GL_PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257
const GL_PROGRAM_BINARY_LENGTH = 0x8741
const GL_NUM_PROGRAM_BINARY_FORMATS = 0x87fe
const GL_PROGRAM_BINARY_FORMATS = Float32(0x087f)
const GL_VERTEX_SHADER_BIT = 0x00000001
const GL_FRAGMENT_SHADER_BIT = 0x00000002
const GL_GEOMETRY_SHADER_BIT = 0x00000004
const GL_TESS_CONTROL_SHADER_BIT = 0x00000008
const GL_TESS_EVALUATION_SHADER_BIT = 0x00000010
const GL_ALL_SHADER_BITS = Float32(0x0fffffff)
const GL_PROGRAM_SEPARABLE = 0x8258
const GL_ACTIVE_PROGRAM = 0x8259
const GL_PROGRAM_PIPELINE_BINDING = 0x825a
const GL_MAX_VIEWPORTS = 0x825b
const GL_VIEWPORT_SUBPIXEL_BITS = 0x825c
const GL_VIEWPORT_BOUNDS_RANGE = 0x825d
const GL_LAYER_PROVOKING_VERTEX = 0x825e
const GL_VIEWPORT_INDEX_PROVOKING_VERTEX = Float32(0x0825)
const GL_UNDEFINED_VERTEX = 0x8260
const GL_VERSION_4_2 = 1
const GL_COPY_READ_BUFFER_BINDING = 0x8f36
const GL_COPY_WRITE_BUFFER_BINDING = 0x8f37
const GL_TRANSFORM_FEEDBACK_ACTIVE = 0x8e24
const GL_TRANSFORM_FEEDBACK_PAUSED = 0x8e23
const GL_UNPACK_COMPRESSED_BLOCK_WIDTH = 0x9127
const GL_UNPACK_COMPRESSED_BLOCK_HEIGHT = 0x9128
const GL_UNPACK_COMPRESSED_BLOCK_DEPTH = 0x9129
const GL_UNPACK_COMPRESSED_BLOCK_SIZE = 0x912a
const GL_PACK_COMPRESSED_BLOCK_WIDTH = 0x912b
const GL_PACK_COMPRESSED_BLOCK_HEIGHT = 0x912c
const GL_PACK_COMPRESSED_BLOCK_DEPTH = 0x912d
const GL_PACK_COMPRESSED_BLOCK_SIZE = 0x912e
const GL_NUM_SAMPLE_COUNTS = 0x9380
const GL_MIN_MAP_BUFFER_ALIGNMENT = 0x90bc
const GL_ATOMIC_COUNTER_BUFFER = 0x92c0
const GL_ATOMIC_COUNTER_BUFFER_BINDING = 0x92c1
const GL_ATOMIC_COUNTER_BUFFER_START = 0x92c2
const GL_ATOMIC_COUNTER_BUFFER_SIZE = 0x92c3
const GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 0x92c4
const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 0x92c5
const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 0x92c6
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 0x92c7
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92c8
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92c9
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 0x92ca
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 0x92cb
const GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 0x92cc
const GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 0x92cd
const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 0x92ce
const GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = Float32(0x092c)
const GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 0x92d0
const GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 0x92d1
const GL_MAX_VERTEX_ATOMIC_COUNTERS = 0x92d2
const GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 0x92d3
const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 0x92d4
const GL_MAX_GEOMETRY_ATOMIC_COUNTERS = 0x92d5
const GL_MAX_FRAGMENT_ATOMIC_COUNTERS = 0x92d6
const GL_MAX_COMBINED_ATOMIC_COUNTERS = 0x92d7
const GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 0x92d8
const GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 0x92dc
const GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = 0x92d9
const GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 0x92da
const GL_UNSIGNED_INT_ATOMIC_COUNTER = 0x92db
const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 0x00000001
const GL_ELEMENT_ARRAY_BARRIER_BIT = 0x00000002
const GL_UNIFORM_BARRIER_BIT = 0x00000004
const GL_TEXTURE_FETCH_BARRIER_BIT = 0x00000008
const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = 0x00000020
const GL_COMMAND_BARRIER_BIT = 0x00000040
const GL_PIXEL_BUFFER_BARRIER_BIT = 0x00000080
const GL_TEXTURE_UPDATE_BARRIER_BIT = 0x00000100
const GL_BUFFER_UPDATE_BARRIER_BIT = 0x00000200
const GL_FRAMEBUFFER_BARRIER_BIT = 0x00000400
const GL_TRANSFORM_FEEDBACK_BARRIER_BIT = 0x00000800
const GL_ATOMIC_COUNTER_BARRIER_BIT = 0x00001000
const GL_ALL_BARRIER_BITS = Float32(0x0fffffff)
const GL_MAX_IMAGE_UNITS = 0x8f38
const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 0x8f39
const GL_IMAGE_BINDING_NAME = 0x8f3a
const GL_IMAGE_BINDING_LEVEL = 0x8f3b
const GL_IMAGE_BINDING_LAYERED = 0x8f3c
const GL_IMAGE_BINDING_LAYER = 0x8f3d
const GL_IMAGE_BINDING_ACCESS = 0x8f3e
const GL_IMAGE_1D = 0x904c
const GL_IMAGE_2D = 0x904d
const GL_IMAGE_3D = 0x904e
const GL_IMAGE_2D_RECT = Float32(0x0904)
const GL_IMAGE_CUBE = 0x9050
const GL_IMAGE_BUFFER = 0x9051
const GL_IMAGE_1D_ARRAY = 0x9052
const GL_IMAGE_2D_ARRAY = 0x9053
const GL_IMAGE_CUBE_MAP_ARRAY = 0x9054
const GL_IMAGE_2D_MULTISAMPLE = 0x9055
const GL_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9056
const GL_INT_IMAGE_1D = 0x9057
const GL_INT_IMAGE_2D = 0x9058
const GL_INT_IMAGE_3D = 0x9059
const GL_INT_IMAGE_2D_RECT = 0x905a
const GL_INT_IMAGE_CUBE = 0x905b
const GL_INT_IMAGE_BUFFER = 0x905c
const GL_INT_IMAGE_1D_ARRAY = 0x905d
const GL_INT_IMAGE_2D_ARRAY = 0x905e
const GL_INT_IMAGE_CUBE_MAP_ARRAY = Float32(0x0905)
const GL_INT_IMAGE_2D_MULTISAMPLE = 0x9060
const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9061
const GL_UNSIGNED_INT_IMAGE_1D = 0x9062
const GL_UNSIGNED_INT_IMAGE_2D = 0x9063
const GL_UNSIGNED_INT_IMAGE_3D = 0x9064
const GL_UNSIGNED_INT_IMAGE_2D_RECT = 0x9065
const GL_UNSIGNED_INT_IMAGE_CUBE = 0x9066
const GL_UNSIGNED_INT_IMAGE_BUFFER = 0x9067
const GL_UNSIGNED_INT_IMAGE_1D_ARRAY = 0x9068
const GL_UNSIGNED_INT_IMAGE_2D_ARRAY = 0x9069
const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 0x906a
const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 0x906b
const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x906c
const GL_MAX_IMAGE_SAMPLES = 0x906d
const GL_IMAGE_BINDING_FORMAT = 0x906e
const GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = 0x90c7
const GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 0x90c8
const GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 0x90c9
const GL_MAX_VERTEX_IMAGE_UNIFORMS = 0x90ca
const GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 0x90cb
const GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 0x90cc
const GL_MAX_GEOMETRY_IMAGE_UNIFORMS = 0x90cd
const GL_MAX_FRAGMENT_IMAGE_UNIFORMS = 0x90ce
const GL_MAX_COMBINED_IMAGE_UNIFORMS = Float32(0x090c)
const GL_COMPRESSED_RGBA_BPTC_UNORM = 0x8e8c
const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = 0x8e8d
const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = 0x8e8e
const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = Float32(0x08e8)
const GL_TEXTURE_IMMUTABLE_FORMAT = Float32(0x0912)
const GL_VERSION_4_3 = 1
const GL_NUM_SHADING_LANGUAGE_VERSIONS = 0x82e9
const GL_VERTEX_ATTRIB_ARRAY_LONG = 0x874e
const GL_COMPRESSED_RGB8_ETC2 = 0x9274
const GL_COMPRESSED_SRGB8_ETC2 = 0x9275
const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276
const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277
const GL_COMPRESSED_RGBA8_ETC2_EAC = 0x9278
const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279
const GL_COMPRESSED_R11_EAC = 0x9270
const GL_COMPRESSED_SIGNED_R11_EAC = 0x9271
const GL_COMPRESSED_RG11_EAC = 0x9272
const GL_COMPRESSED_SIGNED_RG11_EAC = 0x9273
const GL_PRIMITIVE_RESTART_FIXED_INDEX = 0x8d69
const GL_ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8d6a
const GL_MAX_ELEMENT_INDEX = 0x8d6b
const GL_COMPUTE_SHADER = 0x91b9
const GL_MAX_COMPUTE_UNIFORM_BLOCKS = 0x91bb
const GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 0x91bc
const GL_MAX_COMPUTE_IMAGE_UNIFORMS = 0x91bd
const GL_MAX_COMPUTE_SHARED_MEMORY_SIZE = 0x8262
const GL_MAX_COMPUTE_UNIFORM_COMPONENTS = 0x8263
const GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 0x8264
const GL_MAX_COMPUTE_ATOMIC_COUNTERS = 0x8265
const GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 0x8266
const GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = 0x90eb
const GL_MAX_COMPUTE_WORK_GROUP_COUNT = 0x91be
const GL_MAX_COMPUTE_WORK_GROUP_SIZE = Float32(0x091b)
const GL_COMPUTE_WORK_GROUP_SIZE = 0x8267
const GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 0x90ec
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ed
const GL_DISPATCH_INDIRECT_BUFFER = 0x90ee
const GL_DISPATCH_INDIRECT_BUFFER_BINDING = Float32(0x090e)
const GL_COMPUTE_SHADER_BIT = 0x00000020
const GL_DEBUG_OUTPUT_SYNCHRONOUS = 0x8242
const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 0x8243
const GL_DEBUG_CALLBACK_FUNCTION = 0x8244
const GL_DEBUG_CALLBACK_USER_PARAM = 0x8245
const GL_DEBUG_SOURCE_API = 0x8246
const GL_DEBUG_SOURCE_WINDOW_SYSTEM = 0x8247
const GL_DEBUG_SOURCE_SHADER_COMPILER = 0x8248
const GL_DEBUG_SOURCE_THIRD_PARTY = 0x8249
const GL_DEBUG_SOURCE_APPLICATION = 0x824a
const GL_DEBUG_SOURCE_OTHER = 0x824b
const GL_DEBUG_TYPE_ERROR = 0x824c
const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 0x824d
const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = 0x824e
const GL_DEBUG_TYPE_PORTABILITY = Float32(0x0824)
const GL_DEBUG_TYPE_PERFORMANCE = 0x8250
const GL_DEBUG_TYPE_OTHER = 0x8251
const GL_MAX_DEBUG_MESSAGE_LENGTH = 0x9143
const GL_MAX_DEBUG_LOGGED_MESSAGES = 0x9144
const GL_DEBUG_LOGGED_MESSAGES = 0x9145
const GL_DEBUG_SEVERITY_HIGH = 0x9146
const GL_DEBUG_SEVERITY_MEDIUM = 0x9147
const GL_DEBUG_SEVERITY_LOW = 0x9148
const GL_DEBUG_TYPE_MARKER = 0x8268
const GL_DEBUG_TYPE_PUSH_GROUP = 0x8269
const GL_DEBUG_TYPE_POP_GROUP = 0x826a
const GL_DEBUG_SEVERITY_NOTIFICATION = 0x826b
const GL_MAX_DEBUG_GROUP_STACK_DEPTH = 0x826c
const GL_DEBUG_GROUP_STACK_DEPTH = 0x826d
const GL_BUFFER = 0x82e0
const GL_SHADER = 0x82e1
const GL_PROGRAM = 0x82e2
const GL_QUERY = 0x82e3
const GL_PROGRAM_PIPELINE = 0x82e4
const GL_SAMPLER = 0x82e6
const GL_MAX_LABEL_LENGTH = 0x82e8
const GL_DEBUG_OUTPUT = 0x92e0
const GL_CONTEXT_FLAG_DEBUG_BIT = 0x00000002
const GL_MAX_UNIFORM_LOCATIONS = 0x826e
const GL_FRAMEBUFFER_DEFAULT_WIDTH = 0x9310
const GL_FRAMEBUFFER_DEFAULT_HEIGHT = 0x9311
const GL_FRAMEBUFFER_DEFAULT_LAYERS = 0x9312
const GL_FRAMEBUFFER_DEFAULT_SAMPLES = 0x9313
const GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314
const GL_MAX_FRAMEBUFFER_WIDTH = 0x9315
const GL_MAX_FRAMEBUFFER_HEIGHT = 0x9316
const GL_MAX_FRAMEBUFFER_LAYERS = 0x9317
const GL_MAX_FRAMEBUFFER_SAMPLES = 0x9318
const GL_INTERNALFORMAT_SUPPORTED = Float32(0x0826)
const GL_INTERNALFORMAT_PREFERRED = 0x8270
const GL_INTERNALFORMAT_RED_SIZE = 0x8271
const GL_INTERNALFORMAT_GREEN_SIZE = 0x8272
const GL_INTERNALFORMAT_BLUE_SIZE = 0x8273
const GL_INTERNALFORMAT_ALPHA_SIZE = 0x8274
const GL_INTERNALFORMAT_DEPTH_SIZE = 0x8275
const GL_INTERNALFORMAT_STENCIL_SIZE = 0x8276
const GL_INTERNALFORMAT_SHARED_SIZE = 0x8277
const GL_INTERNALFORMAT_RED_TYPE = 0x8278
const GL_INTERNALFORMAT_GREEN_TYPE = 0x8279
const GL_INTERNALFORMAT_BLUE_TYPE = 0x827a
const GL_INTERNALFORMAT_ALPHA_TYPE = 0x827b
const GL_INTERNALFORMAT_DEPTH_TYPE = 0x827c
const GL_INTERNALFORMAT_STENCIL_TYPE = 0x827d
const GL_MAX_WIDTH = 0x827e
const GL_MAX_HEIGHT = Float32(0x0827)
const GL_MAX_DEPTH = 0x8280
const GL_MAX_LAYERS = 0x8281
const GL_MAX_COMBINED_DIMENSIONS = 0x8282
const GL_COLOR_COMPONENTS = 0x8283
const GL_DEPTH_COMPONENTS = 0x8284
const GL_STENCIL_COMPONENTS = 0x8285
const GL_COLOR_RENDERABLE = 0x8286
const GL_DEPTH_RENDERABLE = 0x8287
const GL_STENCIL_RENDERABLE = 0x8288
const GL_FRAMEBUFFER_RENDERABLE = 0x8289
const GL_FRAMEBUFFER_RENDERABLE_LAYERED = 0x828a
const GL_FRAMEBUFFER_BLEND = 0x828b
const GL_READ_PIXELS = 0x828c
const GL_READ_PIXELS_FORMAT = 0x828d
const GL_READ_PIXELS_TYPE = 0x828e
const GL_TEXTURE_IMAGE_FORMAT = Float32(0x0828)
const GL_TEXTURE_IMAGE_TYPE = 0x8290
const GL_GET_TEXTURE_IMAGE_FORMAT = 0x8291
const GL_GET_TEXTURE_IMAGE_TYPE = 0x8292
const GL_MIPMAP = 0x8293
const GL_MANUAL_GENERATE_MIPMAP = 0x8294
const GL_AUTO_GENERATE_MIPMAP = 0x8295
const GL_COLOR_ENCODING = 0x8296
const GL_SRGB_READ = 0x8297
const GL_SRGB_WRITE = 0x8298
const GL_FILTER = 0x829a
const GL_VERTEX_TEXTURE = 0x829b
const GL_TESS_CONTROL_TEXTURE = 0x829c
const GL_TESS_EVALUATION_TEXTURE = 0x829d
const GL_GEOMETRY_TEXTURE = 0x829e
const GL_FRAGMENT_TEXTURE = Float32(0x0829)
const GL_COMPUTE_TEXTURE = 0x82a0
const GL_TEXTURE_SHADOW = 0x82a1
const GL_TEXTURE_GATHER = 0x82a2
const GL_TEXTURE_GATHER_SHADOW = 0x82a3
const GL_SHADER_IMAGE_LOAD = 0x82a4
const GL_SHADER_IMAGE_STORE = 0x82a5
const GL_SHADER_IMAGE_ATOMIC = 0x82a6
const GL_IMAGE_TEXEL_SIZE = 0x82a7
const GL_IMAGE_COMPATIBILITY_CLASS = 0x82a8
const GL_IMAGE_PIXEL_FORMAT = 0x82a9
const GL_IMAGE_PIXEL_TYPE = 0x82aa
const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 0x82ac
const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 0x82ad
const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 0x82ae
const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = Float32(0x082a)
const GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = 0x82b1
const GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = 0x82b2
const GL_TEXTURE_COMPRESSED_BLOCK_SIZE = 0x82b3
const GL_CLEAR_BUFFER = 0x82b4
const GL_TEXTURE_VIEW = 0x82b5
const GL_VIEW_COMPATIBILITY_CLASS = 0x82b6
const GL_FULL_SUPPORT = 0x82b7
const GL_CAVEAT_SUPPORT = 0x82b8
const GL_IMAGE_CLASS_4_X_32 = 0x82b9
const GL_IMAGE_CLASS_2_X_32 = 0x82ba
const GL_IMAGE_CLASS_1_X_32 = 0x82bb
const GL_IMAGE_CLASS_4_X_16 = 0x82bc
const GL_IMAGE_CLASS_2_X_16 = 0x82bd
const GL_IMAGE_CLASS_1_X_16 = 0x82be
const GL_IMAGE_CLASS_4_X_8 = Float32(0x082b)
const GL_IMAGE_CLASS_2_X_8 = 0x82c0
const GL_IMAGE_CLASS_1_X_8 = 0x82c1
const GL_IMAGE_CLASS_11_11_10 = 0x82c2
const GL_IMAGE_CLASS_10_10_10_2 = 0x82c3
const GL_VIEW_CLASS_128_BITS = 0x82c4
const GL_VIEW_CLASS_96_BITS = 0x82c5
const GL_VIEW_CLASS_64_BITS = 0x82c6
const GL_VIEW_CLASS_48_BITS = 0x82c7
const GL_VIEW_CLASS_32_BITS = 0x82c8
const GL_VIEW_CLASS_24_BITS = 0x82c9
const GL_VIEW_CLASS_16_BITS = 0x82ca
const GL_VIEW_CLASS_8_BITS = 0x82cb
const GL_VIEW_CLASS_S3TC_DXT1_RGB = 0x82cc
const GL_VIEW_CLASS_S3TC_DXT1_RGBA = 0x82cd
const GL_VIEW_CLASS_S3TC_DXT3_RGBA = 0x82ce
const GL_VIEW_CLASS_S3TC_DXT5_RGBA = Float32(0x082c)
const GL_VIEW_CLASS_RGTC1_RED = 0x82d0
const GL_VIEW_CLASS_RGTC2_RG = 0x82d1
const GL_VIEW_CLASS_BPTC_UNORM = 0x82d2
const GL_VIEW_CLASS_BPTC_FLOAT = 0x82d3
const GL_UNIFORM = 0x92e1
const GL_UNIFORM_BLOCK = 0x92e2
const GL_PROGRAM_INPUT = 0x92e3
const GL_PROGRAM_OUTPUT = 0x92e4
const GL_BUFFER_VARIABLE = 0x92e5
const GL_SHADER_STORAGE_BLOCK = 0x92e6
const GL_VERTEX_SUBROUTINE = 0x92e8
const GL_TESS_CONTROL_SUBROUTINE = 0x92e9
const GL_TESS_EVALUATION_SUBROUTINE = 0x92ea
const GL_GEOMETRY_SUBROUTINE = 0x92eb
const GL_FRAGMENT_SUBROUTINE = 0x92ec
const GL_COMPUTE_SUBROUTINE = 0x92ed
const GL_VERTEX_SUBROUTINE_UNIFORM = 0x92ee
const GL_TESS_CONTROL_SUBROUTINE_UNIFORM = Float32(0x092e)
const GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = 0x92f0
const GL_GEOMETRY_SUBROUTINE_UNIFORM = 0x92f1
const GL_FRAGMENT_SUBROUTINE_UNIFORM = 0x92f2
const GL_COMPUTE_SUBROUTINE_UNIFORM = 0x92f3
const GL_TRANSFORM_FEEDBACK_VARYING = 0x92f4
const GL_ACTIVE_RESOURCES = 0x92f5
const GL_MAX_NAME_LENGTH = 0x92f6
const GL_MAX_NUM_ACTIVE_VARIABLES = 0x92f7
const GL_MAX_NUM_COMPATIBLE_SUBROUTINES = 0x92f8
const GL_NAME_LENGTH = 0x92f9
const GL_TYPE = 0x92fa
const GL_ARRAY_SIZE = 0x92fb
const GL_OFFSET = 0x92fc
const GL_BLOCK_INDEX = 0x92fd
const GL_ARRAY_STRIDE = 0x92fe
const GL_MATRIX_STRIDE = Float32(0x092f)
const GL_IS_ROW_MAJOR = 0x9300
const GL_ATOMIC_COUNTER_BUFFER_INDEX = 0x9301
const GL_BUFFER_BINDING = 0x9302
const GL_BUFFER_DATA_SIZE = 0x9303
const GL_NUM_ACTIVE_VARIABLES = 0x9304
const GL_ACTIVE_VARIABLES = 0x9305
const GL_REFERENCED_BY_VERTEX_SHADER = 0x9306
const GL_REFERENCED_BY_TESS_CONTROL_SHADER = 0x9307
const GL_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x9308
const GL_REFERENCED_BY_GEOMETRY_SHADER = 0x9309
const GL_REFERENCED_BY_FRAGMENT_SHADER = 0x930a
const GL_REFERENCED_BY_COMPUTE_SHADER = 0x930b
const GL_TOP_LEVEL_ARRAY_SIZE = 0x930c
const GL_TOP_LEVEL_ARRAY_STRIDE = 0x930d
const GL_LOCATION = 0x930e
const GL_LOCATION_INDEX = Float32(0x0930)
const GL_IS_PER_PATCH = 0x92e7
const GL_SHADER_STORAGE_BUFFER = 0x90d2
const GL_SHADER_STORAGE_BUFFER_BINDING = 0x90d3
const GL_SHADER_STORAGE_BUFFER_START = 0x90d4
const GL_SHADER_STORAGE_BUFFER_SIZE = 0x90d5
const GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 0x90d6
const GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 0x90d7
const GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 0x90d8
const GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 0x90d9
const GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 0x90da
const GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 0x90db
const GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 0x90dc
const GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 0x90dd
const GL_MAX_SHADER_STORAGE_BLOCK_SIZE = 0x90de
const GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = Float32(0x090d)
const GL_SHADER_STORAGE_BARRIER_BIT = 0x00002000
const GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = 0x8f39
const GL_DEPTH_STENCIL_TEXTURE_MODE = 0x90ea
const GL_TEXTURE_BUFFER_OFFSET = 0x919d
const GL_TEXTURE_BUFFER_SIZE = 0x919e
const GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = Float32(0x0919)
const GL_TEXTURE_VIEW_MIN_LEVEL = 0x82db
const GL_TEXTURE_VIEW_NUM_LEVELS = 0x82dc
const GL_TEXTURE_VIEW_MIN_LAYER = 0x82dd
const GL_TEXTURE_VIEW_NUM_LAYERS = 0x82de
const GL_TEXTURE_IMMUTABLE_LEVELS = Float32(0x082d)
const GL_VERTEX_ATTRIB_BINDING = 0x82d4
const GL_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82d5
const GL_VERTEX_BINDING_DIVISOR = 0x82d6
const GL_VERTEX_BINDING_OFFSET = 0x82d7
const GL_VERTEX_BINDING_STRIDE = 0x82d8
const GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82d9
const GL_MAX_VERTEX_ATTRIB_BINDINGS = 0x82da
const GL_VERTEX_BINDING_BUFFER = Float32(0x08f4)
const GL_DISPLAY_LIST = 0x82e7
const GL_VERSION_4_4 = 1
const GL_MAX_VERTEX_ATTRIB_STRIDE = 0x82e5
const GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 0x8221
const GL_TEXTURE_BUFFER_BINDING = 0x8c2a
const GL_MAP_PERSISTENT_BIT = 0x0040
const GL_MAP_COHERENT_BIT = 0x0080
const GL_DYNAMIC_STORAGE_BIT = 0x0100
const GL_CLIENT_STORAGE_BIT = 0x0200
const GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT = 0x00004000
const GL_BUFFER_IMMUTABLE_STORAGE = Float32(0x0821)
const GL_BUFFER_STORAGE_FLAGS = 0x8220
const GL_CLEAR_TEXTURE = 0x9365
const GL_LOCATION_COMPONENT = 0x934a
const GL_TRANSFORM_FEEDBACK_BUFFER_INDEX = 0x934b
const GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE = 0x934c
const GL_QUERY_BUFFER = 0x9192
const GL_QUERY_BUFFER_BARRIER_BIT = 0x00008000
const GL_QUERY_BUFFER_BINDING = 0x9193
const GL_QUERY_RESULT_NO_WAIT = 0x9194
const GL_MIRROR_CLAMP_TO_EDGE = 0x8743
const GL_VERSION_4_5 = 1
const GL_CONTEXT_LOST = 0x0507
const GL_NEGATIVE_ONE_TO_ONE = 0x935e
const GL_ZERO_TO_ONE = Float32(0x0935)
const GL_CLIP_ORIGIN = 0x935c
const GL_CLIP_DEPTH_MODE = 0x935d
const GL_QUERY_WAIT_INVERTED = 0x8e17
const GL_QUERY_NO_WAIT_INVERTED = 0x8e18
const GL_QUERY_BY_REGION_WAIT_INVERTED = 0x8e19
const GL_QUERY_BY_REGION_NO_WAIT_INVERTED = 0x8e1a
const GL_MAX_CULL_DISTANCES = 0x82f9
const GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES = 0x82fa
const GL_TEXTURE_TARGET = 0x1006
const GL_QUERY_TARGET = 0x82ea
const GL_GUILTY_CONTEXT_RESET = 0x8253
const GL_INNOCENT_CONTEXT_RESET = 0x8254
const GL_UNKNOWN_CONTEXT_RESET = 0x8255
const GL_RESET_NOTIFICATION_STRATEGY = 0x8256
const GL_LOSE_CONTEXT_ON_RESET = 0x8252
const GL_NO_RESET_NOTIFICATION = 0x8261
const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT = 0x00000004
const GL_CONTEXT_RELEASE_BEHAVIOR = 0x82fb
const GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x82fc
const GL_ARB_ES2_compatibility = 1
const GL_ARB_ES3_1_compatibility = 1
const GL_ARB_ES3_2_compatibility = 1
const GL_PRIMITIVE_BOUNDING_BOX_ARB = 0x92be
const GL_MULTISAMPLE_LINE_WIDTH_RANGE_ARB = 0x9381
const GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY_ARB = 0x9382
const GL_ARB_ES3_compatibility = 1
const GL_ARB_arrays_of_arrays = 1
const GL_ARB_base_instance = 1
const GL_ARB_bindless_texture = 1
const GL_UNSIGNED_INT64_ARB = Float32(0x0140)
const GL_ARB_blend_func_extended = 1
const GL_ARB_buffer_storage = 1
const GL_ARB_cl_event = 1
const GL_SYNC_CL_EVENT_ARB = 0x8240
const GL_SYNC_CL_EVENT_COMPLETE_ARB = 0x8241
const GL_ARB_clear_buffer_object = 1
const GL_ARB_clear_texture = 1
const GL_ARB_clip_control = 1
const GL_ARB_color_buffer_float = 1
const GL_RGBA_FLOAT_MODE_ARB = 0x8820
const GL_CLAMP_VERTEX_COLOR_ARB = 0x891a
const GL_CLAMP_FRAGMENT_COLOR_ARB = 0x891b
const GL_CLAMP_READ_COLOR_ARB = 0x891c
const GL_FIXED_ONLY_ARB = 0x891d
const GL_ARB_compatibility = 1
const GL_ARB_compressed_texture_pixel_storage = 1
const GL_ARB_compute_shader = 1
const GL_ARB_compute_variable_group_size = 1
const GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB = 0x9344
const GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB = 0x90eb
const GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB = 0x9345
const GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB = Float32(0x091b)
const GL_ARB_conditional_render_inverted = 1
const GL_ARB_conservative_depth = 1
const GL_ARB_copy_buffer = 1
const GL_ARB_copy_image = 1
const GL_ARB_cull_distance = 1
const GL_ARB_debug_output = 1
const GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB = 0x8242
const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB = 0x8243
const GL_DEBUG_CALLBACK_FUNCTION_ARB = 0x8244
const GL_DEBUG_CALLBACK_USER_PARAM_ARB = 0x8245
const GL_DEBUG_SOURCE_API_ARB = 0x8246
const GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB = 0x8247
const GL_DEBUG_SOURCE_SHADER_COMPILER_ARB = 0x8248
const GL_DEBUG_SOURCE_THIRD_PARTY_ARB = 0x8249
const GL_DEBUG_SOURCE_APPLICATION_ARB = 0x824a
const GL_DEBUG_SOURCE_OTHER_ARB = 0x824b
const GL_DEBUG_TYPE_ERROR_ARB = 0x824c
const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB = 0x824d
const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB = 0x824e
const GL_DEBUG_TYPE_PORTABILITY_ARB = Float32(0x0824)
const GL_DEBUG_TYPE_PERFORMANCE_ARB = 0x8250
const GL_DEBUG_TYPE_OTHER_ARB = 0x8251
const GL_MAX_DEBUG_MESSAGE_LENGTH_ARB = 0x9143
const GL_MAX_DEBUG_LOGGED_MESSAGES_ARB = 0x9144
const GL_DEBUG_LOGGED_MESSAGES_ARB = 0x9145
const GL_DEBUG_SEVERITY_HIGH_ARB = 0x9146
const GL_DEBUG_SEVERITY_MEDIUM_ARB = 0x9147
const GL_DEBUG_SEVERITY_LOW_ARB = 0x9148
const GL_ARB_depth_buffer_float = 1
const GL_ARB_depth_clamp = 1
const GL_ARB_depth_texture = 1
const GL_DEPTH_COMPONENT16_ARB = 0x81a5
const GL_DEPTH_COMPONENT24_ARB = 0x81a6
const GL_DEPTH_COMPONENT32_ARB = 0x81a7
const GL_TEXTURE_DEPTH_SIZE_ARB = 0x884a
const GL_DEPTH_TEXTURE_MODE_ARB = 0x884b
const GL_ARB_derivative_control = 1
const GL_ARB_direct_state_access = 1
const GL_ARB_draw_buffers = 1
const GL_MAX_DRAW_BUFFERS_ARB = 0x8824
const GL_DRAW_BUFFER0_ARB = 0x8825
const GL_DRAW_BUFFER1_ARB = 0x8826
const GL_DRAW_BUFFER2_ARB = 0x8827
const GL_DRAW_BUFFER3_ARB = 0x8828
const GL_DRAW_BUFFER4_ARB = 0x8829
const GL_DRAW_BUFFER5_ARB = 0x882a
const GL_DRAW_BUFFER6_ARB = 0x882b
const GL_DRAW_BUFFER7_ARB = 0x882c
const GL_DRAW_BUFFER8_ARB = 0x882d
const GL_DRAW_BUFFER9_ARB = 0x882e
const GL_DRAW_BUFFER10_ARB = Float32(0x0882)
const GL_DRAW_BUFFER11_ARB = 0x8830
const GL_DRAW_BUFFER12_ARB = 0x8831
const GL_DRAW_BUFFER13_ARB = 0x8832
const GL_DRAW_BUFFER14_ARB = 0x8833
const GL_DRAW_BUFFER15_ARB = 0x8834
const GL_ARB_draw_buffers_blend = 1
const GL_ARB_draw_elements_base_vertex = 1
const GL_ARB_draw_indirect = 1
const GL_ARB_draw_instanced = 1
const GL_ARB_enhanced_layouts = 1
const GL_ARB_explicit_attrib_location = 1
const GL_ARB_explicit_uniform_location = 1
const GL_ARB_fragment_coord_conventions = 1
const GL_ARB_fragment_layer_viewport = 1
const GL_ARB_fragment_program = 1
const GL_FRAGMENT_PROGRAM_ARB = 0x8804
const GL_PROGRAM_FORMAT_ASCII_ARB = 0x8875
const GL_PROGRAM_LENGTH_ARB = 0x8627
const GL_PROGRAM_FORMAT_ARB = 0x8876
const GL_PROGRAM_BINDING_ARB = 0x8677
const GL_PROGRAM_INSTRUCTIONS_ARB = 0x88a0
const GL_MAX_PROGRAM_INSTRUCTIONS_ARB = 0x88a1
const GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88a2
const GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88a3
const GL_PROGRAM_TEMPORARIES_ARB = 0x88a4
const GL_MAX_PROGRAM_TEMPORARIES_ARB = 0x88a5
const GL_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88a6
const GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88a7
const GL_PROGRAM_PARAMETERS_ARB = 0x88a8
const GL_MAX_PROGRAM_PARAMETERS_ARB = 0x88a9
const GL_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88aa
const GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88ab
const GL_PROGRAM_ATTRIBS_ARB = 0x88ac
const GL_MAX_PROGRAM_ATTRIBS_ARB = 0x88ad
const GL_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88ae
const GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB = Float32(0x088a)
const GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB = 0x88b4
const GL_MAX_PROGRAM_ENV_PARAMETERS_ARB = 0x88b5
const GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB = 0x88b6
const GL_PROGRAM_ALU_INSTRUCTIONS_ARB = 0x8805
const GL_PROGRAM_TEX_INSTRUCTIONS_ARB = 0x8806
const GL_PROGRAM_TEX_INDIRECTIONS_ARB = 0x8807
const GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x8808
const GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x8809
const GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x880a
const GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB = 0x880b
const GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB = 0x880c
const GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB = 0x880d
const GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x880e
const GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = Float32(0x0880)
const GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x8810
const GL_PROGRAM_STRING_ARB = 0x8628
const GL_PROGRAM_ERROR_POSITION_ARB = 0x864b
const GL_CURRENT_MATRIX_ARB = 0x8641
const GL_TRANSPOSE_CURRENT_MATRIX_ARB = 0x88b7
const GL_CURRENT_MATRIX_STACK_DEPTH_ARB = 0x8640
const GL_MAX_PROGRAM_MATRICES_ARB = Float32(0x0862)
const GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB = 0x862e
const GL_MAX_TEXTURE_COORDS_ARB = 0x8871
const GL_MAX_TEXTURE_IMAGE_UNITS_ARB = 0x8872
const GL_PROGRAM_ERROR_STRING_ARB = 0x8874
const GL_MATRIX0_ARB = 0x88c0
const GL_MATRIX1_ARB = 0x88c1
const GL_MATRIX2_ARB = 0x88c2
const GL_MATRIX3_ARB = 0x88c3
const GL_MATRIX4_ARB = 0x88c4
const GL_MATRIX5_ARB = 0x88c5
const GL_MATRIX6_ARB = 0x88c6
const GL_MATRIX7_ARB = 0x88c7
const GL_MATRIX8_ARB = 0x88c8
const GL_MATRIX9_ARB = 0x88c9
const GL_MATRIX10_ARB = 0x88ca
const GL_MATRIX11_ARB = 0x88cb
const GL_MATRIX12_ARB = 0x88cc
const GL_MATRIX13_ARB = 0x88cd
const GL_MATRIX14_ARB = 0x88ce
const GL_MATRIX15_ARB = Float32(0x088c)
const GL_MATRIX16_ARB = 0x88d0
const GL_MATRIX17_ARB = 0x88d1
const GL_MATRIX18_ARB = 0x88d2
const GL_MATRIX19_ARB = 0x88d3
const GL_MATRIX20_ARB = 0x88d4
const GL_MATRIX21_ARB = 0x88d5
const GL_MATRIX22_ARB = 0x88d6
const GL_MATRIX23_ARB = 0x88d7
const GL_MATRIX24_ARB = 0x88d8
const GL_MATRIX25_ARB = 0x88d9
const GL_MATRIX26_ARB = 0x88da
const GL_MATRIX27_ARB = 0x88db
const GL_MATRIX28_ARB = 0x88dc
const GL_MATRIX29_ARB = 0x88dd
const GL_MATRIX30_ARB = 0x88de
const GL_MATRIX31_ARB = Float32(0x088d)
const GL_ARB_fragment_program_shadow = 1
const GL_ARB_fragment_shader = 1
const GL_FRAGMENT_SHADER_ARB = 0x8b30
const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB = 0x8b49
const GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = 0x8b8b
const GL_ARB_fragment_shader_interlock = 1
const GL_ARB_framebuffer_no_attachments = 1
const GL_ARB_framebuffer_object = 1
const GL_ARB_framebuffer_sRGB = 1
const GL_ARB_geometry_shader4 = 1
const GL_LINES_ADJACENCY_ARB = 0x000a
const GL_LINE_STRIP_ADJACENCY_ARB = 0x000b
const GL_TRIANGLES_ADJACENCY_ARB = 0x000c
const GL_TRIANGLE_STRIP_ADJACENCY_ARB = 0x000d
const GL_PROGRAM_POINT_SIZE_ARB = 0x8642
const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB = 0x8c29
const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = 0x8da7
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB = 0x8da8
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB = 0x8da9
const GL_GEOMETRY_SHADER_ARB = 0x8dd9
const GL_GEOMETRY_VERTICES_OUT_ARB = 0x8dda
const GL_GEOMETRY_INPUT_TYPE_ARB = 0x8ddb
const GL_GEOMETRY_OUTPUT_TYPE_ARB = 0x8ddc
const GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB = 0x8ddd
const GL_MAX_VERTEX_VARYING_COMPONENTS_ARB = 0x8dde
const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB = Float32(0x08dd)
const GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB = 0x8de0
const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB = 0x8de1
const GL_ARB_get_program_binary = 1
const GL_ARB_get_texture_sub_image = 1
const GL_ARB_gpu_shader5 = 1
const GL_ARB_gpu_shader_fp64 = 1
const GL_ARB_gpu_shader_int64 = 1
const GL_INT64_ARB = 0x140e
const GL_INT64_VEC2_ARB = 0x8fe9
const GL_INT64_VEC3_ARB = 0x8fea
const GL_INT64_VEC4_ARB = 0x8feb
const GL_UNSIGNED_INT64_VEC2_ARB = 0x8ff5
const GL_UNSIGNED_INT64_VEC3_ARB = 0x8ff6
const GL_UNSIGNED_INT64_VEC4_ARB = 0x8ff7
const GL_ARB_half_float_pixel = 1
const GL_HALF_FLOAT_ARB = 0x140b
const GL_ARB_half_float_vertex = 1
const GL_ARB_indirect_parameters = 1
const GL_PARAMETER_BUFFER_ARB = 0x80ee
const GL_PARAMETER_BUFFER_BINDING_ARB = Float32(0x080e)
const GL_ARB_instanced_arrays = 1
const GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB = 0x88fe
const GL_ARB_internalformat_query = 1
const GL_ARB_internalformat_query2 = 1
const GL_SRGB_DECODE_ARB = 0x8299
const GL_ARB_invalidate_subdata = 1
const GL_ARB_map_buffer_alignment = 1
const GL_ARB_map_buffer_range = 1
const GL_ARB_matrix_palette = 1
const GL_MATRIX_PALETTE_ARB = 0x8840
const GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = 0x8841
const GL_MAX_PALETTE_MATRICES_ARB = 0x8842
const GL_CURRENT_PALETTE_MATRIX_ARB = 0x8843
const GL_MATRIX_INDEX_ARRAY_ARB = 0x8844
const GL_CURRENT_MATRIX_INDEX_ARB = 0x8845
const GL_MATRIX_INDEX_ARRAY_SIZE_ARB = 0x8846
const GL_MATRIX_INDEX_ARRAY_TYPE_ARB = 0x8847
const GL_MATRIX_INDEX_ARRAY_STRIDE_ARB = 0x8848
const GL_MATRIX_INDEX_ARRAY_POINTER_ARB = 0x8849
const GL_ARB_multi_bind = 1
const GL_ARB_multi_draw_indirect = 1
const GL_ARB_multisample = 1
const GL_MULTISAMPLE_ARB = 0x809d
const GL_SAMPLE_ALPHA_TO_COVERAGE_ARB = 0x809e
const GL_SAMPLE_ALPHA_TO_ONE_ARB = Float32(0x0809)
const GL_SAMPLE_COVERAGE_ARB = 0x80a0
const GL_SAMPLE_BUFFERS_ARB = 0x80a8
const GL_SAMPLES_ARB = 0x80a9
const GL_SAMPLE_COVERAGE_VALUE_ARB = 0x80aa
const GL_SAMPLE_COVERAGE_INVERT_ARB = 0x80ab
const GL_MULTISAMPLE_BIT_ARB = 0x20000000
const GL_ARB_occlusion_query = 1
const GL_QUERY_COUNTER_BITS_ARB = 0x8864
const GL_CURRENT_QUERY_ARB = 0x8865
const GL_QUERY_RESULT_ARB = 0x8866
const GL_QUERY_RESULT_AVAILABLE_ARB = 0x8867
const GL_SAMPLES_PASSED_ARB = 0x8914
const GL_ARB_occlusion_query2 = 1
const GL_ARB_parallel_shader_compile = 1
const GL_MAX_SHADER_COMPILER_THREADS_ARB = 0x91b0
const GL_COMPLETION_STATUS_ARB = 0x91b1
const GL_ARB_pipeline_statistics_query = 1
const GL_VERTICES_SUBMITTED_ARB = 0x82ee
const GL_PRIMITIVES_SUBMITTED_ARB = Float32(0x082e)
const GL_VERTEX_SHADER_INVOCATIONS_ARB = 0x82f0
const GL_TESS_CONTROL_SHADER_PATCHES_ARB = 0x82f1
const GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB = 0x82f2
const GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB = 0x82f3
const GL_FRAGMENT_SHADER_INVOCATIONS_ARB = 0x82f4
const GL_COMPUTE_SHADER_INVOCATIONS_ARB = 0x82f5
const GL_CLIPPING_INPUT_PRIMITIVES_ARB = 0x82f6
const GL_CLIPPING_OUTPUT_PRIMITIVES_ARB = 0x82f7
const GL_ARB_pixel_buffer_object = 1
const GL_PIXEL_PACK_BUFFER_ARB = 0x88eb
const GL_PIXEL_UNPACK_BUFFER_ARB = 0x88ec
const GL_PIXEL_PACK_BUFFER_BINDING_ARB = 0x88ed
const GL_PIXEL_UNPACK_BUFFER_BINDING_ARB = Float32(0x088e)
const GL_ARB_point_parameters = 1
const GL_POINT_SIZE_MIN_ARB = 0x8126
const GL_POINT_SIZE_MAX_ARB = 0x8127
const GL_POINT_FADE_THRESHOLD_SIZE_ARB = 0x8128
const GL_POINT_DISTANCE_ATTENUATION_ARB = 0x8129
const GL_ARB_point_sprite = 1
const GL_POINT_SPRITE_ARB = 0x8861
const GL_COORD_REPLACE_ARB = 0x8862
const GL_ARB_post_depth_coverage = 1
const GL_ARB_program_interface_query = 1
const GL_ARB_provoking_vertex = 1
const GL_ARB_query_buffer_object = 1
const GL_ARB_robust_buffer_access_behavior = 1
const GL_ARB_robustness = 1
const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = 0x00000004
const GL_LOSE_CONTEXT_ON_RESET_ARB = 0x8252
const GL_GUILTY_CONTEXT_RESET_ARB = 0x8253
const GL_INNOCENT_CONTEXT_RESET_ARB = 0x8254
const GL_UNKNOWN_CONTEXT_RESET_ARB = 0x8255
const GL_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256
const GL_NO_RESET_NOTIFICATION_ARB = 0x8261
const GL_ARB_robustness_isolation = 1
const GL_ARB_sample_locations = 1
const GL_SAMPLE_LOCATION_SUBPIXEL_BITS_ARB = 0x933d
const GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_ARB = 0x933e
const GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_ARB = Float32(0x0933)
const GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_ARB = 0x9340
const GL_SAMPLE_LOCATION_ARB = 0x8e50
const GL_PROGRAMMABLE_SAMPLE_LOCATION_ARB = 0x9341
const GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_ARB = 0x9342
const GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_ARB = 0x9343
const GL_ARB_sample_shading = 1
const GL_SAMPLE_SHADING_ARB = 0x8c36
const GL_MIN_SAMPLE_SHADING_VALUE_ARB = 0x8c37
const GL_ARB_sampler_objects = 1
const GL_ARB_seamless_cube_map = 1
const GL_ARB_seamless_cubemap_per_texture = 1
const GL_ARB_separate_shader_objects = 1
const GL_ARB_shader_atomic_counter_ops = 1
const GL_ARB_shader_atomic_counters = 1
const GL_ARB_shader_ballot = 1
const GL_ARB_shader_bit_encoding = 1
const GL_ARB_shader_clock = 1
const GL_ARB_shader_draw_parameters = 1
const GL_ARB_shader_group_vote = 1
const GL_ARB_shader_image_load_store = 1
const GL_ARB_shader_image_size = 1
const GL_ARB_shader_objects = 1
const GL_PROGRAM_OBJECT_ARB = 0x8b40
const GL_SHADER_OBJECT_ARB = 0x8b48
const GL_OBJECT_TYPE_ARB = 0x8b4e
const GL_OBJECT_SUBTYPE_ARB = Float32(0x08b4)
const GL_FLOAT_VEC2_ARB = 0x8b50
const GL_FLOAT_VEC3_ARB = 0x8b51
const GL_FLOAT_VEC4_ARB = 0x8b52
const GL_INT_VEC2_ARB = 0x8b53
const GL_INT_VEC3_ARB = 0x8b54
const GL_INT_VEC4_ARB = 0x8b55
const GL_BOOL_ARB = 0x8b56
const GL_BOOL_VEC2_ARB = 0x8b57
const GL_BOOL_VEC3_ARB = 0x8b58
const GL_BOOL_VEC4_ARB = 0x8b59
const GL_FLOAT_MAT2_ARB = 0x8b5a
const GL_FLOAT_MAT3_ARB = 0x8b5b
const GL_FLOAT_MAT4_ARB = 0x8b5c
const GL_SAMPLER_1D_ARB = 0x8b5d
const GL_SAMPLER_2D_ARB = 0x8b5e
const GL_SAMPLER_3D_ARB = Float32(0x08b5)
const GL_SAMPLER_CUBE_ARB = 0x8b60
const GL_SAMPLER_1D_SHADOW_ARB = 0x8b61
const GL_SAMPLER_2D_SHADOW_ARB = 0x8b62
const GL_SAMPLER_2D_RECT_ARB = 0x8b63
const GL_SAMPLER_2D_RECT_SHADOW_ARB = 0x8b64
const GL_OBJECT_DELETE_STATUS_ARB = 0x8b80
const GL_OBJECT_COMPILE_STATUS_ARB = 0x8b81
const GL_OBJECT_LINK_STATUS_ARB = 0x8b82
const GL_OBJECT_VALIDATE_STATUS_ARB = 0x8b83
const GL_OBJECT_INFO_LOG_LENGTH_ARB = 0x8b84
const GL_OBJECT_ATTACHED_OBJECTS_ARB = 0x8b85
const GL_OBJECT_ACTIVE_UNIFORMS_ARB = 0x8b86
const GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 0x8b87
const GL_OBJECT_SHADER_SOURCE_LENGTH_ARB = 0x8b88
const GL_ARB_shader_precision = 1
const GL_ARB_shader_stencil_export = 1
const GL_ARB_shader_storage_buffer_object = 1
const GL_ARB_shader_subroutine = 1
const GL_ARB_shader_texture_image_samples = 1
const GL_ARB_shader_texture_lod = 1
const GL_ARB_shader_viewport_layer_array = 1
const GL_ARB_shading_language_100 = 1
const GL_SHADING_LANGUAGE_VERSION_ARB = 0x8b8c
const GL_ARB_shading_language_420pack = 1
const GL_ARB_shading_language_include = 1
const GL_SHADER_INCLUDE_ARB = 0x8dae
const GL_NAMED_STRING_LENGTH_ARB = 0x8de9
const GL_NAMED_STRING_TYPE_ARB = 0x8dea
const GL_ARB_shading_language_packing = 1
const GL_ARB_shadow = 1
const GL_TEXTURE_COMPARE_MODE_ARB = 0x884c
const GL_TEXTURE_COMPARE_FUNC_ARB = 0x884d
const GL_COMPARE_R_TO_TEXTURE_ARB = 0x884e
const GL_ARB_shadow_ambient = 1
const GL_TEXTURE_COMPARE_FAIL_VALUE_ARB = Float32(0x080b)
const GL_ARB_sparse_buffer = 1
const GL_SPARSE_STORAGE_BIT_ARB = 0x0400
const GL_SPARSE_BUFFER_PAGE_SIZE_ARB = 0x82f8
const GL_ARB_sparse_texture = 1
const GL_TEXTURE_SPARSE_ARB = 0x91a6
const GL_VIRTUAL_PAGE_SIZE_INDEX_ARB = 0x91a7
const GL_NUM_SPARSE_LEVELS_ARB = 0x91aa
const GL_NUM_VIRTUAL_PAGE_SIZES_ARB = 0x91a8
const GL_VIRTUAL_PAGE_SIZE_X_ARB = 0x9195
const GL_VIRTUAL_PAGE_SIZE_Y_ARB = 0x9196
const GL_VIRTUAL_PAGE_SIZE_Z_ARB = 0x9197
const GL_MAX_SPARSE_TEXTURE_SIZE_ARB = 0x9198
const GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB = 0x9199
const GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB = 0x919a
const GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB = 0x91a9
const GL_ARB_sparse_texture2 = 1
const GL_ARB_sparse_texture_clamp = 1
const GL_ARB_stencil_texturing = 1
const GL_ARB_sync = 1
const GL_ARB_tessellation_shader = 1
const GL_ARB_texture_barrier = 1
const GL_ARB_texture_border_clamp = 1
const GL_CLAMP_TO_BORDER_ARB = 0x812d
const GL_ARB_texture_buffer_object = 1
const GL_TEXTURE_BUFFER_ARB = 0x8c2a
const GL_MAX_TEXTURE_BUFFER_SIZE_ARB = 0x8c2b
const GL_TEXTURE_BINDING_BUFFER_ARB = 0x8c2c
const GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB = 0x8c2d
const GL_TEXTURE_BUFFER_FORMAT_ARB = 0x8c2e
const GL_ARB_texture_buffer_object_rgb32 = 1
const GL_ARB_texture_buffer_range = 1
const GL_ARB_texture_compression = 1
const GL_COMPRESSED_ALPHA_ARB = 0x84e9
const GL_COMPRESSED_LUMINANCE_ARB = 0x84ea
const GL_COMPRESSED_LUMINANCE_ALPHA_ARB = 0x84eb
const GL_COMPRESSED_INTENSITY_ARB = 0x84ec
const GL_COMPRESSED_RGB_ARB = 0x84ed
const GL_COMPRESSED_RGBA_ARB = 0x84ee
const GL_TEXTURE_COMPRESSION_HINT_ARB = Float32(0x084e)
const GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB = 0x86a0
const GL_TEXTURE_COMPRESSED_ARB = 0x86a1
const GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86a2
const GL_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86a3
const GL_ARB_texture_compression_bptc = 1
const GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = 0x8e8c
const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = 0x8e8d
const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = 0x8e8e
const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = Float32(0x08e8)
const GL_ARB_texture_compression_rgtc = 1
const GL_ARB_texture_cube_map = 1
const GL_NORMAL_MAP_ARB = 0x8511
const GL_REFLECTION_MAP_ARB = 0x8512
const GL_TEXTURE_CUBE_MAP_ARB = 0x8513
const GL_TEXTURE_BINDING_CUBE_MAP_ARB = 0x8514
const GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = 0x8515
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = 0x8516
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = 0x8517
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = 0x8518
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = 0x8519
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = 0x851a
const GL_PROXY_TEXTURE_CUBE_MAP_ARB = 0x851b
const GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB = 0x851c
const GL_ARB_texture_cube_map_array = 1
const GL_TEXTURE_CUBE_MAP_ARRAY_ARB = 0x9009
const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB = 0x900a
const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = 0x900b
const GL_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900c
const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB = 0x900d
const GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900e
const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = Float32(0x0900)
const GL_ARB_texture_env_add = 1
const GL_ARB_texture_env_combine = 1
const GL_COMBINE_ARB = 0x8570
const GL_COMBINE_RGB_ARB = 0x8571
const GL_COMBINE_ALPHA_ARB = 0x8572
const GL_SOURCE0_RGB_ARB = 0x8580
const GL_SOURCE1_RGB_ARB = 0x8581
const GL_SOURCE2_RGB_ARB = 0x8582
const GL_SOURCE0_ALPHA_ARB = 0x8588
const GL_SOURCE1_ALPHA_ARB = 0x8589
const GL_SOURCE2_ALPHA_ARB = 0x858a
const GL_OPERAND0_RGB_ARB = 0x8590
const GL_OPERAND1_RGB_ARB = 0x8591
const GL_OPERAND2_RGB_ARB = 0x8592
const GL_OPERAND0_ALPHA_ARB = 0x8598
const GL_OPERAND1_ALPHA_ARB = 0x8599
const GL_OPERAND2_ALPHA_ARB = 0x859a
const GL_RGB_SCALE_ARB = 0x8573
const GL_ADD_SIGNED_ARB = 0x8574
const GL_INTERPOLATE_ARB = 0x8575
const GL_SUBTRACT_ARB = 0x84e7
const GL_CONSTANT_ARB = 0x8576
const GL_PRIMARY_COLOR_ARB = 0x8577
const GL_PREVIOUS_ARB = 0x8578
const GL_ARB_texture_env_crossbar = 1
const GL_ARB_texture_env_dot3 = 1
const GL_DOT3_RGB_ARB = 0x86ae
const GL_DOT3_RGBA_ARB = Float32(0x086a)
const GL_ARB_texture_filter_minmax = 1
const GL_TEXTURE_REDUCTION_MODE_ARB = 0x9366
const GL_WEIGHTED_AVERAGE_ARB = 0x9367
const GL_ARB_texture_float = 1
const GL_TEXTURE_RED_TYPE_ARB = 0x8c10
const GL_TEXTURE_GREEN_TYPE_ARB = 0x8c11
const GL_TEXTURE_BLUE_TYPE_ARB = 0x8c12
const GL_TEXTURE_ALPHA_TYPE_ARB = 0x8c13
const GL_TEXTURE_LUMINANCE_TYPE_ARB = 0x8c14
const GL_TEXTURE_INTENSITY_TYPE_ARB = 0x8c15
const GL_TEXTURE_DEPTH_TYPE_ARB = 0x8c16
const GL_UNSIGNED_NORMALIZED_ARB = 0x8c17
const GL_RGBA32F_ARB = 0x8814
const GL_RGB32F_ARB = 0x8815
const GL_ALPHA32F_ARB = 0x8816
const GL_INTENSITY32F_ARB = 0x8817
const GL_LUMINANCE32F_ARB = 0x8818
const GL_LUMINANCE_ALPHA32F_ARB = 0x8819
const GL_RGBA16F_ARB = 0x881a
const GL_RGB16F_ARB = 0x881b
const GL_ALPHA16F_ARB = 0x881c
const GL_INTENSITY16F_ARB = 0x881d
const GL_LUMINANCE16F_ARB = 0x881e
const GL_LUMINANCE_ALPHA16F_ARB = Float32(0x0881)
const GL_ARB_texture_gather = 1
const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8e5e
const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = Float32(0x08e5)
const GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB = Float32(0x08f9)
const GL_ARB_texture_mirror_clamp_to_edge = 1
const GL_ARB_texture_mirrored_repeat = 1
const GL_MIRRORED_REPEAT_ARB = 0x8370
const GL_ARB_texture_multisample = 1
const GL_ARB_texture_non_power_of_two = 1
const GL_ARB_texture_query_levels = 1
const GL_ARB_texture_query_lod = 1
const GL_ARB_texture_rectangle = 1
const GL_TEXTURE_RECTANGLE_ARB = 0x84f5
const GL_TEXTURE_BINDING_RECTANGLE_ARB = 0x84f6
const GL_PROXY_TEXTURE_RECTANGLE_ARB = 0x84f7
const GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB = 0x84f8
const GL_ARB_texture_rg = 1
const GL_ARB_texture_rgb10_a2ui = 1
const GL_ARB_texture_stencil8 = 1
const GL_ARB_texture_storage = 1
const GL_ARB_texture_storage_multisample = 1
const GL_ARB_texture_swizzle = 1
const GL_ARB_texture_view = 1
const GL_ARB_timer_query = 1
const GL_ARB_transform_feedback2 = 1
const GL_ARB_transform_feedback3 = 1
const GL_ARB_transform_feedback_instanced = 1
const GL_ARB_transform_feedback_overflow_query = 1
const GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB = 0x82ec
const GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB = 0x82ed
const GL_ARB_transpose_matrix = 1
const GL_TRANSPOSE_MODELVIEW_MATRIX_ARB = 0x84e3
const GL_TRANSPOSE_PROJECTION_MATRIX_ARB = 0x84e4
const GL_TRANSPOSE_TEXTURE_MATRIX_ARB = 0x84e5
const GL_TRANSPOSE_COLOR_MATRIX_ARB = 0x84e6
const GL_ARB_uniform_buffer_object = 1
const GL_ARB_vertex_array_bgra = 1
const GL_ARB_vertex_array_object = 1
const GL_ARB_vertex_attrib_64bit = 1
const GL_ARB_vertex_attrib_binding = 1
const GL_ARB_vertex_blend = 1
const GL_MAX_VERTEX_UNITS_ARB = 0x86a4
const GL_ACTIVE_VERTEX_UNITS_ARB = 0x86a5
const GL_WEIGHT_SUM_UNITY_ARB = 0x86a6
const GL_VERTEX_BLEND_ARB = 0x86a7
const GL_CURRENT_WEIGHT_ARB = 0x86a8
const GL_WEIGHT_ARRAY_TYPE_ARB = 0x86a9
const GL_WEIGHT_ARRAY_STRIDE_ARB = 0x86aa
const GL_WEIGHT_ARRAY_SIZE_ARB = 0x86ab
const GL_WEIGHT_ARRAY_POINTER_ARB = 0x86ac
const GL_WEIGHT_ARRAY_ARB = 0x86ad
const GL_MODELVIEW0_ARB = 0x1700
const GL_MODELVIEW1_ARB = 0x850a
const GL_MODELVIEW2_ARB = 0x8722
const GL_MODELVIEW3_ARB = 0x8723
const GL_MODELVIEW4_ARB = 0x8724
const GL_MODELVIEW5_ARB = 0x8725
const GL_MODELVIEW6_ARB = 0x8726
const GL_MODELVIEW7_ARB = 0x8727
const GL_MODELVIEW8_ARB = 0x8728
const GL_MODELVIEW9_ARB = 0x8729
const GL_MODELVIEW10_ARB = 0x872a
const GL_MODELVIEW11_ARB = 0x872b
const GL_MODELVIEW12_ARB = 0x872c
const GL_MODELVIEW13_ARB = 0x872d
const GL_MODELVIEW14_ARB = 0x872e
const GL_MODELVIEW15_ARB = Float32(0x0872)
const GL_MODELVIEW16_ARB = 0x8730
const GL_MODELVIEW17_ARB = 0x8731
const GL_MODELVIEW18_ARB = 0x8732
const GL_MODELVIEW19_ARB = 0x8733
const GL_MODELVIEW20_ARB = 0x8734
const GL_MODELVIEW21_ARB = 0x8735
const GL_MODELVIEW22_ARB = 0x8736
const GL_MODELVIEW23_ARB = 0x8737
const GL_MODELVIEW24_ARB = 0x8738
const GL_MODELVIEW25_ARB = 0x8739
const GL_MODELVIEW26_ARB = 0x873a
const GL_MODELVIEW27_ARB = 0x873b
const GL_MODELVIEW28_ARB = 0x873c
const GL_MODELVIEW29_ARB = 0x873d
const GL_MODELVIEW30_ARB = 0x873e
const GL_MODELVIEW31_ARB = Float32(0x0873)
const GL_ARB_vertex_buffer_object = 1
const GL_BUFFER_SIZE_ARB = 0x8764
const GL_BUFFER_USAGE_ARB = 0x8765
const GL_ARRAY_BUFFER_ARB = 0x8892
const GL_ELEMENT_ARRAY_BUFFER_ARB = 0x8893
const GL_ARRAY_BUFFER_BINDING_ARB = 0x8894
const GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB = 0x8895
const GL_VERTEX_ARRAY_BUFFER_BINDING_ARB = 0x8896
const GL_NORMAL_ARRAY_BUFFER_BINDING_ARB = 0x8897
const GL_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x8898
const GL_INDEX_ARRAY_BUFFER_BINDING_ARB = 0x8899
const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB = 0x889a
const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB = 0x889b
const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x889c
const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB = 0x889d
const GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB = 0x889e
const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB = Float32(0x0889)
const GL_READ_ONLY_ARB = 0x88b8
const GL_WRITE_ONLY_ARB = 0x88b9
const GL_READ_WRITE_ARB = 0x88ba
const GL_BUFFER_ACCESS_ARB = 0x88bb
const GL_BUFFER_MAPPED_ARB = 0x88bc
const GL_BUFFER_MAP_POINTER_ARB = 0x88bd
const GL_STREAM_DRAW_ARB = 0x88e0
const GL_STREAM_READ_ARB = 0x88e1
const GL_STREAM_COPY_ARB = 0x88e2
const GL_STATIC_DRAW_ARB = 0x88e4
const GL_STATIC_READ_ARB = 0x88e5
const GL_STATIC_COPY_ARB = 0x88e6
const GL_DYNAMIC_DRAW_ARB = 0x88e8
const GL_DYNAMIC_READ_ARB = 0x88e9
const GL_DYNAMIC_COPY_ARB = 0x88ea
const GL_ARB_vertex_program = 1
const GL_COLOR_SUM_ARB = 0x8458
const GL_VERTEX_PROGRAM_ARB = 0x8620
const GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB = 0x8622
const GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB = 0x8623
const GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB = 0x8624
const GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB = 0x8625
const GL_CURRENT_VERTEX_ATTRIB_ARB = 0x8626
const GL_VERTEX_PROGRAM_POINT_SIZE_ARB = 0x8642
const GL_VERTEX_PROGRAM_TWO_SIDE_ARB = 0x8643
const GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB = 0x8645
const GL_MAX_VERTEX_ATTRIBS_ARB = 0x8869
const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB = 0x886a
const GL_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88b0
const GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88b1
const GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88b2
const GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88b3
const GL_ARB_vertex_shader = 1
const GL_VERTEX_SHADER_ARB = 0x8b31
const GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB = 0x8b4a
const GL_MAX_VARYING_FLOATS_ARB = 0x8b4b
const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB = 0x8b4c
const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB = 0x8b4d
const GL_OBJECT_ACTIVE_ATTRIBUTES_ARB = 0x8b89
const GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB = 0x8b8a
const GL_ARB_vertex_type_10f_11f_11f_rev = 1
const GL_ARB_vertex_type_2_10_10_10_rev = 1
const GL_ARB_viewport_array = 1
const GL_ARB_window_pos = 1
const GL_KHR_blend_equation_advanced = 1
const GL_MULTIPLY_KHR = 0x9294
const GL_SCREEN_KHR = 0x9295
const GL_OVERLAY_KHR = 0x9296
const GL_DARKEN_KHR = 0x9297
const GL_LIGHTEN_KHR = 0x9298
const GL_COLORDODGE_KHR = 0x9299
const GL_COLORBURN_KHR = 0x929a
const GL_HARDLIGHT_KHR = 0x929b
const GL_SOFTLIGHT_KHR = 0x929c
const GL_DIFFERENCE_KHR = 0x929e
const GL_EXCLUSION_KHR = 0x92a0
const GL_HSL_HUE_KHR = 0x92ad
const GL_HSL_SATURATION_KHR = 0x92ae
const GL_HSL_COLOR_KHR = Float32(0x092a)
const GL_HSL_LUMINOSITY_KHR = 0x92b0
const GL_KHR_blend_equation_advanced_coherent = 1
const GL_BLEND_ADVANCED_COHERENT_KHR = 0x9285
const GL_KHR_context_flush_control = 1
const GL_KHR_debug = 1
const GL_KHR_no_error = 1
const GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR = 0x00000008
const GL_KHR_robust_buffer_access_behavior = 1
const GL_KHR_robustness = 1
const GL_CONTEXT_ROBUST_ACCESS = 0x90f3
const GL_KHR_texture_compression_astc_hdr = 1
const GL_COMPRESSED_RGBA_ASTC_4x4_KHR = 0x93b0
const GL_COMPRESSED_RGBA_ASTC_5x4_KHR = 0x93b1
const GL_COMPRESSED_RGBA_ASTC_5x5_KHR = 0x93b2
const GL_COMPRESSED_RGBA_ASTC_6x5_KHR = 0x93b3
const GL_COMPRESSED_RGBA_ASTC_6x6_KHR = 0x93b4
const GL_COMPRESSED_RGBA_ASTC_8x5_KHR = 0x93b5
const GL_COMPRESSED_RGBA_ASTC_8x6_KHR = 0x93b6
const GL_COMPRESSED_RGBA_ASTC_8x8_KHR = 0x93b7
const GL_COMPRESSED_RGBA_ASTC_10x5_KHR = 0x93b8
const GL_COMPRESSED_RGBA_ASTC_10x6_KHR = 0x93b9
const GL_COMPRESSED_RGBA_ASTC_10x8_KHR = 0x93ba
const GL_COMPRESSED_RGBA_ASTC_10x10_KHR = 0x93bb
const GL_COMPRESSED_RGBA_ASTC_12x10_KHR = 0x93bc
const GL_COMPRESSED_RGBA_ASTC_12x12_KHR = 0x93bd
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = 0x93d0
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = 0x93d1
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = 0x93d2
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = 0x93d3
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = 0x93d4
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = 0x93d5
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = 0x93d6
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = 0x93d7
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = 0x93d8
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = 0x93d9
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = 0x93da
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = 0x93db
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = 0x93dc
const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = 0x93dd
const GL_KHR_texture_compression_astc_ldr = 1
const GL_OES_byte_coordinates = 1
const GL_OES_compressed_paletted_texture = 1
const GL_PALETTE4_RGB8_OES = 0x8b90
const GL_PALETTE4_RGBA8_OES = 0x8b91
const GL_PALETTE4_R5_G6_B5_OES = 0x8b92
const GL_PALETTE4_RGBA4_OES = 0x8b93
const GL_PALETTE4_RGB5_A1_OES = 0x8b94
const GL_PALETTE8_RGB8_OES = 0x8b95
const GL_PALETTE8_RGBA8_OES = 0x8b96
const GL_PALETTE8_R5_G6_B5_OES = 0x8b97
const GL_PALETTE8_RGBA4_OES = 0x8b98
const GL_PALETTE8_RGB5_A1_OES = 0x8b99
const GL_OES_fixed_point = 1
const GL_FIXED_OES = 0x140c
const GL_OES_query_matrix = 1
const GL_OES_read_format = 1
const GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 0x8b9a
const GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 0x8b9b
const GL_OES_single_precision = 1
const GL_3DFX_multisample = 1
const GL_MULTISAMPLE_3DFX = 0x86b2
const GL_SAMPLE_BUFFERS_3DFX = 0x86b3
const GL_SAMPLES_3DFX = 0x86b4
const GL_MULTISAMPLE_BIT_3DFX = 0x20000000
const GL_3DFX_tbuffer = 1
const GL_3DFX_texture_compression_FXT1 = 1
const GL_COMPRESSED_RGB_FXT1_3DFX = 0x86b0
const GL_COMPRESSED_RGBA_FXT1_3DFX = 0x86b1
const GL_AMD_blend_minmax_factor = 1
const GL_FACTOR_MIN_AMD = 0x901c
const GL_FACTOR_MAX_AMD = 0x901d
const GL_AMD_conservative_depth = 1
const GL_AMD_debug_output = 1
const GL_MAX_DEBUG_MESSAGE_LENGTH_AMD = 0x9143
const GL_MAX_DEBUG_LOGGED_MESSAGES_AMD = 0x9144
const GL_DEBUG_LOGGED_MESSAGES_AMD = 0x9145
const GL_DEBUG_SEVERITY_HIGH_AMD = 0x9146
const GL_DEBUG_SEVERITY_MEDIUM_AMD = 0x9147
const GL_DEBUG_SEVERITY_LOW_AMD = 0x9148
const GL_DEBUG_CATEGORY_API_ERROR_AMD = 0x9149
const GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD = 0x914a
const GL_DEBUG_CATEGORY_DEPRECATION_AMD = 0x914b
const GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = 0x914c
const GL_DEBUG_CATEGORY_PERFORMANCE_AMD = 0x914d
const GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD = 0x914e
const GL_DEBUG_CATEGORY_APPLICATION_AMD = Float32(0x0914)
const GL_DEBUG_CATEGORY_OTHER_AMD = 0x9150
const GL_AMD_depth_clamp_separate = 1
const GL_DEPTH_CLAMP_NEAR_AMD = 0x901e
const GL_DEPTH_CLAMP_FAR_AMD = Float32(0x0901)
const GL_AMD_draw_buffers_blend = 1
const GL_AMD_gcn_shader = 1
const GL_AMD_gpu_shader_int64 = 1
const GL_INT64_NV = 0x140e
const GL_UNSIGNED_INT64_NV = Float32(0x0140)
const GL_INT8_NV = 0x8fe0
const GL_INT8_VEC2_NV = 0x8fe1
const GL_INT8_VEC3_NV = 0x8fe2
const GL_INT8_VEC4_NV = 0x8fe3
const GL_INT16_NV = 0x8fe4
const GL_INT16_VEC2_NV = 0x8fe5
const GL_INT16_VEC3_NV = 0x8fe6
const GL_INT16_VEC4_NV = 0x8fe7
const GL_INT64_VEC2_NV = 0x8fe9
const GL_INT64_VEC3_NV = 0x8fea
const GL_INT64_VEC4_NV = 0x8feb
const GL_UNSIGNED_INT8_NV = 0x8fec
const GL_UNSIGNED_INT8_VEC2_NV = 0x8fed
const GL_UNSIGNED_INT8_VEC3_NV = 0x8fee
const GL_UNSIGNED_INT8_VEC4_NV = Float32(0x08fe)
const GL_UNSIGNED_INT16_NV = 0x8ff0
const GL_UNSIGNED_INT16_VEC2_NV = 0x8ff1
const GL_UNSIGNED_INT16_VEC3_NV = 0x8ff2
const GL_UNSIGNED_INT16_VEC4_NV = 0x8ff3
const GL_UNSIGNED_INT64_VEC2_NV = 0x8ff5
const GL_UNSIGNED_INT64_VEC3_NV = 0x8ff6
const GL_UNSIGNED_INT64_VEC4_NV = 0x8ff7
const GL_FLOAT16_NV = 0x8ff8
const GL_FLOAT16_VEC2_NV = 0x8ff9
const GL_FLOAT16_VEC3_NV = 0x8ffa
const GL_FLOAT16_VEC4_NV = 0x8ffb
const GL_AMD_interleaved_elements = 1
const GL_VERTEX_ELEMENT_SWIZZLE_AMD = 0x91a4
const GL_VERTEX_ID_SWIZZLE_AMD = 0x91a5
const GL_AMD_multi_draw_indirect = 1
const GL_AMD_name_gen_delete = 1
const GL_DATA_BUFFER_AMD = 0x9151
const GL_PERFORMANCE_MONITOR_AMD = 0x9152
const GL_QUERY_OBJECT_AMD = 0x9153
const GL_VERTEX_ARRAY_OBJECT_AMD = 0x9154
const GL_SAMPLER_OBJECT_AMD = 0x9155
const GL_AMD_occlusion_query_event = 1
const GL_OCCLUSION_QUERY_EVENT_MASK_AMD = Float32(0x0874)
const GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD = 0x00000001
const GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD = 0x00000002
const GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD = 0x00000004
const GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD = 0x00000008
const GL_QUERY_ALL_EVENT_BITS_AMD = Float32(0x0fffffff)
const GL_AMD_performance_monitor = 1
const GL_COUNTER_TYPE_AMD = 0x8bc0
const GL_COUNTER_RANGE_AMD = 0x8bc1
const GL_UNSIGNED_INT64_AMD = 0x8bc2
const GL_PERCENTAGE_AMD = 0x8bc3
const GL_PERFMON_RESULT_AVAILABLE_AMD = 0x8bc4
const GL_PERFMON_RESULT_SIZE_AMD = 0x8bc5
const GL_PERFMON_RESULT_AMD = 0x8bc6
const GL_AMD_pinned_memory = 1
const GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD = 0x9160
const GL_AMD_query_buffer_object = 1
const GL_QUERY_BUFFER_AMD = 0x9192
const GL_QUERY_BUFFER_BINDING_AMD = 0x9193
const GL_QUERY_RESULT_NO_WAIT_AMD = 0x9194
const GL_AMD_sample_positions = 1
const GL_SUBSAMPLE_DISTANCE_AMD = Float32(0x0883)
const GL_AMD_seamless_cubemap_per_texture = 1
const GL_AMD_shader_atomic_counter_ops = 1
const GL_AMD_shader_stencil_export = 1
const GL_AMD_shader_trinary_minmax = 1
const GL_AMD_sparse_texture = 1
const GL_VIRTUAL_PAGE_SIZE_X_AMD = 0x9195
const GL_VIRTUAL_PAGE_SIZE_Y_AMD = 0x9196
const GL_VIRTUAL_PAGE_SIZE_Z_AMD = 0x9197
const GL_MAX_SPARSE_TEXTURE_SIZE_AMD = 0x9198
const GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD = 0x9199
const GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS = 0x919a
const GL_MIN_SPARSE_LEVEL_AMD = 0x919b
const GL_MIN_LOD_WARNING_AMD = 0x919c
const GL_TEXTURE_STORAGE_SPARSE_BIT_AMD = 0x00000001
const GL_AMD_stencil_operation_extended = 1
const GL_SET_AMD = 0x874a
const GL_REPLACE_VALUE_AMD = 0x874b
const GL_STENCIL_OP_VALUE_AMD = 0x874c
const GL_STENCIL_BACK_OP_VALUE_AMD = 0x874d
const GL_AMD_texture_texture4 = 1
const GL_AMD_transform_feedback3_lines_triangles = 1
const GL_AMD_transform_feedback4 = 1
const GL_STREAM_RASTERIZATION_AMD = 0x91a0
const GL_AMD_vertex_shader_layer = 1
const GL_AMD_vertex_shader_tessellator = 1
const GL_SAMPLER_BUFFER_AMD = 0x9001
const GL_INT_SAMPLER_BUFFER_AMD = 0x9002
const GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD = 0x9003
const GL_TESSELLATION_MODE_AMD = 0x9004
const GL_TESSELLATION_FACTOR_AMD = 0x9005
const GL_DISCRETE_AMD = 0x9006
const GL_CONTINUOUS_AMD = 0x9007
const GL_AMD_vertex_shader_viewport_index = 1
const GL_APPLE_aux_depth_stencil = 1
const GL_AUX_DEPTH_STENCIL_APPLE = 0x8a14
const GL_APPLE_client_storage = 1
const GL_UNPACK_CLIENT_STORAGE_APPLE = 0x85b2
const GL_APPLE_element_array = 1
const GL_ELEMENT_ARRAY_APPLE = 0x8a0c
const GL_ELEMENT_ARRAY_TYPE_APPLE = 0x8a0d
const GL_ELEMENT_ARRAY_POINTER_APPLE = 0x8a0e
const GL_APPLE_fence = 1
const GL_DRAW_PIXELS_APPLE = 0x8a0a
const GL_FENCE_APPLE = 0x8a0b
const GL_APPLE_float_pixels = 1
const GL_HALF_APPLE = 0x140b
const GL_RGBA_FLOAT32_APPLE = 0x8814
const GL_RGB_FLOAT32_APPLE = 0x8815
const GL_ALPHA_FLOAT32_APPLE = 0x8816
const GL_INTENSITY_FLOAT32_APPLE = 0x8817
const GL_LUMINANCE_FLOAT32_APPLE = 0x8818
const GL_LUMINANCE_ALPHA_FLOAT32_APPLE = 0x8819
const GL_RGBA_FLOAT16_APPLE = 0x881a
const GL_RGB_FLOAT16_APPLE = 0x881b
const GL_ALPHA_FLOAT16_APPLE = 0x881c
const GL_INTENSITY_FLOAT16_APPLE = 0x881d
const GL_LUMINANCE_FLOAT16_APPLE = 0x881e
const GL_LUMINANCE_ALPHA_FLOAT16_APPLE = Float32(0x0881)
const GL_COLOR_FLOAT_APPLE = Float32(0x08a0)
const GL_APPLE_flush_buffer_range = 1
const GL_BUFFER_SERIALIZED_MODIFY_APPLE = 0x8a12
const GL_BUFFER_FLUSHING_UNMAP_APPLE = 0x8a13
const GL_APPLE_object_purgeable = 1
const GL_BUFFER_OBJECT_APPLE = 0x85b3
const GL_RELEASED_APPLE = 0x8a19
const GL_VOLATILE_APPLE = 0x8a1a
const GL_RETAINED_APPLE = 0x8a1b
const GL_UNDEFINED_APPLE = 0x8a1c
const GL_PURGEABLE_APPLE = 0x8a1d
const GL_APPLE_rgb_422 = 1
const GL_RGB_422_APPLE = Float32(0x08a1)
const GL_UNSIGNED_SHORT_8_8_APPLE = 0x85ba
const GL_UNSIGNED_SHORT_8_8_REV_APPLE = 0x85bb
const GL_RGB_RAW_422_APPLE = 0x8a51
const GL_APPLE_row_bytes = 1
const GL_PACK_ROW_BYTES_APPLE = 0x8a15
const GL_UNPACK_ROW_BYTES_APPLE = 0x8a16
const GL_APPLE_specular_vector = 1
const GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE = 0x85b0
const GL_APPLE_texture_range = 1
const GL_TEXTURE_RANGE_LENGTH_APPLE = 0x85b7
const GL_TEXTURE_RANGE_POINTER_APPLE = 0x85b8
const GL_TEXTURE_STORAGE_HINT_APPLE = 0x85bc
const GL_STORAGE_PRIVATE_APPLE = 0x85bd
const GL_STORAGE_CACHED_APPLE = 0x85be
const GL_STORAGE_SHARED_APPLE = Float32(0x085b)
const GL_APPLE_transform_hint = 1
const GL_TRANSFORM_HINT_APPLE = 0x85b1
const GL_APPLE_vertex_array_object = 1
const GL_VERTEX_ARRAY_BINDING_APPLE = 0x85b5
const GL_APPLE_vertex_array_range = 1
const GL_VERTEX_ARRAY_RANGE_APPLE = 0x851d
const GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE = 0x851e
const GL_VERTEX_ARRAY_STORAGE_HINT_APPLE = Float32(0x0851)
const GL_VERTEX_ARRAY_RANGE_POINTER_APPLE = 0x8521
const GL_STORAGE_CLIENT_APPLE = 0x85b4
const GL_APPLE_vertex_program_evaluators = 1
const GL_VERTEX_ATTRIB_MAP1_APPLE = 0x8a00
const GL_VERTEX_ATTRIB_MAP2_APPLE = 0x8a01
const GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE = 0x8a02
const GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE = 0x8a03
const GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE = 0x8a04
const GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE = 0x8a05
const GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE = 0x8a06
const GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE = 0x8a07
const GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE = 0x8a08
const GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE = 0x8a09
const GL_APPLE_ycbcr_422 = 1
const GL_YCBCR_422_APPLE = 0x85b9
const GL_ATI_draw_buffers = 1
const GL_MAX_DRAW_BUFFERS_ATI = 0x8824
const GL_DRAW_BUFFER0_ATI = 0x8825
const GL_DRAW_BUFFER1_ATI = 0x8826
const GL_DRAW_BUFFER2_ATI = 0x8827
const GL_DRAW_BUFFER3_ATI = 0x8828
const GL_DRAW_BUFFER4_ATI = 0x8829
const GL_DRAW_BUFFER5_ATI = 0x882a
const GL_DRAW_BUFFER6_ATI = 0x882b
const GL_DRAW_BUFFER7_ATI = 0x882c
const GL_DRAW_BUFFER8_ATI = 0x882d
const GL_DRAW_BUFFER9_ATI = 0x882e
const GL_DRAW_BUFFER10_ATI = Float32(0x0882)
const GL_DRAW_BUFFER11_ATI = 0x8830
const GL_DRAW_BUFFER12_ATI = 0x8831
const GL_DRAW_BUFFER13_ATI = 0x8832
const GL_DRAW_BUFFER14_ATI = 0x8833
const GL_DRAW_BUFFER15_ATI = 0x8834
const GL_ATI_element_array = 1
const GL_ELEMENT_ARRAY_ATI = 0x8768
const GL_ELEMENT_ARRAY_TYPE_ATI = 0x8769
const GL_ELEMENT_ARRAY_POINTER_ATI = 0x876a
const GL_ATI_envmap_bumpmap = 1
const GL_BUMP_ROT_MATRIX_ATI = 0x8775
const GL_BUMP_ROT_MATRIX_SIZE_ATI = 0x8776
const GL_BUMP_NUM_TEX_UNITS_ATI = 0x8777
const GL_BUMP_TEX_UNITS_ATI = 0x8778
const GL_DUDV_ATI = 0x8779
const GL_DU8DV8_ATI = 0x877a
const GL_BUMP_ENVMAP_ATI = 0x877b
const GL_BUMP_TARGET_ATI = 0x877c
const GL_ATI_fragment_shader = 1
const GL_FRAGMENT_SHADER_ATI = 0x8920
const GL_REG_0_ATI = 0x8921
const GL_REG_1_ATI = 0x8922
const GL_REG_2_ATI = 0x8923
const GL_REG_3_ATI = 0x8924
const GL_REG_4_ATI = 0x8925
const GL_REG_5_ATI = 0x8926
const GL_REG_6_ATI = 0x8927
const GL_REG_7_ATI = 0x8928
const GL_REG_8_ATI = 0x8929
const GL_REG_9_ATI = 0x892a
const GL_REG_10_ATI = 0x892b
const GL_REG_11_ATI = 0x892c
const GL_REG_12_ATI = 0x892d
const GL_REG_13_ATI = 0x892e
const GL_REG_14_ATI = Float32(0x0892)
const GL_REG_15_ATI = 0x8930
const GL_REG_16_ATI = 0x8931
const GL_REG_17_ATI = 0x8932
const GL_REG_18_ATI = 0x8933
const GL_REG_19_ATI = 0x8934
const GL_REG_20_ATI = 0x8935
const GL_REG_21_ATI = 0x8936
const GL_REG_22_ATI = 0x8937
const GL_REG_23_ATI = 0x8938
const GL_REG_24_ATI = 0x8939
const GL_REG_25_ATI = 0x893a
const GL_REG_26_ATI = 0x893b
const GL_REG_27_ATI = 0x893c
const GL_REG_28_ATI = 0x893d
const GL_REG_29_ATI = 0x893e
const GL_REG_30_ATI = Float32(0x0893)
const GL_REG_31_ATI = 0x8940
const GL_CON_0_ATI = 0x8941
const GL_CON_1_ATI = 0x8942
const GL_CON_2_ATI = 0x8943
const GL_CON_3_ATI = 0x8944
const GL_CON_4_ATI = 0x8945
const GL_CON_5_ATI = 0x8946
const GL_CON_6_ATI = 0x8947
const GL_CON_7_ATI = 0x8948
const GL_CON_8_ATI = 0x8949
const GL_CON_9_ATI = 0x894a
const GL_CON_10_ATI = 0x894b
const GL_CON_11_ATI = 0x894c
const GL_CON_12_ATI = 0x894d
const GL_CON_13_ATI = 0x894e
const GL_CON_14_ATI = Float32(0x0894)
const GL_CON_15_ATI = 0x8950
const GL_CON_16_ATI = 0x8951
const GL_CON_17_ATI = 0x8952
const GL_CON_18_ATI = 0x8953
const GL_CON_19_ATI = 0x8954
const GL_CON_20_ATI = 0x8955
const GL_CON_21_ATI = 0x8956
const GL_CON_22_ATI = 0x8957
const GL_CON_23_ATI = 0x8958
const GL_CON_24_ATI = 0x8959
const GL_CON_25_ATI = 0x895a
const GL_CON_26_ATI = 0x895b
const GL_CON_27_ATI = 0x895c
const GL_CON_28_ATI = 0x895d
const GL_CON_29_ATI = 0x895e
const GL_CON_30_ATI = Float32(0x0895)
const GL_CON_31_ATI = 0x8960
const GL_MOV_ATI = 0x8961
const GL_ADD_ATI = 0x8963
const GL_MUL_ATI = 0x8964
const GL_SUB_ATI = 0x8965
const GL_DOT3_ATI = 0x8966
const GL_DOT4_ATI = 0x8967
const GL_MAD_ATI = 0x8968
const GL_LERP_ATI = 0x8969
const GL_CND_ATI = 0x896a
const GL_CND0_ATI = 0x896b
const GL_DOT2_ADD_ATI = 0x896c
const GL_SECONDARY_INTERPOLATOR_ATI = 0x896d
const GL_NUM_FRAGMENT_REGISTERS_ATI = 0x896e
const GL_NUM_FRAGMENT_CONSTANTS_ATI = Float32(0x0896)
const GL_NUM_PASSES_ATI = 0x8970
const GL_NUM_INSTRUCTIONS_PER_PASS_ATI = 0x8971
const GL_NUM_INSTRUCTIONS_TOTAL_ATI = 0x8972
const GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 0x8973
const GL_NUM_LOOPBACK_COMPONENTS_ATI = 0x8974
const GL_COLOR_ALPHA_PAIRING_ATI = 0x8975
const GL_SWIZZLE_STR_ATI = 0x8976
const GL_SWIZZLE_STQ_ATI = 0x8977
const GL_SWIZZLE_STR_DR_ATI = 0x8978
const GL_SWIZZLE_STQ_DQ_ATI = 0x8979
const GL_SWIZZLE_STRQ_ATI = 0x897a
const GL_SWIZZLE_STRQ_DQ_ATI = 0x897b
const GL_RED_BIT_ATI = 0x00000001
const GL_GREEN_BIT_ATI = 0x00000002
const GL_BLUE_BIT_ATI = 0x00000004
const GL_2X_BIT_ATI = 0x00000001
const GL_4X_BIT_ATI = 0x00000002
const GL_8X_BIT_ATI = 0x00000004
const GL_HALF_BIT_ATI = 0x00000008
const GL_QUARTER_BIT_ATI = 0x00000010
const GL_EIGHTH_BIT_ATI = 0x00000020
const GL_SATURATE_BIT_ATI = 0x00000040
const GL_COMP_BIT_ATI = 0x00000002
const GL_NEGATE_BIT_ATI = 0x00000004
const GL_BIAS_BIT_ATI = 0x00000008
const GL_ATI_map_object_buffer = 1
const GL_ATI_meminfo = 1
const GL_VBO_FREE_MEMORY_ATI = 0x87fb
const GL_TEXTURE_FREE_MEMORY_ATI = 0x87fc
const GL_RENDERBUFFER_FREE_MEMORY_ATI = 0x87fd
const GL_ATI_pixel_format_float = 1
const GL_RGBA_FLOAT_MODE_ATI = 0x8820
const GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI = 0x8835
const GL_ATI_pn_triangles = 1
const GL_PN_TRIANGLES_ATI = 0x87f0
const GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87f1
const GL_PN_TRIANGLES_POINT_MODE_ATI = 0x87f2
const GL_PN_TRIANGLES_NORMAL_MODE_ATI = 0x87f3
const GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87f4
const GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI = 0x87f5
const GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI = 0x87f6
const GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = 0x87f7
const GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 0x87f8
const GL_ATI_separate_stencil = 1
const GL_STENCIL_BACK_FUNC_ATI = 0x8800
const GL_STENCIL_BACK_FAIL_ATI = 0x8801
const GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI = 0x8802
const GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI = 0x8803
const GL_ATI_text_fragment_shader = 1
const GL_TEXT_FRAGMENT_SHADER_ATI = 0x8200
const GL_ATI_texture_env_combine3 = 1
const GL_MODULATE_ADD_ATI = 0x8744
const GL_MODULATE_SIGNED_ADD_ATI = 0x8745
const GL_MODULATE_SUBTRACT_ATI = 0x8746
const GL_ATI_texture_float = 1
const GL_RGBA_FLOAT32_ATI = 0x8814
const GL_RGB_FLOAT32_ATI = 0x8815
const GL_ALPHA_FLOAT32_ATI = 0x8816
const GL_INTENSITY_FLOAT32_ATI = 0x8817
const GL_LUMINANCE_FLOAT32_ATI = 0x8818
const GL_LUMINANCE_ALPHA_FLOAT32_ATI = 0x8819
const GL_RGBA_FLOAT16_ATI = 0x881a
const GL_RGB_FLOAT16_ATI = 0x881b
const GL_ALPHA_FLOAT16_ATI = 0x881c
const GL_INTENSITY_FLOAT16_ATI = 0x881d
const GL_LUMINANCE_FLOAT16_ATI = 0x881e
const GL_LUMINANCE_ALPHA_FLOAT16_ATI = Float32(0x0881)
const GL_ATI_texture_mirror_once = 1
const GL_MIRROR_CLAMP_ATI = 0x8742
const GL_MIRROR_CLAMP_TO_EDGE_ATI = 0x8743
const GL_ATI_vertex_array_object = 1
const GL_STATIC_ATI = 0x8760
const GL_DYNAMIC_ATI = 0x8761
const GL_PRESERVE_ATI = 0x8762
const GL_DISCARD_ATI = 0x8763
const GL_OBJECT_BUFFER_SIZE_ATI = 0x8764
const GL_OBJECT_BUFFER_USAGE_ATI = 0x8765
const GL_ARRAY_OBJECT_BUFFER_ATI = 0x8766
const GL_ARRAY_OBJECT_OFFSET_ATI = 0x8767
const GL_ATI_vertex_attrib_array_object = 1
const GL_ATI_vertex_streams = 1
const GL_MAX_VERTEX_STREAMS_ATI = 0x876b
const GL_VERTEX_STREAM0_ATI = 0x876c
const GL_VERTEX_STREAM1_ATI = 0x876d
const GL_VERTEX_STREAM2_ATI = 0x876e
const GL_VERTEX_STREAM3_ATI = Float32(0x0876)
const GL_VERTEX_STREAM4_ATI = 0x8770
const GL_VERTEX_STREAM5_ATI = 0x8771
const GL_VERTEX_STREAM6_ATI = 0x8772
const GL_VERTEX_STREAM7_ATI = 0x8773
const GL_VERTEX_SOURCE_ATI = 0x8774
const GL_EXT_422_pixels = 1
const GL_422_EXT = 0x80cc
const GL_422_REV_EXT = 0x80cd
const GL_422_AVERAGE_EXT = 0x80ce
const GL_422_REV_AVERAGE_EXT = Float32(0x080c)
const GL_EXT_abgr = 1
const GL_ABGR_EXT = 0x8000
const GL_EXT_bgra = 1
const GL_BGR_EXT = 0x80e0
const GL_BGRA_EXT = 0x80e1
const GL_EXT_bindable_uniform = 1
const GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT = 0x8de2
const GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT = 0x8de3
const GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT = 0x8de4
const GL_MAX_BINDABLE_UNIFORM_SIZE_EXT = 0x8ded
const GL_UNIFORM_BUFFER_EXT = 0x8dee
const GL_UNIFORM_BUFFER_BINDING_EXT = Float32(0x08de)
const GL_EXT_blend_color = 1
const GL_CONSTANT_COLOR_EXT = 0x8001
const GL_ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002
const GL_CONSTANT_ALPHA_EXT = 0x8003
const GL_ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004
const GL_BLEND_COLOR_EXT = 0x8005
const GL_EXT_blend_equation_separate = 1
const GL_BLEND_EQUATION_RGB_EXT = 0x8009
const GL_BLEND_EQUATION_ALPHA_EXT = 0x883d
const GL_EXT_blend_func_separate = 1
const GL_BLEND_DST_RGB_EXT = 0x80c8
const GL_BLEND_SRC_RGB_EXT = 0x80c9
const GL_BLEND_DST_ALPHA_EXT = 0x80ca
const GL_BLEND_SRC_ALPHA_EXT = 0x80cb
const GL_EXT_blend_logic_op = 1
const GL_EXT_blend_minmax = 1
const GL_MIN_EXT = 0x8007
const GL_MAX_EXT = 0x8008
const GL_FUNC_ADD_EXT = 0x8006
const GL_BLEND_EQUATION_EXT = 0x8009
const GL_EXT_blend_subtract = 1
const GL_FUNC_SUBTRACT_EXT = 0x800a
const GL_FUNC_REVERSE_SUBTRACT_EXT = 0x800b
const GL_EXT_clip_volume_hint = 1
const GL_CLIP_VOLUME_CLIPPING_HINT_EXT = 0x80f0
const GL_EXT_cmyka = 1
const GL_CMYK_EXT = 0x800c
const GL_CMYKA_EXT = 0x800d
const GL_PACK_CMYK_HINT_EXT = 0x800e
const GL_UNPACK_CMYK_HINT_EXT = Float32(0x0800)
const GL_EXT_color_subtable = 1
const GL_EXT_compiled_vertex_array = 1
const GL_ARRAY_ELEMENT_LOCK_FIRST_EXT = 0x81a8
const GL_ARRAY_ELEMENT_LOCK_COUNT_EXT = 0x81a9
const GL_EXT_convolution = 1
const GL_CONVOLUTION_1D_EXT = 0x8010
const GL_CONVOLUTION_2D_EXT = 0x8011
const GL_SEPARABLE_2D_EXT = 0x8012
const GL_CONVOLUTION_BORDER_MODE_EXT = 0x8013
const GL_CONVOLUTION_FILTER_SCALE_EXT = 0x8014
const GL_CONVOLUTION_FILTER_BIAS_EXT = 0x8015
const GL_REDUCE_EXT = 0x8016
const GL_CONVOLUTION_FORMAT_EXT = 0x8017
const GL_CONVOLUTION_WIDTH_EXT = 0x8018
const GL_CONVOLUTION_HEIGHT_EXT = 0x8019
const GL_MAX_CONVOLUTION_WIDTH_EXT = 0x801a
const GL_MAX_CONVOLUTION_HEIGHT_EXT = 0x801b
const GL_POST_CONVOLUTION_RED_SCALE_EXT = 0x801c
const GL_POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801d
const GL_POST_CONVOLUTION_BLUE_SCALE_EXT = 0x801e
const GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = Float32(0x0801)
const GL_POST_CONVOLUTION_RED_BIAS_EXT = 0x8020
const GL_POST_CONVOLUTION_GREEN_BIAS_EXT = 0x8021
const GL_POST_CONVOLUTION_BLUE_BIAS_EXT = 0x8022
const GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = 0x8023
const GL_EXT_coordinate_frame = 1
const GL_TANGENT_ARRAY_EXT = 0x8439
const GL_BINORMAL_ARRAY_EXT = 0x843a
const GL_CURRENT_TANGENT_EXT = 0x843b
const GL_CURRENT_BINORMAL_EXT = 0x843c
const GL_TANGENT_ARRAY_TYPE_EXT = 0x843e
const GL_TANGENT_ARRAY_STRIDE_EXT = Float32(0x0843)
const GL_BINORMAL_ARRAY_TYPE_EXT = 0x8440
const GL_BINORMAL_ARRAY_STRIDE_EXT = 0x8441
const GL_TANGENT_ARRAY_POINTER_EXT = 0x8442
const GL_BINORMAL_ARRAY_POINTER_EXT = 0x8443
const GL_MAP1_TANGENT_EXT = 0x8444
const GL_MAP2_TANGENT_EXT = 0x8445
const GL_MAP1_BINORMAL_EXT = 0x8446
const GL_MAP2_BINORMAL_EXT = 0x8447
const GL_EXT_copy_texture = 1
const GL_EXT_cull_vertex = 1
const GL_CULL_VERTEX_EXT = 0x81aa
const GL_CULL_VERTEX_EYE_POSITION_EXT = 0x81ab
const GL_CULL_VERTEX_OBJECT_POSITION_EXT = 0x81ac
const GL_EXT_debug_label = 1
const GL_PROGRAM_PIPELINE_OBJECT_EXT = Float32(0x08a4)
const GL_PROGRAM_OBJECT_EXT = 0x8b40
const GL_SHADER_OBJECT_EXT = 0x8b48
const GL_BUFFER_OBJECT_EXT = 0x9151
const GL_QUERY_OBJECT_EXT = 0x9153
const GL_VERTEX_ARRAY_OBJECT_EXT = 0x9154
const GL_EXT_debug_marker = 1
const GL_EXT_depth_bounds_test = 1
const GL_DEPTH_BOUNDS_TEST_EXT = 0x8890
const GL_DEPTH_BOUNDS_EXT = 0x8891
const GL_EXT_direct_state_access = 1
const GL_PROGRAM_MATRIX_EXT = 0x8e2d
const GL_TRANSPOSE_PROGRAM_MATRIX_EXT = 0x8e2e
const GL_PROGRAM_MATRIX_STACK_DEPTH_EXT = Float32(0x08e2)
const GL_EXT_draw_buffers2 = 1
const GL_EXT_draw_instanced = 1
const GL_EXT_draw_range_elements = 1
const GL_MAX_ELEMENTS_VERTICES_EXT = 0x80e8
const GL_MAX_ELEMENTS_INDICES_EXT = 0x80e9
const GL_EXT_fog_coord = 1
const GL_FOG_COORDINATE_SOURCE_EXT = 0x8450
const GL_FOG_COORDINATE_EXT = 0x8451
const GL_FRAGMENT_DEPTH_EXT = 0x8452
const GL_CURRENT_FOG_COORDINATE_EXT = 0x8453
const GL_FOG_COORDINATE_ARRAY_TYPE_EXT = 0x8454
const GL_FOG_COORDINATE_ARRAY_STRIDE_EXT = 0x8455
const GL_FOG_COORDINATE_ARRAY_POINTER_EXT = 0x8456
const GL_FOG_COORDINATE_ARRAY_EXT = 0x8457
const GL_EXT_framebuffer_blit = 1
const GL_READ_FRAMEBUFFER_EXT = 0x8ca8
const GL_DRAW_FRAMEBUFFER_EXT = 0x8ca9
const GL_DRAW_FRAMEBUFFER_BINDING_EXT = 0x8ca6
const GL_READ_FRAMEBUFFER_BINDING_EXT = 0x8caa
const GL_EXT_framebuffer_multisample = 1
const GL_RENDERBUFFER_SAMPLES_EXT = 0x8cab
const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = 0x8d56
const GL_MAX_SAMPLES_EXT = 0x8d57
const GL_EXT_framebuffer_multisample_blit_scaled = 1
const GL_SCALED_RESOLVE_FASTEST_EXT = 0x90ba
const GL_SCALED_RESOLVE_NICEST_EXT = 0x90bb
const GL_EXT_framebuffer_object = 1
const GL_INVALID_FRAMEBUFFER_OPERATION_EXT = 0x0506
const GL_MAX_RENDERBUFFER_SIZE_EXT = 0x84e8
const GL_FRAMEBUFFER_BINDING_EXT = 0x8ca6
const GL_RENDERBUFFER_BINDING_EXT = 0x8ca7
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = 0x8cd0
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = 0x8cd1
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = 0x8cd2
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = 0x8cd3
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = 0x8cd4
const GL_FRAMEBUFFER_COMPLETE_EXT = 0x8cd5
const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT = 0x8cd6
const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT = 0x8cd7
const GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT = 0x8cd9
const GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT = 0x8cda
const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT = 0x8cdb
const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT = 0x8cdc
const GL_FRAMEBUFFER_UNSUPPORTED_EXT = 0x8cdd
const GL_MAX_COLOR_ATTACHMENTS_EXT = Float32(0x08cd)
const GL_COLOR_ATTACHMENT0_EXT = 0x8ce0
const GL_COLOR_ATTACHMENT1_EXT = 0x8ce1
const GL_COLOR_ATTACHMENT2_EXT = 0x8ce2
const GL_COLOR_ATTACHMENT3_EXT = 0x8ce3
const GL_COLOR_ATTACHMENT4_EXT = 0x8ce4
const GL_COLOR_ATTACHMENT5_EXT = 0x8ce5
const GL_COLOR_ATTACHMENT6_EXT = 0x8ce6
const GL_COLOR_ATTACHMENT7_EXT = 0x8ce7
const GL_COLOR_ATTACHMENT8_EXT = 0x8ce8
const GL_COLOR_ATTACHMENT9_EXT = 0x8ce9
const GL_COLOR_ATTACHMENT10_EXT = 0x8cea
const GL_COLOR_ATTACHMENT11_EXT = 0x8ceb
const GL_COLOR_ATTACHMENT12_EXT = 0x8cec
const GL_COLOR_ATTACHMENT13_EXT = 0x8ced
const GL_COLOR_ATTACHMENT14_EXT = 0x8cee
const GL_COLOR_ATTACHMENT15_EXT = Float32(0x08ce)
const GL_DEPTH_ATTACHMENT_EXT = 0x8d00
const GL_STENCIL_ATTACHMENT_EXT = 0x8d20
const GL_FRAMEBUFFER_EXT = 0x8d40
const GL_RENDERBUFFER_EXT = 0x8d41
const GL_RENDERBUFFER_WIDTH_EXT = 0x8d42
const GL_RENDERBUFFER_HEIGHT_EXT = 0x8d43
const GL_RENDERBUFFER_INTERNAL_FORMAT_EXT = 0x8d44
const GL_STENCIL_INDEX1_EXT = 0x8d46
const GL_STENCIL_INDEX4_EXT = 0x8d47
const GL_STENCIL_INDEX8_EXT = 0x8d48
const GL_STENCIL_INDEX16_EXT = 0x8d49
const GL_RENDERBUFFER_RED_SIZE_EXT = 0x8d50
const GL_RENDERBUFFER_GREEN_SIZE_EXT = 0x8d51
const GL_RENDERBUFFER_BLUE_SIZE_EXT = 0x8d52
const GL_RENDERBUFFER_ALPHA_SIZE_EXT = 0x8d53
const GL_RENDERBUFFER_DEPTH_SIZE_EXT = 0x8d54
const GL_RENDERBUFFER_STENCIL_SIZE_EXT = 0x8d55
const GL_EXT_framebuffer_sRGB = 1
const GL_FRAMEBUFFER_SRGB_EXT = 0x8db9
const GL_FRAMEBUFFER_SRGB_CAPABLE_EXT = 0x8dba
const GL_EXT_geometry_shader4 = 1
const GL_GEOMETRY_SHADER_EXT = 0x8dd9
const GL_GEOMETRY_VERTICES_OUT_EXT = 0x8dda
const GL_GEOMETRY_INPUT_TYPE_EXT = 0x8ddb
const GL_GEOMETRY_OUTPUT_TYPE_EXT = 0x8ddc
const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT = 0x8c29
const GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT = 0x8ddd
const GL_MAX_VERTEX_VARYING_COMPONENTS_EXT = 0x8dde
const GL_MAX_VARYING_COMPONENTS_EXT = 0x8b4b
const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT = Float32(0x08dd)
const GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT = 0x8de0
const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT = 0x8de1
const GL_LINES_ADJACENCY_EXT = 0x000a
const GL_LINE_STRIP_ADJACENCY_EXT = 0x000b
const GL_TRIANGLES_ADJACENCY_EXT = 0x000c
const GL_TRIANGLE_STRIP_ADJACENCY_EXT = 0x000d
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT = 0x8da8
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT = 0x8da9
const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = 0x8da7
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = 0x8cd4
const GL_PROGRAM_POINT_SIZE_EXT = 0x8642
const GL_EXT_gpu_program_parameters = 1
const GL_EXT_gpu_shader4 = 1
const GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT = 0x88fd
const GL_SAMPLER_1D_ARRAY_EXT = 0x8dc0
const GL_SAMPLER_2D_ARRAY_EXT = 0x8dc1
const GL_SAMPLER_BUFFER_EXT = 0x8dc2
const GL_SAMPLER_1D_ARRAY_SHADOW_EXT = 0x8dc3
const GL_SAMPLER_2D_ARRAY_SHADOW_EXT = 0x8dc4
const GL_SAMPLER_CUBE_SHADOW_EXT = 0x8dc5
const GL_UNSIGNED_INT_VEC2_EXT = 0x8dc6
const GL_UNSIGNED_INT_VEC3_EXT = 0x8dc7
const GL_UNSIGNED_INT_VEC4_EXT = 0x8dc8
const GL_INT_SAMPLER_1D_EXT = 0x8dc9
const GL_INT_SAMPLER_2D_EXT = 0x8dca
const GL_INT_SAMPLER_3D_EXT = 0x8dcb
const GL_INT_SAMPLER_CUBE_EXT = 0x8dcc
const GL_INT_SAMPLER_2D_RECT_EXT = 0x8dcd
const GL_INT_SAMPLER_1D_ARRAY_EXT = 0x8dce
const GL_INT_SAMPLER_2D_ARRAY_EXT = Float32(0x08dc)
const GL_INT_SAMPLER_BUFFER_EXT = 0x8dd0
const GL_UNSIGNED_INT_SAMPLER_1D_EXT = 0x8dd1
const GL_UNSIGNED_INT_SAMPLER_2D_EXT = 0x8dd2
const GL_UNSIGNED_INT_SAMPLER_3D_EXT = 0x8dd3
const GL_UNSIGNED_INT_SAMPLER_CUBE_EXT = 0x8dd4
const GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT = 0x8dd5
const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT = 0x8dd6
const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT = 0x8dd7
const GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT = 0x8dd8
const GL_MIN_PROGRAM_TEXEL_OFFSET_EXT = 0x8904
const GL_MAX_PROGRAM_TEXEL_OFFSET_EXT = 0x8905
const GL_EXT_histogram = 1
const GL_HISTOGRAM_EXT = 0x8024
const GL_PROXY_HISTOGRAM_EXT = 0x8025
const GL_HISTOGRAM_WIDTH_EXT = 0x8026
const GL_HISTOGRAM_FORMAT_EXT = 0x8027
const GL_HISTOGRAM_RED_SIZE_EXT = 0x8028
const GL_HISTOGRAM_GREEN_SIZE_EXT = 0x8029
const GL_HISTOGRAM_BLUE_SIZE_EXT = 0x802a
const GL_HISTOGRAM_ALPHA_SIZE_EXT = 0x802b
const GL_HISTOGRAM_LUMINANCE_SIZE_EXT = 0x802c
const GL_HISTOGRAM_SINK_EXT = 0x802d
const GL_MINMAX_EXT = 0x802e
const GL_MINMAX_FORMAT_EXT = Float32(0x0802)
const GL_MINMAX_SINK_EXT = 0x8030
const GL_TABLE_TOO_LARGE_EXT = 0x8031
const GL_EXT_index_array_formats = 1
const GL_IUI_V2F_EXT = 0x81ad
const GL_IUI_V3F_EXT = 0x81ae
const GL_IUI_N3F_V2F_EXT = Float32(0x081a)
const GL_IUI_N3F_V3F_EXT = 0x81b0
const GL_T2F_IUI_V2F_EXT = 0x81b1
const GL_T2F_IUI_V3F_EXT = 0x81b2
const GL_T2F_IUI_N3F_V2F_EXT = 0x81b3
const GL_T2F_IUI_N3F_V3F_EXT = 0x81b4
const GL_EXT_index_func = 1
const GL_INDEX_TEST_EXT = 0x81b5
const GL_INDEX_TEST_FUNC_EXT = 0x81b6
const GL_INDEX_TEST_REF_EXT = 0x81b7
const GL_EXT_index_material = 1
const GL_INDEX_MATERIAL_EXT = 0x81b8
const GL_INDEX_MATERIAL_PARAMETER_EXT = 0x81b9
const GL_INDEX_MATERIAL_FACE_EXT = 0x81ba
const GL_EXT_index_texture = 1
const GL_EXT_light_texture = 1
const GL_FRAGMENT_MATERIAL_EXT = 0x8349
const GL_FRAGMENT_NORMAL_EXT = 0x834a
const GL_FRAGMENT_COLOR_EXT = 0x834c
const GL_ATTENUATION_EXT = 0x834d
const GL_SHADOW_ATTENUATION_EXT = 0x834e
const GL_TEXTURE_APPLICATION_MODE_EXT = Float32(0x0834)
const GL_TEXTURE_LIGHT_EXT = 0x8350
const GL_TEXTURE_MATERIAL_FACE_EXT = 0x8351
const GL_TEXTURE_MATERIAL_PARAMETER_EXT = 0x8352
const GL_EXT_misc_attribute = 1
const GL_EXT_multi_draw_arrays = 1
const GL_EXT_multisample = 1
const GL_MULTISAMPLE_EXT = 0x809d
const GL_SAMPLE_ALPHA_TO_MASK_EXT = 0x809e
const GL_SAMPLE_ALPHA_TO_ONE_EXT = Float32(0x0809)
const GL_SAMPLE_MASK_EXT = 0x80a0
const GL_1PASS_EXT = 0x80a1
const GL_2PASS_0_EXT = 0x80a2
const GL_2PASS_1_EXT = 0x80a3
const GL_4PASS_0_EXT = 0x80a4
const GL_4PASS_1_EXT = 0x80a5
const GL_4PASS_2_EXT = 0x80a6
const GL_4PASS_3_EXT = 0x80a7
const GL_SAMPLE_BUFFERS_EXT = 0x80a8
const GL_SAMPLES_EXT = 0x80a9
const GL_SAMPLE_MASK_VALUE_EXT = 0x80aa
const GL_SAMPLE_MASK_INVERT_EXT = 0x80ab
const GL_SAMPLE_PATTERN_EXT = 0x80ac
const GL_MULTISAMPLE_BIT_EXT = 0x20000000
const GL_EXT_packed_depth_stencil = 1
const GL_DEPTH_STENCIL_EXT = 0x84f9
const GL_UNSIGNED_INT_24_8_EXT = 0x84fa
const GL_DEPTH24_STENCIL8_EXT = 0x88f0
const GL_TEXTURE_STENCIL_SIZE_EXT = 0x88f1
const GL_EXT_packed_float = 1
const GL_R11F_G11F_B10F_EXT = 0x8c3a
const GL_UNSIGNED_INT_10F_11F_11F_REV_EXT = 0x8c3b
const GL_RGBA_SIGNED_COMPONENTS_EXT = 0x8c3c
const GL_EXT_packed_pixels = 1
const GL_UNSIGNED_BYTE_3_3_2_EXT = 0x8032
const GL_UNSIGNED_SHORT_4_4_4_4_EXT = 0x8033
const GL_UNSIGNED_SHORT_5_5_5_1_EXT = 0x8034
const GL_UNSIGNED_INT_8_8_8_8_EXT = 0x8035
const GL_UNSIGNED_INT_10_10_10_2_EXT = 0x8036
const GL_EXT_paletted_texture = 1
const GL_COLOR_INDEX1_EXT = 0x80e2
const GL_COLOR_INDEX2_EXT = 0x80e3
const GL_COLOR_INDEX4_EXT = 0x80e4
const GL_COLOR_INDEX8_EXT = 0x80e5
const GL_COLOR_INDEX12_EXT = 0x80e6
const GL_COLOR_INDEX16_EXT = 0x80e7
const GL_TEXTURE_INDEX_SIZE_EXT = 0x80ed
const GL_EXT_pixel_buffer_object = 1
const GL_PIXEL_PACK_BUFFER_EXT = 0x88eb
const GL_PIXEL_UNPACK_BUFFER_EXT = 0x88ec
const GL_PIXEL_PACK_BUFFER_BINDING_EXT = 0x88ed
const GL_PIXEL_UNPACK_BUFFER_BINDING_EXT = Float32(0x088e)
const GL_EXT_pixel_transform = 1
const GL_PIXEL_TRANSFORM_2D_EXT = 0x8330
const GL_PIXEL_MAG_FILTER_EXT = 0x8331
const GL_PIXEL_MIN_FILTER_EXT = 0x8332
const GL_PIXEL_CUBIC_WEIGHT_EXT = 0x8333
const GL_CUBIC_EXT = 0x8334
const GL_AVERAGE_EXT = 0x8335
const GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8336
const GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8337
const GL_PIXEL_TRANSFORM_2D_MATRIX_EXT = 0x8338
const GL_EXT_pixel_transform_color_table = 1
const GL_EXT_point_parameters = 1
const GL_POINT_SIZE_MIN_EXT = 0x8126
const GL_POINT_SIZE_MAX_EXT = 0x8127
const GL_POINT_FADE_THRESHOLD_SIZE_EXT = 0x8128
const GL_DISTANCE_ATTENUATION_EXT = 0x8129
const GL_EXT_polygon_offset = 1
const GL_POLYGON_OFFSET_EXT = 0x8037
const GL_POLYGON_OFFSET_FACTOR_EXT = 0x8038
const GL_POLYGON_OFFSET_BIAS_EXT = 0x8039
const GL_EXT_polygon_offset_clamp = 1
const GL_POLYGON_OFFSET_CLAMP_EXT = 0x8e1b
const GL_EXT_post_depth_coverage = 1
const GL_EXT_provoking_vertex = 1
const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT = 0x8e4c
const GL_FIRST_VERTEX_CONVENTION_EXT = 0x8e4d
const GL_LAST_VERTEX_CONVENTION_EXT = 0x8e4e
const GL_PROVOKING_VERTEX_EXT = Float32(0x08e4)
const GL_EXT_raster_multisample = 1
const GL_RASTER_MULTISAMPLE_EXT = 0x9327
const GL_RASTER_SAMPLES_EXT = 0x9328
const GL_MAX_RASTER_SAMPLES_EXT = 0x9329
const GL_RASTER_FIXED_SAMPLE_LOCATIONS_EXT = 0x932a
const GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT = 0x932b
const GL_EFFECTIVE_RASTER_SAMPLES_EXT = 0x932c
const GL_EXT_rescale_normal = 1
const GL_RESCALE_NORMAL_EXT = 0x803a
const GL_EXT_secondary_color = 1
const GL_COLOR_SUM_EXT = 0x8458
const GL_CURRENT_SECONDARY_COLOR_EXT = 0x8459
const GL_SECONDARY_COLOR_ARRAY_SIZE_EXT = 0x845a
const GL_SECONDARY_COLOR_ARRAY_TYPE_EXT = 0x845b
const GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT = 0x845c
const GL_SECONDARY_COLOR_ARRAY_POINTER_EXT = 0x845d
const GL_SECONDARY_COLOR_ARRAY_EXT = 0x845e
const GL_EXT_separate_shader_objects = 1
const GL_ACTIVE_PROGRAM_EXT = 0x8b8d
const GL_EXT_separate_specular_color = 1
const GL_LIGHT_MODEL_COLOR_CONTROL_EXT = 0x81f8
const GL_SINGLE_COLOR_EXT = 0x81f9
const GL_SEPARATE_SPECULAR_COLOR_EXT = 0x81fa
const GL_EXT_shader_image_load_formatted = 1
const GL_EXT_shader_image_load_store = 1
const GL_MAX_IMAGE_UNITS_EXT = 0x8f38
const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT = 0x8f39
const GL_IMAGE_BINDING_NAME_EXT = 0x8f3a
const GL_IMAGE_BINDING_LEVEL_EXT = 0x8f3b
const GL_IMAGE_BINDING_LAYERED_EXT = 0x8f3c
const GL_IMAGE_BINDING_LAYER_EXT = 0x8f3d
const GL_IMAGE_BINDING_ACCESS_EXT = 0x8f3e
const GL_IMAGE_1D_EXT = 0x904c
const GL_IMAGE_2D_EXT = 0x904d
const GL_IMAGE_3D_EXT = 0x904e
const GL_IMAGE_2D_RECT_EXT = Float32(0x0904)
const GL_IMAGE_CUBE_EXT = 0x9050
const GL_IMAGE_BUFFER_EXT = 0x9051
const GL_IMAGE_1D_ARRAY_EXT = 0x9052
const GL_IMAGE_2D_ARRAY_EXT = 0x9053
const GL_IMAGE_CUBE_MAP_ARRAY_EXT = 0x9054
const GL_IMAGE_2D_MULTISAMPLE_EXT = 0x9055
const GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x9056
const GL_INT_IMAGE_1D_EXT = 0x9057
const GL_INT_IMAGE_2D_EXT = 0x9058
const GL_INT_IMAGE_3D_EXT = 0x9059
const GL_INT_IMAGE_2D_RECT_EXT = 0x905a
const GL_INT_IMAGE_CUBE_EXT = 0x905b
const GL_INT_IMAGE_BUFFER_EXT = 0x905c
const GL_INT_IMAGE_1D_ARRAY_EXT = 0x905d
const GL_INT_IMAGE_2D_ARRAY_EXT = 0x905e
const GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT = Float32(0x0905)
const GL_INT_IMAGE_2D_MULTISAMPLE_EXT = 0x9060
const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x9061
const GL_UNSIGNED_INT_IMAGE_1D_EXT = 0x9062
const GL_UNSIGNED_INT_IMAGE_2D_EXT = 0x9063
const GL_UNSIGNED_INT_IMAGE_3D_EXT = 0x9064
const GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT = 0x9065
const GL_UNSIGNED_INT_IMAGE_CUBE_EXT = 0x9066
const GL_UNSIGNED_INT_IMAGE_BUFFER_EXT = 0x9067
const GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT = 0x9068
const GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT = 0x9069
const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 0x906a
const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT = 0x906b
const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x906c
const GL_MAX_IMAGE_SAMPLES_EXT = 0x906d
const GL_IMAGE_BINDING_FORMAT_EXT = 0x906e
const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT = 0x00000001
const GL_ELEMENT_ARRAY_BARRIER_BIT_EXT = 0x00000002
const GL_UNIFORM_BARRIER_BIT_EXT = 0x00000004
const GL_TEXTURE_FETCH_BARRIER_BIT_EXT = 0x00000008
const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT = 0x00000020
const GL_COMMAND_BARRIER_BIT_EXT = 0x00000040
const GL_PIXEL_BUFFER_BARRIER_BIT_EXT = 0x00000080
const GL_TEXTURE_UPDATE_BARRIER_BIT_EXT = 0x00000100
const GL_BUFFER_UPDATE_BARRIER_BIT_EXT = 0x00000200
const GL_FRAMEBUFFER_BARRIER_BIT_EXT = 0x00000400
const GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT = 0x00000800
const GL_ATOMIC_COUNTER_BARRIER_BIT_EXT = 0x00001000
const GL_ALL_BARRIER_BITS_EXT = Float32(0x0fffffff)
const GL_EXT_shader_integer_mix = 1
const GL_EXT_shadow_funcs = 1
const GL_EXT_shared_texture_palette = 1
const GL_SHARED_TEXTURE_PALETTE_EXT = 0x81fb
const GL_EXT_sparse_texture2 = 1
const GL_EXT_stencil_clear_tag = 1
const GL_STENCIL_TAG_BITS_EXT = 0x88f2
const GL_STENCIL_CLEAR_TAG_VALUE_EXT = 0x88f3
const GL_EXT_stencil_two_side = 1
const GL_STENCIL_TEST_TWO_SIDE_EXT = 0x8910
const GL_ACTIVE_STENCIL_FACE_EXT = 0x8911
const GL_EXT_stencil_wrap = 1
const GL_INCR_WRAP_EXT = 0x8507
const GL_DECR_WRAP_EXT = 0x8508
const GL_EXT_subtexture = 1
const GL_EXT_texture = 1
const GL_ALPHA4_EXT = 0x803b
const GL_ALPHA8_EXT = 0x803c
const GL_ALPHA12_EXT = 0x803d
const GL_ALPHA16_EXT = 0x803e
const GL_LUMINANCE4_EXT = Float32(0x0803)
const GL_LUMINANCE8_EXT = 0x8040
const GL_LUMINANCE12_EXT = 0x8041
const GL_LUMINANCE16_EXT = 0x8042
const GL_LUMINANCE4_ALPHA4_EXT = 0x8043
const GL_LUMINANCE6_ALPHA2_EXT = 0x8044
const GL_LUMINANCE8_ALPHA8_EXT = 0x8045
const GL_LUMINANCE12_ALPHA4_EXT = 0x8046
const GL_LUMINANCE12_ALPHA12_EXT = 0x8047
const GL_LUMINANCE16_ALPHA16_EXT = 0x8048
const GL_INTENSITY_EXT = 0x8049
const GL_INTENSITY4_EXT = 0x804a
const GL_INTENSITY8_EXT = 0x804b
const GL_INTENSITY12_EXT = 0x804c
const GL_INTENSITY16_EXT = 0x804d
const GL_RGB2_EXT = 0x804e
const GL_RGB4_EXT = Float32(0x0804)
const GL_RGB5_EXT = 0x8050
const GL_RGB8_EXT = 0x8051
const GL_RGB10_EXT = 0x8052
const GL_RGB12_EXT = 0x8053
const GL_RGB16_EXT = 0x8054
const GL_RGBA2_EXT = 0x8055
const GL_RGBA4_EXT = 0x8056
const GL_RGB5_A1_EXT = 0x8057
const GL_RGBA8_EXT = 0x8058
const GL_RGB10_A2_EXT = 0x8059
const GL_RGBA12_EXT = 0x805a
const GL_RGBA16_EXT = 0x805b
const GL_TEXTURE_RED_SIZE_EXT = 0x805c
const GL_TEXTURE_GREEN_SIZE_EXT = 0x805d
const GL_TEXTURE_BLUE_SIZE_EXT = 0x805e
const GL_TEXTURE_ALPHA_SIZE_EXT = Float32(0x0805)
const GL_TEXTURE_LUMINANCE_SIZE_EXT = 0x8060
const GL_TEXTURE_INTENSITY_SIZE_EXT = 0x8061
const GL_REPLACE_EXT = 0x8062
const GL_PROXY_TEXTURE_1D_EXT = 0x8063
const GL_PROXY_TEXTURE_2D_EXT = 0x8064
const GL_TEXTURE_TOO_LARGE_EXT = 0x8065
const GL_EXT_texture3D = 1
const GL_PACK_SKIP_IMAGES_EXT = 0x806b
const GL_PACK_IMAGE_HEIGHT_EXT = 0x806c
const GL_UNPACK_SKIP_IMAGES_EXT = 0x806d
const GL_UNPACK_IMAGE_HEIGHT_EXT = 0x806e
const GL_TEXTURE_3D_EXT = Float32(0x0806)
const GL_PROXY_TEXTURE_3D_EXT = 0x8070
const GL_TEXTURE_DEPTH_EXT = 0x8071
const GL_TEXTURE_WRAP_R_EXT = 0x8072
const GL_MAX_3D_TEXTURE_SIZE_EXT = 0x8073
const GL_EXT_texture_array = 1
const GL_TEXTURE_1D_ARRAY_EXT = 0x8c18
const GL_PROXY_TEXTURE_1D_ARRAY_EXT = 0x8c19
const GL_TEXTURE_2D_ARRAY_EXT = 0x8c1a
const GL_PROXY_TEXTURE_2D_ARRAY_EXT = 0x8c1b
const GL_TEXTURE_BINDING_1D_ARRAY_EXT = 0x8c1c
const GL_TEXTURE_BINDING_2D_ARRAY_EXT = 0x8c1d
const GL_MAX_ARRAY_TEXTURE_LAYERS_EXT = Float32(0x088f)
const GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT = 0x884e
const GL_EXT_texture_buffer_object = 1
const GL_TEXTURE_BUFFER_EXT = 0x8c2a
const GL_MAX_TEXTURE_BUFFER_SIZE_EXT = 0x8c2b
const GL_TEXTURE_BINDING_BUFFER_EXT = 0x8c2c
const GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT = 0x8c2d
const GL_TEXTURE_BUFFER_FORMAT_EXT = 0x8c2e
const GL_EXT_texture_compression_latc = 1
const GL_COMPRESSED_LUMINANCE_LATC1_EXT = 0x8c70
const GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT = 0x8c71
const GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT = 0x8c72
const GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT = 0x8c73
const GL_EXT_texture_compression_rgtc = 1
const GL_COMPRESSED_RED_RGTC1_EXT = 0x8dbb
const GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = 0x8dbc
const GL_COMPRESSED_RED_GREEN_RGTC2_EXT = 0x8dbd
const GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = 0x8dbe
const GL_EXT_texture_compression_s3tc = 1
const GL_COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83f0
const GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83f1
const GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83f2
const GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83f3
const GL_EXT_texture_cube_map = 1
const GL_NORMAL_MAP_EXT = 0x8511
const GL_REFLECTION_MAP_EXT = 0x8512
const GL_TEXTURE_CUBE_MAP_EXT = 0x8513
const GL_TEXTURE_BINDING_CUBE_MAP_EXT = 0x8514
const GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT = 0x8515
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = 0x8516
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = 0x8517
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = 0x8518
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = 0x8519
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = 0x851a
const GL_PROXY_TEXTURE_CUBE_MAP_EXT = 0x851b
const GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT = 0x851c
const GL_EXT_texture_env_add = 1
const GL_EXT_texture_env_combine = 1
const GL_COMBINE_EXT = 0x8570
const GL_COMBINE_RGB_EXT = 0x8571
const GL_COMBINE_ALPHA_EXT = 0x8572
const GL_RGB_SCALE_EXT = 0x8573
const GL_ADD_SIGNED_EXT = 0x8574
const GL_INTERPOLATE_EXT = 0x8575
const GL_CONSTANT_EXT = 0x8576
const GL_PRIMARY_COLOR_EXT = 0x8577
const GL_PREVIOUS_EXT = 0x8578
const GL_SOURCE0_RGB_EXT = 0x8580
const GL_SOURCE1_RGB_EXT = 0x8581
const GL_SOURCE2_RGB_EXT = 0x8582
const GL_SOURCE0_ALPHA_EXT = 0x8588
const GL_SOURCE1_ALPHA_EXT = 0x8589
const GL_SOURCE2_ALPHA_EXT = 0x858a
const GL_OPERAND0_RGB_EXT = 0x8590
const GL_OPERAND1_RGB_EXT = 0x8591
const GL_OPERAND2_RGB_EXT = 0x8592
const GL_OPERAND0_ALPHA_EXT = 0x8598
const GL_OPERAND1_ALPHA_EXT = 0x8599
const GL_OPERAND2_ALPHA_EXT = 0x859a
const GL_EXT_texture_env_dot3 = 1
const GL_DOT3_RGB_EXT = 0x8740
const GL_DOT3_RGBA_EXT = 0x8741
const GL_EXT_texture_filter_anisotropic = 1
const GL_TEXTURE_MAX_ANISOTROPY_EXT = 0x84fe
const GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = Float32(0x084f)
const GL_EXT_texture_filter_minmax = 1
const GL_EXT_texture_integer = 1
const GL_RGBA32UI_EXT = 0x8d70
const GL_RGB32UI_EXT = 0x8d71
const GL_ALPHA32UI_EXT = 0x8d72
const GL_INTENSITY32UI_EXT = 0x8d73
const GL_LUMINANCE32UI_EXT = 0x8d74
const GL_LUMINANCE_ALPHA32UI_EXT = 0x8d75
const GL_RGBA16UI_EXT = 0x8d76
const GL_RGB16UI_EXT = 0x8d77
const GL_ALPHA16UI_EXT = 0x8d78
const GL_INTENSITY16UI_EXT = 0x8d79
const GL_LUMINANCE16UI_EXT = 0x8d7a
const GL_LUMINANCE_ALPHA16UI_EXT = 0x8d7b
const GL_RGBA8UI_EXT = 0x8d7c
const GL_RGB8UI_EXT = 0x8d7d
const GL_ALPHA8UI_EXT = 0x8d7e
const GL_INTENSITY8UI_EXT = Float32(0x08d7)
const GL_LUMINANCE8UI_EXT = 0x8d80
const GL_LUMINANCE_ALPHA8UI_EXT = 0x8d81
const GL_RGBA32I_EXT = 0x8d82
const GL_RGB32I_EXT = 0x8d83
const GL_ALPHA32I_EXT = 0x8d84
const GL_INTENSITY32I_EXT = 0x8d85
const GL_LUMINANCE32I_EXT = 0x8d86
const GL_LUMINANCE_ALPHA32I_EXT = 0x8d87
const GL_RGBA16I_EXT = 0x8d88
const GL_RGB16I_EXT = 0x8d89
const GL_ALPHA16I_EXT = 0x8d8a
const GL_INTENSITY16I_EXT = 0x8d8b
const GL_LUMINANCE16I_EXT = 0x8d8c
const GL_LUMINANCE_ALPHA16I_EXT = 0x8d8d
const GL_RGBA8I_EXT = 0x8d8e
const GL_RGB8I_EXT = Float32(0x08d8)
const GL_ALPHA8I_EXT = 0x8d90
const GL_INTENSITY8I_EXT = 0x8d91
const GL_LUMINANCE8I_EXT = 0x8d92
const GL_LUMINANCE_ALPHA8I_EXT = 0x8d93
const GL_RED_INTEGER_EXT = 0x8d94
const GL_GREEN_INTEGER_EXT = 0x8d95
const GL_BLUE_INTEGER_EXT = 0x8d96
const GL_ALPHA_INTEGER_EXT = 0x8d97
const GL_RGB_INTEGER_EXT = 0x8d98
const GL_RGBA_INTEGER_EXT = 0x8d99
const GL_BGR_INTEGER_EXT = 0x8d9a
const GL_BGRA_INTEGER_EXT = 0x8d9b
const GL_LUMINANCE_INTEGER_EXT = 0x8d9c
const GL_LUMINANCE_ALPHA_INTEGER_EXT = 0x8d9d
const GL_RGBA_INTEGER_MODE_EXT = 0x8d9e
const GL_EXT_texture_lod_bias = 1
const GL_MAX_TEXTURE_LOD_BIAS_EXT = 0x84fd
const GL_TEXTURE_FILTER_CONTROL_EXT = 0x8500
const GL_TEXTURE_LOD_BIAS_EXT = 0x8501
const GL_EXT_texture_mirror_clamp = 1
const GL_MIRROR_CLAMP_EXT = 0x8742
const GL_MIRROR_CLAMP_TO_EDGE_EXT = 0x8743
const GL_MIRROR_CLAMP_TO_BORDER_EXT = 0x8912
const GL_EXT_texture_object = 1
const GL_TEXTURE_PRIORITY_EXT = 0x8066
const GL_TEXTURE_RESIDENT_EXT = 0x8067
const GL_TEXTURE_1D_BINDING_EXT = 0x8068
const GL_TEXTURE_2D_BINDING_EXT = 0x8069
const GL_TEXTURE_3D_BINDING_EXT = 0x806a
const GL_EXT_texture_perturb_normal = 1
const GL_PERTURB_EXT = 0x85ae
const GL_TEXTURE_NORMAL_EXT = Float32(0x085a)
const GL_EXT_texture_sRGB = 1
const GL_SRGB_EXT = 0x8c40
const GL_SRGB8_EXT = 0x8c41
const GL_SRGB_ALPHA_EXT = 0x8c42
const GL_SRGB8_ALPHA8_EXT = 0x8c43
const GL_SLUMINANCE_ALPHA_EXT = 0x8c44
const GL_SLUMINANCE8_ALPHA8_EXT = 0x8c45
const GL_SLUMINANCE_EXT = 0x8c46
const GL_SLUMINANCE8_EXT = 0x8c47
const GL_COMPRESSED_SRGB_EXT = 0x8c48
const GL_COMPRESSED_SRGB_ALPHA_EXT = 0x8c49
const GL_COMPRESSED_SLUMINANCE_EXT = 0x8c4a
const GL_COMPRESSED_SLUMINANCE_ALPHA_EXT = 0x8c4b
const GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = 0x8c4c
const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = 0x8c4d
const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = 0x8c4e
const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = Float32(0x08c4)
const GL_EXT_texture_sRGB_decode = 1
const GL_TEXTURE_SRGB_DECODE_EXT = 0x8a48
const GL_DECODE_EXT = 0x8a49
const GL_SKIP_DECODE_EXT = 0x8a4a
const GL_EXT_texture_shared_exponent = 1
const GL_RGB9_E5_EXT = 0x8c3d
const GL_UNSIGNED_INT_5_9_9_9_REV_EXT = 0x8c3e
const GL_TEXTURE_SHARED_SIZE_EXT = Float32(0x08c3)
const GL_EXT_texture_snorm = 1
const GL_ALPHA_SNORM = 0x9010
const GL_LUMINANCE_SNORM = 0x9011
const GL_LUMINANCE_ALPHA_SNORM = 0x9012
const GL_INTENSITY_SNORM = 0x9013
const GL_ALPHA8_SNORM = 0x9014
const GL_LUMINANCE8_SNORM = 0x9015
const GL_LUMINANCE8_ALPHA8_SNORM = 0x9016
const GL_INTENSITY8_SNORM = 0x9017
const GL_ALPHA16_SNORM = 0x9018
const GL_LUMINANCE16_SNORM = 0x9019
const GL_LUMINANCE16_ALPHA16_SNORM = 0x901a
const GL_INTENSITY16_SNORM = 0x901b
const GL_RED_SNORM = 0x8f90
const GL_RG_SNORM = 0x8f91
const GL_RGB_SNORM = 0x8f92
const GL_RGBA_SNORM = 0x8f93
const GL_EXT_texture_swizzle = 1
const GL_TEXTURE_SWIZZLE_R_EXT = 0x8e42
const GL_TEXTURE_SWIZZLE_G_EXT = 0x8e43
const GL_TEXTURE_SWIZZLE_B_EXT = 0x8e44
const GL_TEXTURE_SWIZZLE_A_EXT = 0x8e45
const GL_TEXTURE_SWIZZLE_RGBA_EXT = 0x8e46
const GL_EXT_timer_query = 1
const GL_TIME_ELAPSED_EXT = Float32(0x088b)
const GL_EXT_transform_feedback = 1
const GL_TRANSFORM_FEEDBACK_BUFFER_EXT = 0x8c8e
const GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT = 0x8c84
const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT = 0x8c85
const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT = Float32(0x08c8)
const GL_INTERLEAVED_ATTRIBS_EXT = 0x8c8c
const GL_SEPARATE_ATTRIBS_EXT = 0x8c8d
const GL_PRIMITIVES_GENERATED_EXT = 0x8c87
const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT = 0x8c88
const GL_RASTERIZER_DISCARD_EXT = 0x8c89
const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT = 0x8c8a
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT = 0x8c8b
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT = 0x8c80
const GL_TRANSFORM_FEEDBACK_VARYINGS_EXT = 0x8c83
const GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT = Float32(0x08c7)
const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT = 0x8c76
const GL_EXT_vertex_array = 1
const GL_VERTEX_ARRAY_EXT = 0x8074
const GL_NORMAL_ARRAY_EXT = 0x8075
const GL_COLOR_ARRAY_EXT = 0x8076
const GL_INDEX_ARRAY_EXT = 0x8077
const GL_TEXTURE_COORD_ARRAY_EXT = 0x8078
const GL_EDGE_FLAG_ARRAY_EXT = 0x8079
const GL_VERTEX_ARRAY_SIZE_EXT = 0x807a
const GL_VERTEX_ARRAY_TYPE_EXT = 0x807b
const GL_VERTEX_ARRAY_STRIDE_EXT = 0x807c
const GL_VERTEX_ARRAY_COUNT_EXT = 0x807d
const GL_NORMAL_ARRAY_TYPE_EXT = 0x807e
const GL_NORMAL_ARRAY_STRIDE_EXT = Float32(0x0807)
const GL_NORMAL_ARRAY_COUNT_EXT = 0x8080
const GL_COLOR_ARRAY_SIZE_EXT = 0x8081
const GL_COLOR_ARRAY_TYPE_EXT = 0x8082
const GL_COLOR_ARRAY_STRIDE_EXT = 0x8083
const GL_COLOR_ARRAY_COUNT_EXT = 0x8084
const GL_INDEX_ARRAY_TYPE_EXT = 0x8085
const GL_INDEX_ARRAY_STRIDE_EXT = 0x8086
const GL_INDEX_ARRAY_COUNT_EXT = 0x8087
const GL_TEXTURE_COORD_ARRAY_SIZE_EXT = 0x8088
const GL_TEXTURE_COORD_ARRAY_TYPE_EXT = 0x8089
const GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808a
const GL_TEXTURE_COORD_ARRAY_COUNT_EXT = 0x808b
const GL_EDGE_FLAG_ARRAY_STRIDE_EXT = 0x808c
const GL_EDGE_FLAG_ARRAY_COUNT_EXT = 0x808d
const GL_VERTEX_ARRAY_POINTER_EXT = 0x808e
const GL_NORMAL_ARRAY_POINTER_EXT = Float32(0x0808)
const GL_COLOR_ARRAY_POINTER_EXT = 0x8090
const GL_INDEX_ARRAY_POINTER_EXT = 0x8091
const GL_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092
const GL_EDGE_FLAG_ARRAY_POINTER_EXT = 0x8093
const GL_EXT_vertex_array_bgra = 1
const GL_EXT_vertex_attrib_64bit = 1
const GL_DOUBLE_VEC2_EXT = 0x8ffc
const GL_DOUBLE_VEC3_EXT = 0x8ffd
const GL_DOUBLE_VEC4_EXT = 0x8ffe
const GL_DOUBLE_MAT2_EXT = 0x8f46
const GL_DOUBLE_MAT3_EXT = 0x8f47
const GL_DOUBLE_MAT4_EXT = 0x8f48
const GL_DOUBLE_MAT2x3_EXT = 0x8f49
const GL_DOUBLE_MAT2x4_EXT = 0x8f4a
const GL_DOUBLE_MAT3x2_EXT = 0x8f4b
const GL_DOUBLE_MAT3x4_EXT = 0x8f4c
const GL_DOUBLE_MAT4x2_EXT = 0x8f4d
const GL_DOUBLE_MAT4x3_EXT = 0x8f4e
const GL_EXT_vertex_shader = 1
const GL_VERTEX_SHADER_EXT = 0x8780
const GL_VERTEX_SHADER_BINDING_EXT = 0x8781
const GL_OP_INDEX_EXT = 0x8782
const GL_OP_NEGATE_EXT = 0x8783
const GL_OP_DOT3_EXT = 0x8784
const GL_OP_DOT4_EXT = 0x8785
const GL_OP_MUL_EXT = 0x8786
const GL_OP_ADD_EXT = 0x8787
const GL_OP_MADD_EXT = 0x8788
const GL_OP_FRAC_EXT = 0x8789
const GL_OP_MAX_EXT = 0x878a
const GL_OP_MIN_EXT = 0x878b
const GL_OP_SET_GE_EXT = 0x878c
const GL_OP_SET_LT_EXT = 0x878d
const GL_OP_CLAMP_EXT = 0x878e
const GL_OP_FLOOR_EXT = Float32(0x0878)
const GL_OP_ROUND_EXT = 0x8790
const GL_OP_EXP_BASE_2_EXT = 0x8791
const GL_OP_LOG_BASE_2_EXT = 0x8792
const GL_OP_POWER_EXT = 0x8793
const GL_OP_RECIP_EXT = 0x8794
const GL_OP_RECIP_SQRT_EXT = 0x8795
const GL_OP_SUB_EXT = 0x8796
const GL_OP_CROSS_PRODUCT_EXT = 0x8797
const GL_OP_MULTIPLY_MATRIX_EXT = 0x8798
const GL_OP_MOV_EXT = 0x8799
const GL_OUTPUT_VERTEX_EXT = 0x879a
const GL_OUTPUT_COLOR0_EXT = 0x879b
const GL_OUTPUT_COLOR1_EXT = 0x879c
const GL_OUTPUT_TEXTURE_COORD0_EXT = 0x879d
const GL_OUTPUT_TEXTURE_COORD1_EXT = 0x879e
const GL_OUTPUT_TEXTURE_COORD2_EXT = Float32(0x0879)
const GL_OUTPUT_TEXTURE_COORD3_EXT = 0x87a0
const GL_OUTPUT_TEXTURE_COORD4_EXT = 0x87a1
const GL_OUTPUT_TEXTURE_COORD5_EXT = 0x87a2
const GL_OUTPUT_TEXTURE_COORD6_EXT = 0x87a3
const GL_OUTPUT_TEXTURE_COORD7_EXT = 0x87a4
const GL_OUTPUT_TEXTURE_COORD8_EXT = 0x87a5
const GL_OUTPUT_TEXTURE_COORD9_EXT = 0x87a6
const GL_OUTPUT_TEXTURE_COORD10_EXT = 0x87a7
const GL_OUTPUT_TEXTURE_COORD11_EXT = 0x87a8
const GL_OUTPUT_TEXTURE_COORD12_EXT = 0x87a9
const GL_OUTPUT_TEXTURE_COORD13_EXT = 0x87aa
const GL_OUTPUT_TEXTURE_COORD14_EXT = 0x87ab
const GL_OUTPUT_TEXTURE_COORD15_EXT = 0x87ac
const GL_OUTPUT_TEXTURE_COORD16_EXT = 0x87ad
const GL_OUTPUT_TEXTURE_COORD17_EXT = 0x87ae
const GL_OUTPUT_TEXTURE_COORD18_EXT = Float32(0x087a)
const GL_OUTPUT_TEXTURE_COORD19_EXT = 0x87b0
const GL_OUTPUT_TEXTURE_COORD20_EXT = 0x87b1
const GL_OUTPUT_TEXTURE_COORD21_EXT = 0x87b2
const GL_OUTPUT_TEXTURE_COORD22_EXT = 0x87b3
const GL_OUTPUT_TEXTURE_COORD23_EXT = 0x87b4
const GL_OUTPUT_TEXTURE_COORD24_EXT = 0x87b5
const GL_OUTPUT_TEXTURE_COORD25_EXT = 0x87b6
const GL_OUTPUT_TEXTURE_COORD26_EXT = 0x87b7
const GL_OUTPUT_TEXTURE_COORD27_EXT = 0x87b8
const GL_OUTPUT_TEXTURE_COORD28_EXT = 0x87b9
const GL_OUTPUT_TEXTURE_COORD29_EXT = 0x87ba
const GL_OUTPUT_TEXTURE_COORD30_EXT = 0x87bb
const GL_OUTPUT_TEXTURE_COORD31_EXT = 0x87bc
const GL_OUTPUT_FOG_EXT = 0x87bd
const GL_SCALAR_EXT = 0x87be
const GL_VECTOR_EXT = Float32(0x087b)
const GL_MATRIX_EXT = 0x87c0
const GL_VARIANT_EXT = 0x87c1
const GL_INVARIANT_EXT = 0x87c2
const GL_LOCAL_CONSTANT_EXT = 0x87c3
const GL_LOCAL_EXT = 0x87c4
const GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87c5
const GL_MAX_VERTEX_SHADER_VARIANTS_EXT = 0x87c6
const GL_MAX_VERTEX_SHADER_INVARIANTS_EXT = 0x87c7
const GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87c8
const GL_MAX_VERTEX_SHADER_LOCALS_EXT = 0x87c9
const GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87ca
const GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT = 0x87cb
const GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87cc
const GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT = 0x87cd
const GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT = 0x87ce
const GL_VERTEX_SHADER_INSTRUCTIONS_EXT = Float32(0x087c)
const GL_VERTEX_SHADER_VARIANTS_EXT = 0x87d0
const GL_VERTEX_SHADER_INVARIANTS_EXT = 0x87d1
const GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87d2
const GL_VERTEX_SHADER_LOCALS_EXT = 0x87d3
const GL_VERTEX_SHADER_OPTIMIZED_EXT = 0x87d4
const GL_X_EXT = 0x87d5
const GL_Y_EXT = 0x87d6
const GL_Z_EXT = 0x87d7
const GL_W_EXT = 0x87d8
const GL_NEGATIVE_X_EXT = 0x87d9
const GL_NEGATIVE_Y_EXT = 0x87da
const GL_NEGATIVE_Z_EXT = 0x87db
const GL_NEGATIVE_W_EXT = 0x87dc
const GL_ZERO_EXT = 0x87dd
const GL_ONE_EXT = 0x87de
const GL_NEGATIVE_ONE_EXT = Float32(0x087d)
const GL_NORMALIZED_RANGE_EXT = 0x87e0
const GL_FULL_RANGE_EXT = 0x87e1
const GL_CURRENT_VERTEX_EXT = 0x87e2
const GL_MVP_MATRIX_EXT = 0x87e3
const GL_VARIANT_VALUE_EXT = 0x87e4
const GL_VARIANT_DATATYPE_EXT = 0x87e5
const GL_VARIANT_ARRAY_STRIDE_EXT = 0x87e6
const GL_VARIANT_ARRAY_TYPE_EXT = 0x87e7
const GL_VARIANT_ARRAY_EXT = 0x87e8
const GL_VARIANT_ARRAY_POINTER_EXT = 0x87e9
const GL_INVARIANT_VALUE_EXT = 0x87ea
const GL_INVARIANT_DATATYPE_EXT = 0x87eb
const GL_LOCAL_CONSTANT_VALUE_EXT = 0x87ec
const GL_LOCAL_CONSTANT_DATATYPE_EXT = 0x87ed
const GL_EXT_vertex_weighting = 1
const GL_MODELVIEW0_STACK_DEPTH_EXT = 0x0ba3
const GL_MODELVIEW1_STACK_DEPTH_EXT = 0x8502
const GL_MODELVIEW0_MATRIX_EXT = 0x0ba6
const GL_MODELVIEW1_MATRIX_EXT = 0x8506
const GL_VERTEX_WEIGHTING_EXT = 0x8509
const GL_MODELVIEW0_EXT = 0x1700
const GL_MODELVIEW1_EXT = 0x850a
const GL_CURRENT_VERTEX_WEIGHT_EXT = 0x850b
const GL_VERTEX_WEIGHT_ARRAY_EXT = 0x850c
const GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT = 0x850d
const GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT = 0x850e
const GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT = Float32(0x0850)
const GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT = 0x8510
const GL_EXT_x11_sync_object = 1
const GL_SYNC_X11_FENCE_EXT = 0x90e1
const GL_GREMEDY_frame_terminator = 1
const GL_GREMEDY_string_marker = 1
const GL_HP_convolution_border_modes = 1
const GL_IGNORE_BORDER_HP = 0x8150
const GL_CONSTANT_BORDER_HP = 0x8151
const GL_REPLICATE_BORDER_HP = 0x8153
const GL_CONVOLUTION_BORDER_COLOR_HP = 0x8154
const GL_HP_image_transform = 1
const GL_IMAGE_SCALE_X_HP = 0x8155
const GL_IMAGE_SCALE_Y_HP = 0x8156
const GL_IMAGE_TRANSLATE_X_HP = 0x8157
const GL_IMAGE_TRANSLATE_Y_HP = 0x8158
const GL_IMAGE_ROTATE_ANGLE_HP = 0x8159
const GL_IMAGE_ROTATE_ORIGIN_X_HP = 0x815a
const GL_IMAGE_ROTATE_ORIGIN_Y_HP = 0x815b
const GL_IMAGE_MAG_FILTER_HP = 0x815c
const GL_IMAGE_MIN_FILTER_HP = 0x815d
const GL_IMAGE_CUBIC_WEIGHT_HP = 0x815e
const GL_CUBIC_HP = Float32(0x0815)
const GL_AVERAGE_HP = 0x8160
const GL_IMAGE_TRANSFORM_2D_HP = 0x8161
const GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8162
const GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8163
const GL_HP_occlusion_test = 1
const GL_OCCLUSION_TEST_HP = 0x8165
const GL_OCCLUSION_TEST_RESULT_HP = 0x8166
const GL_HP_texture_lighting = 1
const GL_TEXTURE_LIGHTING_MODE_HP = 0x8167
const GL_TEXTURE_POST_SPECULAR_HP = 0x8168
const GL_TEXTURE_PRE_SPECULAR_HP = 0x8169
const GL_IBM_cull_vertex = 1
const GL_CULL_VERTEX_IBM = 103050
const GL_IBM_multimode_draw_arrays = 1
const GL_IBM_rasterpos_clip = 1
const GL_RASTER_POSITION_UNCLIPPED_IBM = 0x00019262
const GL_IBM_static_data = 1
const GL_ALL_STATIC_DATA_IBM = 103060
const GL_STATIC_VERTEX_ARRAY_IBM = 103061
const GL_IBM_texture_mirrored_repeat = 1
const GL_MIRRORED_REPEAT_IBM = 0x8370
const GL_IBM_vertex_array_lists = 1
const GL_VERTEX_ARRAY_LIST_IBM = 103070
const GL_NORMAL_ARRAY_LIST_IBM = 103071
const GL_COLOR_ARRAY_LIST_IBM = 103072
const GL_INDEX_ARRAY_LIST_IBM = 103073
const GL_TEXTURE_COORD_ARRAY_LIST_IBM = 103074
const GL_EDGE_FLAG_ARRAY_LIST_IBM = 103075
const GL_FOG_COORDINATE_ARRAY_LIST_IBM = 103076
const GL_SECONDARY_COLOR_ARRAY_LIST_IBM = 103077
const GL_VERTEX_ARRAY_LIST_STRIDE_IBM = 103080
const GL_NORMAL_ARRAY_LIST_STRIDE_IBM = 103081
const GL_COLOR_ARRAY_LIST_STRIDE_IBM = 103082
const GL_INDEX_ARRAY_LIST_STRIDE_IBM = 103083
const GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM = 103084
const GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM = 103085
const GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM = 103086
const GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM = 103087
const GL_INGR_blend_func_separate = 1
const GL_INGR_color_clamp = 1
const GL_RED_MIN_CLAMP_INGR = 0x8560
const GL_GREEN_MIN_CLAMP_INGR = 0x8561
const GL_BLUE_MIN_CLAMP_INGR = 0x8562
const GL_ALPHA_MIN_CLAMP_INGR = 0x8563
const GL_RED_MAX_CLAMP_INGR = 0x8564
const GL_GREEN_MAX_CLAMP_INGR = 0x8565
const GL_BLUE_MAX_CLAMP_INGR = 0x8566
const GL_ALPHA_MAX_CLAMP_INGR = 0x8567
const GL_INGR_interlace_read = 1
const GL_INTERLACE_READ_INGR = 0x8568
const GL_INTEL_fragment_shader_ordering = 1
const GL_INTEL_framebuffer_CMAA = 1
const GL_INTEL_map_texture = 1
const GL_TEXTURE_MEMORY_LAYOUT_INTEL = Float32(0x083f)
const GL_LAYOUT_DEFAULT_INTEL = 0
const GL_LAYOUT_LINEAR_INTEL = 1
const GL_LAYOUT_LINEAR_CPU_CACHED_INTEL = 2
const GL_INTEL_parallel_arrays = 1
const GL_PARALLEL_ARRAYS_INTEL = 0x83f4
const GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL = 0x83f5
const GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL = 0x83f6
const GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL = 0x83f7
const GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL = 0x83f8
const GL_INTEL_performance_query = 1
const GL_PERFQUERY_SINGLE_CONTEXT_INTEL = 0x00000000
const GL_PERFQUERY_GLOBAL_CONTEXT_INTEL = 0x00000001
const GL_PERFQUERY_WAIT_INTEL = 0x83fb
const GL_PERFQUERY_FLUSH_INTEL = 0x83fa
const GL_PERFQUERY_DONOT_FLUSH_INTEL = 0x83f9
const GL_PERFQUERY_COUNTER_EVENT_INTEL = 0x94f0
const GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL = 0x94f1
const GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL = 0x94f2
const GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL = 0x94f3
const GL_PERFQUERY_COUNTER_RAW_INTEL = 0x94f4
const GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL = 0x94f5
const GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL = 0x94f8
const GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL = 0x94f9
const GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL = 0x94fa
const GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL = 0x94fb
const GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL = 0x94fc
const GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL = 0x94fd
const GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL = 0x94fe
const GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL = Float32(0x094f)
const GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL = 0x9500
const GL_MESAX_texture_stack = 1
const GL_TEXTURE_1D_STACK_MESAX = 0x8759
const GL_TEXTURE_2D_STACK_MESAX = 0x875a
const GL_PROXY_TEXTURE_1D_STACK_MESAX = 0x875b
const GL_PROXY_TEXTURE_2D_STACK_MESAX = 0x875c
const GL_TEXTURE_1D_STACK_BINDING_MESAX = 0x875d
const GL_TEXTURE_2D_STACK_BINDING_MESAX = 0x875e
const GL_MESA_pack_invert = 1
const GL_PACK_INVERT_MESA = 0x8758
const GL_MESA_resize_buffers = 1
const GL_MESA_window_pos = 1
const GL_MESA_ycbcr_texture = 1
const GL_UNSIGNED_SHORT_8_8_MESA = 0x85ba
const GL_UNSIGNED_SHORT_8_8_REV_MESA = 0x85bb
const GL_YCBCR_MESA = 0x8757
const GL_NVX_conditional_render = 1
const GL_NVX_gpu_memory_info = 1
const GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX = 0x9047
const GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX = 0x9048
const GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX = 0x9049
const GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX = 0x904a
const GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX = 0x904b
const GL_NV_bindless_multi_draw_indirect = 1
const GL_NV_bindless_multi_draw_indirect_count = 1
const GL_NV_bindless_texture = 1
const GL_NV_blend_equation_advanced = 1
const GL_BLEND_OVERLAP_NV = 0x9281
const GL_BLEND_PREMULTIPLIED_SRC_NV = 0x9280
const GL_BLUE_NV = 0x1905
const GL_COLORBURN_NV = 0x929a
const GL_COLORDODGE_NV = 0x9299
const GL_CONJOINT_NV = 0x9284
const GL_CONTRAST_NV = 0x92a1
const GL_DARKEN_NV = 0x9297
const GL_DIFFERENCE_NV = 0x929e
const GL_DISJOINT_NV = 0x9283
const GL_DST_ATOP_NV = Float32(0x0928)
const GL_DST_IN_NV = 0x928b
const GL_DST_NV = 0x9287
const GL_DST_OUT_NV = 0x928d
const GL_DST_OVER_NV = 0x9289
const GL_EXCLUSION_NV = 0x92a0
const GL_GREEN_NV = 0x1904
const GL_HARDLIGHT_NV = 0x929b
const GL_HARDMIX_NV = 0x92a9
const GL_HSL_COLOR_NV = Float32(0x092a)
const GL_HSL_HUE_NV = 0x92ad
const GL_HSL_LUMINOSITY_NV = 0x92b0
const GL_HSL_SATURATION_NV = 0x92ae
const GL_INVERT_OVG_NV = 0x92b4
const GL_INVERT_RGB_NV = 0x92a3
const GL_LIGHTEN_NV = 0x9298
const GL_LINEARBURN_NV = 0x92a5
const GL_LINEARDODGE_NV = 0x92a4
const GL_LINEARLIGHT_NV = 0x92a7
const GL_MINUS_CLAMPED_NV = 0x92b3
const GL_MINUS_NV = Float32(0x0929)
const GL_MULTIPLY_NV = 0x9294
const GL_OVERLAY_NV = 0x9296
const GL_PINLIGHT_NV = 0x92a8
const GL_PLUS_CLAMPED_ALPHA_NV = 0x92b2
const GL_PLUS_CLAMPED_NV = 0x92b1
const GL_PLUS_DARKER_NV = 0x9292
const GL_PLUS_NV = 0x9291
const GL_RED_NV = 0x1903
const GL_SCREEN_NV = 0x9295
const GL_SOFTLIGHT_NV = 0x929c
const GL_SRC_ATOP_NV = 0x928e
const GL_SRC_IN_NV = 0x928a
const GL_SRC_NV = 0x9286
const GL_SRC_OUT_NV = 0x928c
const GL_SRC_OVER_NV = 0x9288
const GL_UNCORRELATED_NV = 0x9282
const GL_VIVIDLIGHT_NV = 0x92a6
const GL_XOR_NV = 0x1506
const GL_NV_blend_equation_advanced_coherent = 1
const GL_BLEND_ADVANCED_COHERENT_NV = 0x9285
const GL_NV_blend_square = 1
const GL_NV_command_list = 1
const GL_TERMINATE_SEQUENCE_COMMAND_NV = 0x0000
const GL_NOP_COMMAND_NV = 0x0001
const GL_DRAW_ELEMENTS_COMMAND_NV = 0x0002
const GL_DRAW_ARRAYS_COMMAND_NV = 0x0003
const GL_DRAW_ELEMENTS_STRIP_COMMAND_NV = 0x0004
const GL_DRAW_ARRAYS_STRIP_COMMAND_NV = 0x0005
const GL_DRAW_ELEMENTS_INSTANCED_COMMAND_NV = 0x0006
const GL_DRAW_ARRAYS_INSTANCED_COMMAND_NV = 0x0007
const GL_ELEMENT_ADDRESS_COMMAND_NV = 0x0008
const GL_ATTRIBUTE_ADDRESS_COMMAND_NV = 0x0009
const GL_UNIFORM_ADDRESS_COMMAND_NV = 0x000a
const GL_BLEND_COLOR_COMMAND_NV = 0x000b
const GL_STENCIL_REF_COMMAND_NV = 0x000c
const GL_LINE_WIDTH_COMMAND_NV = 0x000d
const GL_POLYGON_OFFSET_COMMAND_NV = 0x000e
const GL_ALPHA_REF_COMMAND_NV = Float32(0x0000)
const GL_VIEWPORT_COMMAND_NV = 0x0010
const GL_SCISSOR_COMMAND_NV = 0x0011
const GL_FRONT_FACE_COMMAND_NV = 0x0012
const GL_NV_compute_program5 = 1
const GL_COMPUTE_PROGRAM_NV = 0x90fb
const GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV = 0x90fc
const GL_NV_conditional_render = 1
const GL_QUERY_WAIT_NV = 0x8e13
const GL_QUERY_NO_WAIT_NV = 0x8e14
const GL_QUERY_BY_REGION_WAIT_NV = 0x8e15
const GL_QUERY_BY_REGION_NO_WAIT_NV = 0x8e16
const GL_NV_conservative_raster = 1
const GL_CONSERVATIVE_RASTERIZATION_NV = 0x9346
const GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV = 0x9347
const GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV = 0x9348
const GL_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV = 0x9349
const GL_NV_conservative_raster_dilate = 1
const GL_CONSERVATIVE_RASTER_DILATE_NV = 0x9379
const GL_CONSERVATIVE_RASTER_DILATE_RANGE_NV = 0x937a
const GL_CONSERVATIVE_RASTER_DILATE_GRANULARITY_NV = 0x937b
const GL_NV_copy_depth_to_color = 1
const GL_DEPTH_STENCIL_TO_RGBA_NV = 0x886e
const GL_DEPTH_STENCIL_TO_BGRA_NV = Float32(0x0886)
const GL_NV_copy_image = 1
const GL_NV_deep_texture3D = 1
const GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV = 0x90d0
const GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV = 0x90d1
const GL_NV_depth_buffer_float = 1
const GL_DEPTH_COMPONENT32F_NV = 0x8dab
const GL_DEPTH32F_STENCIL8_NV = 0x8dac
const GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV = 0x8dad
const GL_DEPTH_BUFFER_FLOAT_MODE_NV = Float32(0x08da)
const GL_NV_depth_clamp = 1
const GL_DEPTH_CLAMP_NV = Float32(0x0864)
const GL_NV_draw_texture = 1
const GL_NV_evaluators = 1
const GL_EVAL_2D_NV = 0x86c0
const GL_EVAL_TRIANGULAR_2D_NV = 0x86c1
const GL_MAP_TESSELLATION_NV = 0x86c2
const GL_MAP_ATTRIB_U_ORDER_NV = 0x86c3
const GL_MAP_ATTRIB_V_ORDER_NV = 0x86c4
const GL_EVAL_FRACTIONAL_TESSELLATION_NV = 0x86c5
const GL_EVAL_VERTEX_ATTRIB0_NV = 0x86c6
const GL_EVAL_VERTEX_ATTRIB1_NV = 0x86c7
const GL_EVAL_VERTEX_ATTRIB2_NV = 0x86c8
const GL_EVAL_VERTEX_ATTRIB3_NV = 0x86c9
const GL_EVAL_VERTEX_ATTRIB4_NV = 0x86ca
const GL_EVAL_VERTEX_ATTRIB5_NV = 0x86cb
const GL_EVAL_VERTEX_ATTRIB6_NV = 0x86cc
const GL_EVAL_VERTEX_ATTRIB7_NV = 0x86cd
const GL_EVAL_VERTEX_ATTRIB8_NV = 0x86ce
const GL_EVAL_VERTEX_ATTRIB9_NV = Float32(0x086c)
const GL_EVAL_VERTEX_ATTRIB10_NV = 0x86d0
const GL_EVAL_VERTEX_ATTRIB11_NV = 0x86d1
const GL_EVAL_VERTEX_ATTRIB12_NV = 0x86d2
const GL_EVAL_VERTEX_ATTRIB13_NV = 0x86d3
const GL_EVAL_VERTEX_ATTRIB14_NV = 0x86d4
const GL_EVAL_VERTEX_ATTRIB15_NV = 0x86d5
const GL_MAX_MAP_TESSELLATION_NV = 0x86d6
const GL_MAX_RATIONAL_EVAL_ORDER_NV = 0x86d7
const GL_NV_explicit_multisample = 1
const GL_SAMPLE_POSITION_NV = 0x8e50
const GL_SAMPLE_MASK_NV = 0x8e51
const GL_SAMPLE_MASK_VALUE_NV = 0x8e52
const GL_TEXTURE_BINDING_RENDERBUFFER_NV = 0x8e53
const GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV = 0x8e54
const GL_TEXTURE_RENDERBUFFER_NV = 0x8e55
const GL_SAMPLER_RENDERBUFFER_NV = 0x8e56
const GL_INT_SAMPLER_RENDERBUFFER_NV = 0x8e57
const GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV = 0x8e58
const GL_MAX_SAMPLE_MASK_WORDS_NV = 0x8e59
const GL_NV_fence = 1
const GL_ALL_COMPLETED_NV = 0x84f2
const GL_FENCE_STATUS_NV = 0x84f3
const GL_FENCE_CONDITION_NV = 0x84f4
const GL_NV_fill_rectangle = 1
const GL_FILL_RECTANGLE_NV = 0x933c
const GL_NV_float_buffer = 1
const GL_FLOAT_R_NV = 0x8880
const GL_FLOAT_RG_NV = 0x8881
const GL_FLOAT_RGB_NV = 0x8882
const GL_FLOAT_RGBA_NV = 0x8883
const GL_FLOAT_R16_NV = 0x8884
const GL_FLOAT_R32_NV = 0x8885
const GL_FLOAT_RG16_NV = 0x8886
const GL_FLOAT_RG32_NV = 0x8887
const GL_FLOAT_RGB16_NV = 0x8888
const GL_FLOAT_RGB32_NV = 0x8889
const GL_FLOAT_RGBA16_NV = 0x888a
const GL_FLOAT_RGBA32_NV = 0x888b
const GL_TEXTURE_FLOAT_COMPONENTS_NV = 0x888c
const GL_FLOAT_CLEAR_COLOR_VALUE_NV = 0x888d
const GL_FLOAT_RGBA_MODE_NV = 0x888e
const GL_NV_fog_distance = 1
const GL_FOG_DISTANCE_MODE_NV = 0x855a
const GL_EYE_RADIAL_NV = 0x855b
const GL_EYE_PLANE_ABSOLUTE_NV = 0x855c
const GL_NV_fragment_coverage_to_color = 1
const GL_FRAGMENT_COVERAGE_TO_COLOR_NV = 0x92dd
const GL_FRAGMENT_COVERAGE_COLOR_NV = 0x92de
const GL_NV_fragment_program = 1
const GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV = 0x8868
const GL_FRAGMENT_PROGRAM_NV = 0x8870
const GL_MAX_TEXTURE_COORDS_NV = 0x8871
const GL_MAX_TEXTURE_IMAGE_UNITS_NV = 0x8872
const GL_FRAGMENT_PROGRAM_BINDING_NV = 0x8873
const GL_PROGRAM_ERROR_STRING_NV = 0x8874
const GL_NV_fragment_program2 = 1
const GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV = 0x88f4
const GL_MAX_PROGRAM_CALL_DEPTH_NV = 0x88f5
const GL_MAX_PROGRAM_IF_DEPTH_NV = 0x88f6
const GL_MAX_PROGRAM_LOOP_DEPTH_NV = 0x88f7
const GL_MAX_PROGRAM_LOOP_COUNT_NV = 0x88f8
const GL_NV_fragment_program4 = 1
const GL_NV_fragment_program_option = 1
const GL_NV_fragment_shader_interlock = 1
const GL_NV_framebuffer_mixed_samples = 1
const GL_COVERAGE_MODULATION_TABLE_NV = 0x9331
const GL_COLOR_SAMPLES_NV = 0x8e20
const GL_DEPTH_SAMPLES_NV = 0x932d
const GL_STENCIL_SAMPLES_NV = 0x932e
const GL_MIXED_DEPTH_SAMPLES_SUPPORTED_NV = Float32(0x0932)
const GL_MIXED_STENCIL_SAMPLES_SUPPORTED_NV = 0x9330
const GL_COVERAGE_MODULATION_NV = 0x9332
const GL_COVERAGE_MODULATION_TABLE_SIZE_NV = 0x9333
const GL_NV_framebuffer_multisample_coverage = 1
const GL_RENDERBUFFER_COVERAGE_SAMPLES_NV = 0x8cab
const GL_RENDERBUFFER_COLOR_SAMPLES_NV = 0x8e10
const GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV = 0x8e11
const GL_MULTISAMPLE_COVERAGE_MODES_NV = 0x8e12
const GL_NV_geometry_program4 = 1
const GL_GEOMETRY_PROGRAM_NV = 0x8c26
const GL_MAX_PROGRAM_OUTPUT_VERTICES_NV = 0x8c27
const GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV = 0x8c28
const GL_NV_geometry_shader4 = 1
const GL_NV_geometry_shader_passthrough = 1
const GL_NV_gpu_program4 = 1
const GL_MIN_PROGRAM_TEXEL_OFFSET_NV = 0x8904
const GL_MAX_PROGRAM_TEXEL_OFFSET_NV = 0x8905
const GL_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8906
const GL_PROGRAM_RESULT_COMPONENTS_NV = 0x8907
const GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8908
const GL_MAX_PROGRAM_RESULT_COMPONENTS_NV = 0x8909
const GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV = 0x8da5
const GL_MAX_PROGRAM_GENERIC_RESULTS_NV = 0x8da6
const GL_NV_gpu_program5 = 1
const GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV = 0x8e5a
const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV = 0x8e5b
const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV = 0x8e5c
const GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV = 0x8e5d
const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 0x8e5e
const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV = Float32(0x08e5)
const GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV = 0x8f44
const GL_MAX_PROGRAM_SUBROUTINE_NUM_NV = 0x8f45
const GL_NV_gpu_program5_mem_extended = 1
const GL_NV_gpu_shader5 = 1
const GL_NV_half_float = 1
const GL_HALF_FLOAT_NV = 0x140b
const GL_NV_internalformat_sample_query = 1
const GL_MULTISAMPLES_NV = 0x9371
const GL_SUPERSAMPLE_SCALE_X_NV = 0x9372
const GL_SUPERSAMPLE_SCALE_Y_NV = 0x9373
const GL_CONFORMANT_NV = 0x9374
const GL_NV_light_max_exponent = 1
const GL_MAX_SHININESS_NV = 0x8504
const GL_MAX_SPOT_EXPONENT_NV = 0x8505
const GL_NV_multisample_coverage = 1
const GL_NV_multisample_filter_hint = 1
const GL_MULTISAMPLE_FILTER_HINT_NV = 0x8534
const GL_NV_occlusion_query = 1
const GL_PIXEL_COUNTER_BITS_NV = 0x8864
const GL_CURRENT_OCCLUSION_QUERY_ID_NV = 0x8865
const GL_PIXEL_COUNT_NV = 0x8866
const GL_PIXEL_COUNT_AVAILABLE_NV = 0x8867
const GL_NV_packed_depth_stencil = 1
const GL_DEPTH_STENCIL_NV = 0x84f9
const GL_UNSIGNED_INT_24_8_NV = 0x84fa
const GL_NV_parameter_buffer_object = 1
const GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV = 0x8da0
const GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV = 0x8da1
const GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV = 0x8da2
const GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV = 0x8da3
const GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV = 0x8da4
const GL_NV_parameter_buffer_object2 = 1
const GL_NV_path_rendering = 1
const GL_PATH_FORMAT_SVG_NV = 0x9070
const GL_PATH_FORMAT_PS_NV = 0x9071
const GL_STANDARD_FONT_NAME_NV = 0x9072
const GL_SYSTEM_FONT_NAME_NV = 0x9073
const GL_FILE_NAME_NV = 0x9074
const GL_PATH_STROKE_WIDTH_NV = 0x9075
const GL_PATH_END_CAPS_NV = 0x9076
const GL_PATH_INITIAL_END_CAP_NV = 0x9077
const GL_PATH_TERMINAL_END_CAP_NV = 0x9078
const GL_PATH_JOIN_STYLE_NV = 0x9079
const GL_PATH_MITER_LIMIT_NV = 0x907a
const GL_PATH_DASH_CAPS_NV = 0x907b
const GL_PATH_INITIAL_DASH_CAP_NV = 0x907c
const GL_PATH_TERMINAL_DASH_CAP_NV = 0x907d
const GL_PATH_DASH_OFFSET_NV = 0x907e
const GL_PATH_CLIENT_LENGTH_NV = Float32(0x0907)
const GL_PATH_FILL_MODE_NV = 0x9080
const GL_PATH_FILL_MASK_NV = 0x9081
const GL_PATH_FILL_COVER_MODE_NV = 0x9082
const GL_PATH_STROKE_COVER_MODE_NV = 0x9083
const GL_PATH_STROKE_MASK_NV = 0x9084
const GL_COUNT_UP_NV = 0x9088
const GL_COUNT_DOWN_NV = 0x9089
const GL_PATH_OBJECT_BOUNDING_BOX_NV = 0x908a
const GL_CONVEX_HULL_NV = 0x908b
const GL_BOUNDING_BOX_NV = 0x908d
const GL_TRANSLATE_X_NV = 0x908e
const GL_TRANSLATE_Y_NV = Float32(0x0908)
const GL_TRANSLATE_2D_NV = 0x9090
const GL_TRANSLATE_3D_NV = 0x9091
const GL_AFFINE_2D_NV = 0x9092
const GL_AFFINE_3D_NV = 0x9094
const GL_TRANSPOSE_AFFINE_2D_NV = 0x9096
const GL_TRANSPOSE_AFFINE_3D_NV = 0x9098
const GL_UTF8_NV = 0x909a
const GL_UTF16_NV = 0x909b
const GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV = 0x909c
const GL_PATH_COMMAND_COUNT_NV = 0x909d
const GL_PATH_COORD_COUNT_NV = 0x909e
const GL_PATH_DASH_ARRAY_COUNT_NV = Float32(0x0909)
const GL_PATH_COMPUTED_LENGTH_NV = 0x90a0
const GL_PATH_FILL_BOUNDING_BOX_NV = 0x90a1
const GL_PATH_STROKE_BOUNDING_BOX_NV = 0x90a2
const GL_SQUARE_NV = 0x90a3
const GL_ROUND_NV = 0x90a4
const GL_TRIANGULAR_NV = 0x90a5
const GL_BEVEL_NV = 0x90a6
const GL_MITER_REVERT_NV = 0x90a7
const GL_MITER_TRUNCATE_NV = 0x90a8
const GL_SKIP_MISSING_GLYPH_NV = 0x90a9
const GL_USE_MISSING_GLYPH_NV = 0x90aa
const GL_PATH_ERROR_POSITION_NV = 0x90ab
const GL_ACCUM_ADJACENT_PAIRS_NV = 0x90ad
const GL_ADJACENT_PAIRS_NV = 0x90ae
const GL_FIRST_TO_REST_NV = Float32(0x090a)
const GL_PATH_GEN_MODE_NV = 0x90b0
const GL_PATH_GEN_COEFF_NV = 0x90b1
const GL_PATH_GEN_COMPONENTS_NV = 0x90b3
const GL_PATH_STENCIL_FUNC_NV = 0x90b7
const GL_PATH_STENCIL_REF_NV = 0x90b8
const GL_PATH_STENCIL_VALUE_MASK_NV = 0x90b9
const GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV = 0x90bd
const GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV = 0x90be
const GL_PATH_COVER_DEPTH_FUNC_NV = Float32(0x090b)
const GL_PATH_DASH_OFFSET_RESET_NV = 0x90b4
const GL_MOVE_TO_RESETS_NV = 0x90b5
const GL_MOVE_TO_CONTINUES_NV = 0x90b6
const GL_CLOSE_PATH_NV = 0x00
const GL_MOVE_TO_NV = 0x02
const GL_RELATIVE_MOVE_TO_NV = 0x03
const GL_LINE_TO_NV = 0x04
const GL_RELATIVE_LINE_TO_NV = 0x05
const GL_HORIZONTAL_LINE_TO_NV = 0x06
const GL_RELATIVE_HORIZONTAL_LINE_TO_NV = 0x07
const GL_VERTICAL_LINE_TO_NV = 0x08
const GL_RELATIVE_VERTICAL_LINE_TO_NV = 0x09
const GL_QUADRATIC_CURVE_TO_NV = 0x0a
const GL_RELATIVE_QUADRATIC_CURVE_TO_NV = 0x0b
const GL_CUBIC_CURVE_TO_NV = 0x0c
const GL_RELATIVE_CUBIC_CURVE_TO_NV = 0x0d
const GL_SMOOTH_QUADRATIC_CURVE_TO_NV = 0x0e
const GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV = Float32(0x00)
const GL_SMOOTH_CUBIC_CURVE_TO_NV = 0x10
const GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV = 0x11
const GL_SMALL_CCW_ARC_TO_NV = 0x12
const GL_RELATIVE_SMALL_CCW_ARC_TO_NV = 0x13
const GL_SMALL_CW_ARC_TO_NV = 0x14
const GL_RELATIVE_SMALL_CW_ARC_TO_NV = 0x15
const GL_LARGE_CCW_ARC_TO_NV = 0x16
const GL_RELATIVE_LARGE_CCW_ARC_TO_NV = 0x17
const GL_LARGE_CW_ARC_TO_NV = 0x18
const GL_RELATIVE_LARGE_CW_ARC_TO_NV = 0x19
const GL_RESTART_PATH_NV = 0xf0
const GL_DUP_FIRST_CUBIC_CURVE_TO_NV = 0xf2
const GL_DUP_LAST_CUBIC_CURVE_TO_NV = 0xf4
const GL_RECT_NV = 0xf6
const GL_CIRCULAR_CCW_ARC_TO_NV = 0xf8
const GL_CIRCULAR_CW_ARC_TO_NV = 0xfa
const GL_CIRCULAR_TANGENT_ARC_TO_NV = 0xfc
const GL_ARC_TO_NV = 0xfe
const GL_RELATIVE_ARC_TO_NV = Float32(0x0f)
const GL_BOLD_BIT_NV = 0x01
const GL_ITALIC_BIT_NV = 0x02
const GL_GLYPH_WIDTH_BIT_NV = 0x01
const GL_GLYPH_HEIGHT_BIT_NV = 0x02
const GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV = 0x04
const GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV = 0x08
const GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV = 0x10
const GL_GLYPH_VERTICAL_BEARING_X_BIT_NV = 0x20
const GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV = 0x40
const GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV = 0x80
const GL_GLYPH_HAS_KERNING_BIT_NV = 0x0100
const GL_FONT_X_MIN_BOUNDS_BIT_NV = 0x00010000
const GL_FONT_Y_MIN_BOUNDS_BIT_NV = 0x00020000
const GL_FONT_X_MAX_BOUNDS_BIT_NV = 0x00040000
const GL_FONT_Y_MAX_BOUNDS_BIT_NV = 0x00080000
const GL_FONT_UNITS_PER_EM_BIT_NV = 0x00100000
const GL_FONT_ASCENDER_BIT_NV = 0x00200000
const GL_FONT_DESCENDER_BIT_NV = 0x00400000
const GL_FONT_HEIGHT_BIT_NV = 0x00800000
const GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV = 0x01000000
const GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV = 0x02000000
const GL_FONT_UNDERLINE_POSITION_BIT_NV = 0x04000000
const GL_FONT_UNDERLINE_THICKNESS_BIT_NV = 0x08000000
const GL_FONT_HAS_KERNING_BIT_NV = 0x10000000
const GL_ROUNDED_RECT_NV = 0xe8
const GL_RELATIVE_ROUNDED_RECT_NV = 0xe9
const GL_ROUNDED_RECT2_NV = 0xea
const GL_RELATIVE_ROUNDED_RECT2_NV = 0xeb
const GL_ROUNDED_RECT4_NV = 0xec
const GL_RELATIVE_ROUNDED_RECT4_NV = 0xed
const GL_ROUNDED_RECT8_NV = 0xee
const GL_RELATIVE_ROUNDED_RECT8_NV = Float32(0x0e)
const GL_RELATIVE_RECT_NV = 0xf7
const GL_FONT_GLYPHS_AVAILABLE_NV = 0x9368
const GL_FONT_TARGET_UNAVAILABLE_NV = 0x9369
const GL_FONT_UNAVAILABLE_NV = 0x936a
const GL_FONT_UNINTELLIGIBLE_NV = 0x936b
const GL_CONIC_CURVE_TO_NV = 0x1a
const GL_RELATIVE_CONIC_CURVE_TO_NV = 0x1b
const GL_FONT_NUM_GLYPH_INDICES_BIT_NV = 0x20000000
const GL_STANDARD_FONT_FORMAT_NV = 0x936c
const GL_2_BYTES_NV = 0x1407
const GL_3_BYTES_NV = 0x1408
const GL_4_BYTES_NV = 0x1409
const GL_EYE_LINEAR_NV = 0x2400
const GL_OBJECT_LINEAR_NV = 0x2401
const GL_CONSTANT_NV = 0x8576
const GL_PATH_FOG_GEN_MODE_NV = 0x90ac
const GL_PRIMARY_COLOR_NV = 0x852c
const GL_SECONDARY_COLOR_NV = 0x852d
const GL_PATH_GEN_COLOR_FORMAT_NV = 0x90b2
const GL_PATH_PROJECTION_NV = 0x1701
const GL_PATH_MODELVIEW_NV = 0x1700
const GL_PATH_MODELVIEW_STACK_DEPTH_NV = 0x0ba3
const GL_PATH_MODELVIEW_MATRIX_NV = 0x0ba6
const GL_PATH_MAX_MODELVIEW_STACK_DEPTH_NV = 0x0d36
const GL_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV = 0x84e3
const GL_PATH_PROJECTION_STACK_DEPTH_NV = 0x0ba4
const GL_PATH_PROJECTION_MATRIX_NV = 0x0ba7
const GL_PATH_MAX_PROJECTION_STACK_DEPTH_NV = 0x0d38
const GL_PATH_TRANSPOSE_PROJECTION_MATRIX_NV = 0x84e4
const GL_FRAGMENT_INPUT_NV = 0x936d
const GL_NV_path_rendering_shared_edge = 1
const GL_SHARED_EDGE_NV = 0xc0
const GL_NV_pixel_data_range = 1
const GL_WRITE_PIXEL_DATA_RANGE_NV = 0x8878
const GL_READ_PIXEL_DATA_RANGE_NV = 0x8879
const GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV = 0x887a
const GL_READ_PIXEL_DATA_RANGE_LENGTH_NV = 0x887b
const GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV = 0x887c
const GL_READ_PIXEL_DATA_RANGE_POINTER_NV = 0x887d
const GL_NV_point_sprite = 1
const GL_POINT_SPRITE_NV = 0x8861
const GL_COORD_REPLACE_NV = 0x8862
const GL_POINT_SPRITE_R_MODE_NV = 0x8863
const GL_NV_present_video = 1
const GL_FRAME_NV = 0x8e26
const GL_FIELDS_NV = 0x8e27
const GL_CURRENT_TIME_NV = 0x8e28
const GL_NUM_FILL_STREAMS_NV = 0x8e29
const GL_PRESENT_TIME_NV = 0x8e2a
const GL_PRESENT_DURATION_NV = 0x8e2b
const GL_NV_primitive_restart = 1
const GL_PRIMITIVE_RESTART_NV = 0x8558
const GL_PRIMITIVE_RESTART_INDEX_NV = 0x8559
const GL_NV_register_combiners = 1
const GL_REGISTER_COMBINERS_NV = 0x8522
const GL_VARIABLE_A_NV = 0x8523
const GL_VARIABLE_B_NV = 0x8524
const GL_VARIABLE_C_NV = 0x8525
const GL_VARIABLE_D_NV = 0x8526
const GL_VARIABLE_E_NV = 0x8527
const GL_VARIABLE_F_NV = 0x8528
const GL_VARIABLE_G_NV = 0x8529
const GL_CONSTANT_COLOR0_NV = 0x852a
const GL_CONSTANT_COLOR1_NV = 0x852b
const GL_SPARE0_NV = 0x852e
const GL_SPARE1_NV = Float32(0x0852)
const GL_DISCARD_NV = 0x8530
const GL_E_TIMES_F_NV = 0x8531
const GL_SPARE0_PLUS_SECONDARY_COLOR_NV = 0x8532
const GL_UNSIGNED_IDENTITY_NV = 0x8536
const GL_UNSIGNED_INVERT_NV = 0x8537
const GL_EXPAND_NORMAL_NV = 0x8538
const GL_EXPAND_NEGATE_NV = 0x8539
const GL_HALF_BIAS_NORMAL_NV = 0x853a
const GL_HALF_BIAS_NEGATE_NV = 0x853b
const GL_SIGNED_IDENTITY_NV = 0x853c
const GL_SIGNED_NEGATE_NV = 0x853d
const GL_SCALE_BY_TWO_NV = 0x853e
const GL_SCALE_BY_FOUR_NV = Float32(0x0853)
const GL_SCALE_BY_ONE_HALF_NV = 0x8540
const GL_BIAS_BY_NEGATIVE_ONE_HALF_NV = 0x8541
const GL_COMBINER_INPUT_NV = 0x8542
const GL_COMBINER_MAPPING_NV = 0x8543
const GL_COMBINER_COMPONENT_USAGE_NV = 0x8544
const GL_COMBINER_AB_DOT_PRODUCT_NV = 0x8545
const GL_COMBINER_CD_DOT_PRODUCT_NV = 0x8546
const GL_COMBINER_MUX_SUM_NV = 0x8547
const GL_COMBINER_SCALE_NV = 0x8548
const GL_COMBINER_BIAS_NV = 0x8549
const GL_COMBINER_AB_OUTPUT_NV = 0x854a
const GL_COMBINER_CD_OUTPUT_NV = 0x854b
const GL_COMBINER_SUM_OUTPUT_NV = 0x854c
const GL_MAX_GENERAL_COMBINERS_NV = 0x854d
const GL_NUM_GENERAL_COMBINERS_NV = 0x854e
const GL_COLOR_SUM_CLAMP_NV = Float32(0x0854)
const GL_COMBINER0_NV = 0x8550
const GL_COMBINER1_NV = 0x8551
const GL_COMBINER2_NV = 0x8552
const GL_COMBINER3_NV = 0x8553
const GL_COMBINER4_NV = 0x8554
const GL_COMBINER5_NV = 0x8555
const GL_COMBINER6_NV = 0x8556
const GL_COMBINER7_NV = 0x8557
const GL_NV_register_combiners2 = 1
const GL_PER_STAGE_CONSTANTS_NV = 0x8535
const GL_NV_sample_locations = 1
const GL_SAMPLE_LOCATION_SUBPIXEL_BITS_NV = 0x933d
const GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV = 0x933e
const GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV = Float32(0x0933)
const GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV = 0x9340
const GL_SAMPLE_LOCATION_NV = 0x8e50
const GL_PROGRAMMABLE_SAMPLE_LOCATION_NV = 0x9341
const GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV = 0x9342
const GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV = 0x9343
const GL_NV_sample_mask_override_coverage = 1
const GL_NV_shader_atomic_counters = 1
const GL_NV_shader_atomic_float = 1
const GL_NV_shader_atomic_fp16_vector = 1
const GL_NV_shader_atomic_int64 = 1
const GL_NV_shader_buffer_load = 1
const GL_BUFFER_GPU_ADDRESS_NV = 0x8f1d
const GL_GPU_ADDRESS_NV = 0x8f34
const GL_MAX_SHADER_BUFFER_ADDRESS_NV = 0x8f35
const GL_NV_shader_buffer_store = 1
const GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = 0x00000010
const GL_NV_shader_storage_buffer_object = 1
const GL_NV_shader_thread_group = 1
const GL_WARP_SIZE_NV = 0x9339
const GL_WARPS_PER_SM_NV = 0x933a
const GL_SM_COUNT_NV = 0x933b
const GL_NV_shader_thread_shuffle = 1
const GL_NV_tessellation_program5 = 1
const GL_MAX_PROGRAM_PATCH_ATTRIBS_NV = 0x86d8
const GL_TESS_CONTROL_PROGRAM_NV = 0x891e
const GL_TESS_EVALUATION_PROGRAM_NV = Float32(0x0891)
const GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV = 0x8c74
const GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV = 0x8c75
const GL_NV_texgen_emboss = 1
const GL_EMBOSS_LIGHT_NV = 0x855d
const GL_EMBOSS_CONSTANT_NV = 0x855e
const GL_EMBOSS_MAP_NV = Float32(0x0855)
const GL_NV_texgen_reflection = 1
const GL_NORMAL_MAP_NV = 0x8511
const GL_REFLECTION_MAP_NV = 0x8512
const GL_NV_texture_barrier = 1
const GL_NV_texture_compression_vtc = 1
const GL_NV_texture_env_combine4 = 1
const GL_COMBINE4_NV = 0x8503
const GL_SOURCE3_RGB_NV = 0x8583
const GL_SOURCE3_ALPHA_NV = 0x858b
const GL_OPERAND3_RGB_NV = 0x8593
const GL_OPERAND3_ALPHA_NV = 0x859b
const GL_NV_texture_expand_normal = 1
const GL_TEXTURE_UNSIGNED_REMAP_MODE_NV = Float32(0x0888)
const GL_NV_texture_multisample = 1
const GL_TEXTURE_COVERAGE_SAMPLES_NV = 0x9045
const GL_TEXTURE_COLOR_SAMPLES_NV = 0x9046
const GL_NV_texture_rectangle = 1
const GL_TEXTURE_RECTANGLE_NV = 0x84f5
const GL_TEXTURE_BINDING_RECTANGLE_NV = 0x84f6
const GL_PROXY_TEXTURE_RECTANGLE_NV = 0x84f7
const GL_MAX_RECTANGLE_TEXTURE_SIZE_NV = 0x84f8
const GL_NV_texture_shader = 1
const GL_OFFSET_TEXTURE_RECTANGLE_NV = 0x864c
const GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV = 0x864d
const GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV = 0x864e
const GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV = 0x86d9
const GL_UNSIGNED_INT_S8_S8_8_8_NV = 0x86da
const GL_UNSIGNED_INT_8_8_S8_S8_REV_NV = 0x86db
const GL_DSDT_MAG_INTENSITY_NV = 0x86dc
const GL_SHADER_CONSISTENT_NV = 0x86dd
const GL_TEXTURE_SHADER_NV = 0x86de
const GL_SHADER_OPERATION_NV = Float32(0x086d)
const GL_CULL_MODES_NV = 0x86e0
const GL_OFFSET_TEXTURE_MATRIX_NV = 0x86e1
const GL_OFFSET_TEXTURE_SCALE_NV = 0x86e2
const GL_OFFSET_TEXTURE_BIAS_NV = 0x86e3
const GL_OFFSET_TEXTURE_2D_MATRIX_NV = 0x86e1
const GL_OFFSET_TEXTURE_2D_SCALE_NV = 0x86e2
const GL_OFFSET_TEXTURE_2D_BIAS_NV = 0x86e3
const GL_PREVIOUS_TEXTURE_INPUT_NV = 0x86e4
const GL_CONST_EYE_NV = 0x86e5
const GL_PASS_THROUGH_NV = 0x86e6
const GL_CULL_FRAGMENT_NV = 0x86e7
const GL_OFFSET_TEXTURE_2D_NV = 0x86e8
const GL_DEPENDENT_AR_TEXTURE_2D_NV = 0x86e9
const GL_DEPENDENT_GB_TEXTURE_2D_NV = 0x86ea
const GL_DOT_PRODUCT_NV = 0x86ec
const GL_DOT_PRODUCT_DEPTH_REPLACE_NV = 0x86ed
const GL_DOT_PRODUCT_TEXTURE_2D_NV = 0x86ee
const GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV = 0x86f0
const GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV = 0x86f1
const GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV = 0x86f2
const GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV = 0x86f3
const GL_HILO_NV = 0x86f4
const GL_DSDT_NV = 0x86f5
const GL_DSDT_MAG_NV = 0x86f6
const GL_DSDT_MAG_VIB_NV = 0x86f7
const GL_HILO16_NV = 0x86f8
const GL_SIGNED_HILO_NV = 0x86f9
const GL_SIGNED_HILO16_NV = 0x86fa
const GL_SIGNED_RGBA_NV = 0x86fb
const GL_SIGNED_RGBA8_NV = 0x86fc
const GL_SIGNED_RGB_NV = 0x86fe
const GL_SIGNED_RGB8_NV = Float32(0x086f)
const GL_SIGNED_LUMINANCE_NV = 0x8701
const GL_SIGNED_LUMINANCE8_NV = 0x8702
const GL_SIGNED_LUMINANCE_ALPHA_NV = 0x8703
const GL_SIGNED_LUMINANCE8_ALPHA8_NV = 0x8704
const GL_SIGNED_ALPHA_NV = 0x8705
const GL_SIGNED_ALPHA8_NV = 0x8706
const GL_SIGNED_INTENSITY_NV = 0x8707
const GL_SIGNED_INTENSITY8_NV = 0x8708
const GL_DSDT8_NV = 0x8709
const GL_DSDT8_MAG8_NV = 0x870a
const GL_DSDT8_MAG8_INTENSITY8_NV = 0x870b
const GL_SIGNED_RGB_UNSIGNED_ALPHA_NV = 0x870c
const GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV = 0x870d
const GL_HI_SCALE_NV = 0x870e
const GL_LO_SCALE_NV = Float32(0x0870)
const GL_DS_SCALE_NV = 0x8710
const GL_DT_SCALE_NV = 0x8711
const GL_MAGNITUDE_SCALE_NV = 0x8712
const GL_VIBRANCE_SCALE_NV = 0x8713
const GL_HI_BIAS_NV = 0x8714
const GL_LO_BIAS_NV = 0x8715
const GL_DS_BIAS_NV = 0x8716
const GL_DT_BIAS_NV = 0x8717
const GL_MAGNITUDE_BIAS_NV = 0x8718
const GL_VIBRANCE_BIAS_NV = 0x8719
const GL_TEXTURE_BORDER_VALUES_NV = 0x871a
const GL_TEXTURE_HI_SIZE_NV = 0x871b
const GL_TEXTURE_LO_SIZE_NV = 0x871c
const GL_TEXTURE_DS_SIZE_NV = 0x871d
const GL_TEXTURE_DT_SIZE_NV = 0x871e
const GL_TEXTURE_MAG_SIZE_NV = Float32(0x0871)
const GL_NV_texture_shader2 = 1
const GL_DOT_PRODUCT_TEXTURE_3D_NV = Float32(0x086e)
const GL_NV_texture_shader3 = 1
const GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV = 0x8850
const GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV = 0x8851
const GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8852
const GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV = 0x8853
const GL_OFFSET_HILO_TEXTURE_2D_NV = 0x8854
const GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV = 0x8855
const GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV = 0x8856
const GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8857
const GL_DEPENDENT_HILO_TEXTURE_2D_NV = 0x8858
const GL_DEPENDENT_RGB_TEXTURE_3D_NV = 0x8859
const GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV = 0x885a
const GL_DOT_PRODUCT_PASS_THROUGH_NV = 0x885b
const GL_DOT_PRODUCT_TEXTURE_1D_NV = 0x885c
const GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV = 0x885d
const GL_HILO8_NV = 0x885e
const GL_SIGNED_HILO8_NV = Float32(0x0885)
const GL_FORCE_BLUE_TO_ONE_NV = 0x8860
const GL_NV_transform_feedback = 1
const GL_BACK_PRIMARY_COLOR_NV = 0x8c77
const GL_BACK_SECONDARY_COLOR_NV = 0x8c78
const GL_TEXTURE_COORD_NV = 0x8c79
const GL_CLIP_DISTANCE_NV = 0x8c7a
const GL_VERTEX_ID_NV = 0x8c7b
const GL_PRIMITIVE_ID_NV = 0x8c7c
const GL_GENERIC_ATTRIB_NV = 0x8c7d
const GL_TRANSFORM_FEEDBACK_ATTRIBS_NV = 0x8c7e
const GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV = Float32(0x08c7)
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV = 0x8c80
const GL_ACTIVE_VARYINGS_NV = 0x8c81
const GL_ACTIVE_VARYING_MAX_LENGTH_NV = 0x8c82
const GL_TRANSFORM_FEEDBACK_VARYINGS_NV = 0x8c83
const GL_TRANSFORM_FEEDBACK_BUFFER_START_NV = 0x8c84
const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV = 0x8c85
const GL_TRANSFORM_FEEDBACK_RECORD_NV = 0x8c86
const GL_PRIMITIVES_GENERATED_NV = 0x8c87
const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV = 0x8c88
const GL_RASTERIZER_DISCARD_NV = 0x8c89
const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV = 0x8c8a
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV = 0x8c8b
const GL_INTERLEAVED_ATTRIBS_NV = 0x8c8c
const GL_SEPARATE_ATTRIBS_NV = 0x8c8d
const GL_TRANSFORM_FEEDBACK_BUFFER_NV = 0x8c8e
const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV = Float32(0x08c8)
const GL_LAYER_NV = 0x8daa
const GL_NEXT_BUFFER_NV = -2
const GL_SKIP_COMPONENTS4_NV = -3
const GL_SKIP_COMPONENTS3_NV = -4
const GL_SKIP_COMPONENTS2_NV = -5
const GL_SKIP_COMPONENTS1_NV = -6
const GL_NV_transform_feedback2 = 1
const GL_TRANSFORM_FEEDBACK_NV = 0x8e22
const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV = 0x8e23
const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV = 0x8e24
const GL_TRANSFORM_FEEDBACK_BINDING_NV = 0x8e25
const GL_NV_uniform_buffer_unified_memory = 1
const GL_UNIFORM_BUFFER_UNIFIED_NV = 0x936e
const GL_UNIFORM_BUFFER_ADDRESS_NV = Float32(0x0936)
const GL_UNIFORM_BUFFER_LENGTH_NV = 0x9370
const GL_NV_vdpau_interop = 1
const GL_SURFACE_STATE_NV = 0x86eb
const GL_SURFACE_REGISTERED_NV = 0x86fd
const GL_SURFACE_MAPPED_NV = 0x8700
const GL_WRITE_DISCARD_NV = 0x88be
const GL_NV_vertex_array_range = 1
const GL_VERTEX_ARRAY_RANGE_NV = 0x851d
const GL_VERTEX_ARRAY_RANGE_LENGTH_NV = 0x851e
const GL_VERTEX_ARRAY_RANGE_VALID_NV = Float32(0x0851)
const GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV = 0x8520
const GL_VERTEX_ARRAY_RANGE_POINTER_NV = 0x8521
const GL_NV_vertex_array_range2 = 1
const GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV = 0x8533
const GL_NV_vertex_attrib_integer_64bit = 1
const GL_NV_vertex_buffer_unified_memory = 1
const GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV = 0x8f1e
const GL_ELEMENT_ARRAY_UNIFIED_NV = Float32(0x08f1)
const GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV = 0x8f20
const GL_VERTEX_ARRAY_ADDRESS_NV = 0x8f21
const GL_NORMAL_ARRAY_ADDRESS_NV = 0x8f22
const GL_COLOR_ARRAY_ADDRESS_NV = 0x8f23
const GL_INDEX_ARRAY_ADDRESS_NV = 0x8f24
const GL_TEXTURE_COORD_ARRAY_ADDRESS_NV = 0x8f25
const GL_EDGE_FLAG_ARRAY_ADDRESS_NV = 0x8f26
const GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV = 0x8f27
const GL_FOG_COORD_ARRAY_ADDRESS_NV = 0x8f28
const GL_ELEMENT_ARRAY_ADDRESS_NV = 0x8f29
const GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV = 0x8f2a
const GL_VERTEX_ARRAY_LENGTH_NV = 0x8f2b
const GL_NORMAL_ARRAY_LENGTH_NV = 0x8f2c
const GL_COLOR_ARRAY_LENGTH_NV = 0x8f2d
const GL_INDEX_ARRAY_LENGTH_NV = 0x8f2e
const GL_TEXTURE_COORD_ARRAY_LENGTH_NV = Float32(0x08f2)
const GL_EDGE_FLAG_ARRAY_LENGTH_NV = 0x8f30
const GL_SECONDARY_COLOR_ARRAY_LENGTH_NV = 0x8f31
const GL_FOG_COORD_ARRAY_LENGTH_NV = 0x8f32
const GL_ELEMENT_ARRAY_LENGTH_NV = 0x8f33
const GL_DRAW_INDIRECT_UNIFIED_NV = 0x8f40
const GL_DRAW_INDIRECT_ADDRESS_NV = 0x8f41
const GL_DRAW_INDIRECT_LENGTH_NV = 0x8f42
const GL_NV_vertex_program = 1
const GL_VERTEX_PROGRAM_NV = 0x8620
const GL_VERTEX_STATE_PROGRAM_NV = 0x8621
const GL_ATTRIB_ARRAY_SIZE_NV = 0x8623
const GL_ATTRIB_ARRAY_STRIDE_NV = 0x8624
const GL_ATTRIB_ARRAY_TYPE_NV = 0x8625
const GL_CURRENT_ATTRIB_NV = 0x8626
const GL_PROGRAM_LENGTH_NV = 0x8627
const GL_PROGRAM_STRING_NV = 0x8628
const GL_MODELVIEW_PROJECTION_NV = 0x8629
const GL_IDENTITY_NV = 0x862a
const GL_INVERSE_NV = 0x862b
const GL_TRANSPOSE_NV = 0x862c
const GL_INVERSE_TRANSPOSE_NV = 0x862d
const GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV = 0x862e
const GL_MAX_TRACK_MATRICES_NV = Float32(0x0862)
const GL_MATRIX0_NV = 0x8630
const GL_MATRIX1_NV = 0x8631
const GL_MATRIX2_NV = 0x8632
const GL_MATRIX3_NV = 0x8633
const GL_MATRIX4_NV = 0x8634
const GL_MATRIX5_NV = 0x8635
const GL_MATRIX6_NV = 0x8636
const GL_MATRIX7_NV = 0x8637
const GL_CURRENT_MATRIX_STACK_DEPTH_NV = 0x8640
const GL_CURRENT_MATRIX_NV = 0x8641
const GL_VERTEX_PROGRAM_POINT_SIZE_NV = 0x8642
const GL_VERTEX_PROGRAM_TWO_SIDE_NV = 0x8643
const GL_PROGRAM_PARAMETER_NV = 0x8644
const GL_ATTRIB_ARRAY_POINTER_NV = 0x8645
const GL_PROGRAM_TARGET_NV = 0x8646
const GL_PROGRAM_RESIDENT_NV = 0x8647
const GL_TRACK_MATRIX_NV = 0x8648
const GL_TRACK_MATRIX_TRANSFORM_NV = 0x8649
const GL_VERTEX_PROGRAM_BINDING_NV = 0x864a
const GL_PROGRAM_ERROR_POSITION_NV = 0x864b
const GL_VERTEX_ATTRIB_ARRAY0_NV = 0x8650
const GL_VERTEX_ATTRIB_ARRAY1_NV = 0x8651
const GL_VERTEX_ATTRIB_ARRAY2_NV = 0x8652
const GL_VERTEX_ATTRIB_ARRAY3_NV = 0x8653
const GL_VERTEX_ATTRIB_ARRAY4_NV = 0x8654
const GL_VERTEX_ATTRIB_ARRAY5_NV = 0x8655
const GL_VERTEX_ATTRIB_ARRAY6_NV = 0x8656
const GL_VERTEX_ATTRIB_ARRAY7_NV = 0x8657
const GL_VERTEX_ATTRIB_ARRAY8_NV = 0x8658
const GL_VERTEX_ATTRIB_ARRAY9_NV = 0x8659
const GL_VERTEX_ATTRIB_ARRAY10_NV = 0x865a
const GL_VERTEX_ATTRIB_ARRAY11_NV = 0x865b
const GL_VERTEX_ATTRIB_ARRAY12_NV = 0x865c
const GL_VERTEX_ATTRIB_ARRAY13_NV = 0x865d
const GL_VERTEX_ATTRIB_ARRAY14_NV = 0x865e
const GL_VERTEX_ATTRIB_ARRAY15_NV = Float32(0x0865)
const GL_MAP1_VERTEX_ATTRIB0_4_NV = 0x8660
const GL_MAP1_VERTEX_ATTRIB1_4_NV = 0x8661
const GL_MAP1_VERTEX_ATTRIB2_4_NV = 0x8662
const GL_MAP1_VERTEX_ATTRIB3_4_NV = 0x8663
const GL_MAP1_VERTEX_ATTRIB4_4_NV = 0x8664
const GL_MAP1_VERTEX_ATTRIB5_4_NV = 0x8665
const GL_MAP1_VERTEX_ATTRIB6_4_NV = 0x8666
const GL_MAP1_VERTEX_ATTRIB7_4_NV = 0x8667
const GL_MAP1_VERTEX_ATTRIB8_4_NV = 0x8668
const GL_MAP1_VERTEX_ATTRIB9_4_NV = 0x8669
const GL_MAP1_VERTEX_ATTRIB10_4_NV = 0x866a
const GL_MAP1_VERTEX_ATTRIB11_4_NV = 0x866b
const GL_MAP1_VERTEX_ATTRIB12_4_NV = 0x866c
const GL_MAP1_VERTEX_ATTRIB13_4_NV = 0x866d
const GL_MAP1_VERTEX_ATTRIB14_4_NV = 0x866e
const GL_MAP1_VERTEX_ATTRIB15_4_NV = Float32(0x0866)
const GL_MAP2_VERTEX_ATTRIB0_4_NV = 0x8670
const GL_MAP2_VERTEX_ATTRIB1_4_NV = 0x8671
const GL_MAP2_VERTEX_ATTRIB2_4_NV = 0x8672
const GL_MAP2_VERTEX_ATTRIB3_4_NV = 0x8673
const GL_MAP2_VERTEX_ATTRIB4_4_NV = 0x8674
const GL_MAP2_VERTEX_ATTRIB5_4_NV = 0x8675
const GL_MAP2_VERTEX_ATTRIB6_4_NV = 0x8676
const GL_MAP2_VERTEX_ATTRIB7_4_NV = 0x8677
const GL_MAP2_VERTEX_ATTRIB8_4_NV = 0x8678
const GL_MAP2_VERTEX_ATTRIB9_4_NV = 0x8679
const GL_MAP2_VERTEX_ATTRIB10_4_NV = 0x867a
const GL_MAP2_VERTEX_ATTRIB11_4_NV = 0x867b
const GL_MAP2_VERTEX_ATTRIB12_4_NV = 0x867c
const GL_MAP2_VERTEX_ATTRIB13_4_NV = 0x867d
const GL_MAP2_VERTEX_ATTRIB14_4_NV = 0x867e
const GL_MAP2_VERTEX_ATTRIB15_4_NV = Float32(0x0867)
const GL_NV_vertex_program1_1 = 1
const GL_NV_vertex_program2 = 1
const GL_NV_vertex_program2_option = 1
const GL_NV_vertex_program3 = 1
const GL_NV_vertex_program4 = 1
const GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV = 0x88fd
const GL_NV_video_capture = 1
const GL_VIDEO_BUFFER_NV = 0x9020
const GL_VIDEO_BUFFER_BINDING_NV = 0x9021
const GL_FIELD_UPPER_NV = 0x9022
const GL_FIELD_LOWER_NV = 0x9023
const GL_NUM_VIDEO_CAPTURE_STREAMS_NV = 0x9024
const GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV = 0x9025
const GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV = 0x9026
const GL_LAST_VIDEO_CAPTURE_STATUS_NV = 0x9027
const GL_VIDEO_BUFFER_PITCH_NV = 0x9028
const GL_VIDEO_COLOR_CONVERSION_MATRIX_NV = 0x9029
const GL_VIDEO_COLOR_CONVERSION_MAX_NV = 0x902a
const GL_VIDEO_COLOR_CONVERSION_MIN_NV = 0x902b
const GL_VIDEO_COLOR_CONVERSION_OFFSET_NV = 0x902c
const GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV = 0x902d
const GL_PARTIAL_SUCCESS_NV = 0x902e
const GL_SUCCESS_NV = Float32(0x0902)
const GL_FAILURE_NV = 0x9030
const GL_YCBYCR8_422_NV = 0x9031
const GL_YCBAYCR8A_4224_NV = 0x9032
const GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV = 0x9033
const GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV = 0x9034
const GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV = 0x9035
const GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV = 0x9036
const GL_Z4Y12Z4CB12Z4CR12_444_NV = 0x9037
const GL_VIDEO_CAPTURE_FRAME_WIDTH_NV = 0x9038
const GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV = 0x9039
const GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV = 0x903a
const GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV = 0x903b
const GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV = 0x903c
const GL_NV_viewport_array2 = 1
const GL_OML_interlace = 1
const GL_INTERLACE_OML = 0x8980
const GL_INTERLACE_READ_OML = 0x8981
const GL_OML_resample = 1
const GL_PACK_RESAMPLE_OML = 0x8984
const GL_UNPACK_RESAMPLE_OML = 0x8985
const GL_RESAMPLE_REPLICATE_OML = 0x8986
const GL_RESAMPLE_ZERO_FILL_OML = 0x8987
const GL_RESAMPLE_AVERAGE_OML = 0x8988
const GL_RESAMPLE_DECIMATE_OML = 0x8989
const GL_OML_subsample = 1
const GL_FORMAT_SUBSAMPLE_24_24_OML = 0x8982
const GL_FORMAT_SUBSAMPLE_244_244_OML = 0x8983
const GL_OVR_multiview = 1
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR = 0x9630
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR = 0x9632
const GL_MAX_VIEWS_OVR = 0x9631
const GL_OVR_multiview2 = 1
const GL_PGI_misc_hints = 1
const GL_PREFER_DOUBLEBUFFER_HINT_PGI = 0x0001a1f8
const GL_CONSERVE_MEMORY_HINT_PGI = 0x0001a1fd
const GL_RECLAIM_MEMORY_HINT_PGI = 0x0001a1fe
const GL_NATIVE_GRAPHICS_HANDLE_PGI = 0x0001a202
const GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI = 0x0001a203
const GL_NATIVE_GRAPHICS_END_HINT_PGI = 0x0001a204
const GL_ALWAYS_FAST_HINT_PGI = 0x0001a20c
const GL_ALWAYS_SOFT_HINT_PGI = 0x0001a20d
const GL_ALLOW_DRAW_OBJ_HINT_PGI = 0x0001a20e
const GL_ALLOW_DRAW_WIN_HINT_PGI = Float32(0x1a20)
const GL_ALLOW_DRAW_FRG_HINT_PGI = 0x0001a210
const GL_ALLOW_DRAW_MEM_HINT_PGI = 0x0001a211
const GL_STRICT_DEPTHFUNC_HINT_PGI = 0x0001a216
const GL_STRICT_LIGHTING_HINT_PGI = 0x0001a217
const GL_STRICT_SCISSOR_HINT_PGI = 0x0001a218
const GL_FULL_STIPPLE_HINT_PGI = 0x0001a219
const GL_CLIP_NEAR_HINT_PGI = 0x0001a220
const GL_CLIP_FAR_HINT_PGI = 0x0001a221
const GL_WIDE_LINE_HINT_PGI = 0x0001a222
const GL_BACK_NORMALS_HINT_PGI = 0x0001a223
const GL_PGI_vertex_hints = 1
const GL_VERTEX_DATA_HINT_PGI = 0x0001a22a
const GL_VERTEX_CONSISTENT_HINT_PGI = 0x0001a22b
const GL_MATERIAL_SIDE_HINT_PGI = 0x0001a22c
const GL_MAX_VERTEX_HINT_PGI = 0x0001a22d
const GL_COLOR3_BIT_PGI = 0x00010000
const GL_COLOR4_BIT_PGI = 0x00020000
const GL_EDGEFLAG_BIT_PGI = 0x00040000
const GL_INDEX_BIT_PGI = 0x00080000
const GL_MAT_AMBIENT_BIT_PGI = 0x00100000
const GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI = 0x00200000
const GL_MAT_DIFFUSE_BIT_PGI = 0x00400000
const GL_MAT_EMISSION_BIT_PGI = 0x00800000
const GL_MAT_COLOR_INDEXES_BIT_PGI = 0x01000000
const GL_MAT_SHININESS_BIT_PGI = 0x02000000
const GL_MAT_SPECULAR_BIT_PGI = 0x04000000
const GL_NORMAL_BIT_PGI = 0x08000000
const GL_TEXCOORD1_BIT_PGI = 0x10000000
const GL_TEXCOORD2_BIT_PGI = 0x20000000
const GL_TEXCOORD3_BIT_PGI = 0x40000000
const GL_TEXCOORD4_BIT_PGI = 0x80000000
const GL_VERTEX23_BIT_PGI = 0x00000004
const GL_VERTEX4_BIT_PGI = 0x00000008
const GL_REND_screen_coordinates = 1
const GL_SCREEN_COORDINATES_REND = 0x8490
const GL_INVERTED_SCREEN_W_REND = 0x8491
const GL_S3_s3tc = 1
const GL_RGB_S3TC = 0x83a0
const GL_RGB4_S3TC = 0x83a1
const GL_RGBA_S3TC = 0x83a2
const GL_RGBA4_S3TC = 0x83a3
const GL_RGBA_DXT5_S3TC = 0x83a4
const GL_RGBA4_DXT5_S3TC = 0x83a5
const GL_SGIS_detail_texture = 1
const GL_DETAIL_TEXTURE_2D_SGIS = 0x8095
const GL_DETAIL_TEXTURE_2D_BINDING_SGIS = 0x8096
const GL_LINEAR_DETAIL_SGIS = 0x8097
const GL_LINEAR_DETAIL_ALPHA_SGIS = 0x8098
const GL_LINEAR_DETAIL_COLOR_SGIS = 0x8099
const GL_DETAIL_TEXTURE_LEVEL_SGIS = 0x809a
const GL_DETAIL_TEXTURE_MODE_SGIS = 0x809b
const GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = 0x809c
const GL_SGIS_fog_function = 1
const GL_FOG_FUNC_SGIS = 0x812a
const GL_FOG_FUNC_POINTS_SGIS = 0x812b
const GL_MAX_FOG_FUNC_POINTS_SGIS = 0x812c
const GL_SGIS_generate_mipmap = 1
const GL_GENERATE_MIPMAP_SGIS = 0x8191
const GL_GENERATE_MIPMAP_HINT_SGIS = 0x8192
const GL_SGIS_multisample = 1
const GL_MULTISAMPLE_SGIS = 0x809d
const GL_SAMPLE_ALPHA_TO_MASK_SGIS = 0x809e
const GL_SAMPLE_ALPHA_TO_ONE_SGIS = Float32(0x0809)
const GL_SAMPLE_MASK_SGIS = 0x80a0
const GL_1PASS_SGIS = 0x80a1
const GL_2PASS_0_SGIS = 0x80a2
const GL_2PASS_1_SGIS = 0x80a3
const GL_4PASS_0_SGIS = 0x80a4
const GL_4PASS_1_SGIS = 0x80a5
const GL_4PASS_2_SGIS = 0x80a6
const GL_4PASS_3_SGIS = 0x80a7
const GL_SAMPLE_BUFFERS_SGIS = 0x80a8
const GL_SAMPLES_SGIS = 0x80a9
const GL_SAMPLE_MASK_VALUE_SGIS = 0x80aa
const GL_SAMPLE_MASK_INVERT_SGIS = 0x80ab
const GL_SAMPLE_PATTERN_SGIS = 0x80ac
const GL_SGIS_pixel_texture = 1
const GL_PIXEL_TEXTURE_SGIS = 0x8353
const GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS = 0x8354
const GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS = 0x8355
const GL_PIXEL_GROUP_COLOR_SGIS = 0x8356
const GL_SGIS_point_line_texgen = 1
const GL_EYE_DISTANCE_TO_POINT_SGIS = 0x81f0
const GL_OBJECT_DISTANCE_TO_POINT_SGIS = 0x81f1
const GL_EYE_DISTANCE_TO_LINE_SGIS = 0x81f2
const GL_OBJECT_DISTANCE_TO_LINE_SGIS = 0x81f3
const GL_EYE_POINT_SGIS = 0x81f4
const GL_OBJECT_POINT_SGIS = 0x81f5
const GL_EYE_LINE_SGIS = 0x81f6
const GL_OBJECT_LINE_SGIS = 0x81f7
const GL_SGIS_point_parameters = 1
const GL_POINT_SIZE_MIN_SGIS = 0x8126
const GL_POINT_SIZE_MAX_SGIS = 0x8127
const GL_POINT_FADE_THRESHOLD_SIZE_SGIS = 0x8128
const GL_DISTANCE_ATTENUATION_SGIS = 0x8129
const GL_SGIS_sharpen_texture = 1
const GL_LINEAR_SHARPEN_SGIS = 0x80ad
const GL_LINEAR_SHARPEN_ALPHA_SGIS = 0x80ae
const GL_LINEAR_SHARPEN_COLOR_SGIS = Float32(0x080a)
const GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = 0x80b0
const GL_SGIS_texture4D = 1
const GL_PACK_SKIP_VOLUMES_SGIS = 0x8130
const GL_PACK_IMAGE_DEPTH_SGIS = 0x8131
const GL_UNPACK_SKIP_VOLUMES_SGIS = 0x8132
const GL_UNPACK_IMAGE_DEPTH_SGIS = 0x8133
const GL_TEXTURE_4D_SGIS = 0x8134
const GL_PROXY_TEXTURE_4D_SGIS = 0x8135
const GL_TEXTURE_4DSIZE_SGIS = 0x8136
const GL_TEXTURE_WRAP_Q_SGIS = 0x8137
const GL_MAX_4D_TEXTURE_SIZE_SGIS = 0x8138
const GL_TEXTURE_4D_BINDING_SGIS = Float32(0x0814)
const GL_SGIS_texture_border_clamp = 1
const GL_CLAMP_TO_BORDER_SGIS = 0x812d
const GL_SGIS_texture_color_mask = 1
const GL_TEXTURE_COLOR_WRITEMASK_SGIS = Float32(0x081e)
const GL_SGIS_texture_edge_clamp = 1
const GL_CLAMP_TO_EDGE_SGIS = Float32(0x0812)
const GL_SGIS_texture_filter4 = 1
const GL_FILTER4_SGIS = 0x8146
const GL_TEXTURE_FILTER4_SIZE_SGIS = 0x8147
const GL_SGIS_texture_lod = 1
const GL_TEXTURE_MIN_LOD_SGIS = 0x813a
const GL_TEXTURE_MAX_LOD_SGIS = 0x813b
const GL_TEXTURE_BASE_LEVEL_SGIS = 0x813c
const GL_TEXTURE_MAX_LEVEL_SGIS = 0x813d
const GL_SGIS_texture_select = 1
const GL_DUAL_ALPHA4_SGIS = 0x8110
const GL_DUAL_ALPHA8_SGIS = 0x8111
const GL_DUAL_ALPHA12_SGIS = 0x8112
const GL_DUAL_ALPHA16_SGIS = 0x8113
const GL_DUAL_LUMINANCE4_SGIS = 0x8114
const GL_DUAL_LUMINANCE8_SGIS = 0x8115
const GL_DUAL_LUMINANCE12_SGIS = 0x8116
const GL_DUAL_LUMINANCE16_SGIS = 0x8117
const GL_DUAL_INTENSITY4_SGIS = 0x8118
const GL_DUAL_INTENSITY8_SGIS = 0x8119
const GL_DUAL_INTENSITY12_SGIS = 0x811a
const GL_DUAL_INTENSITY16_SGIS = 0x811b
const GL_DUAL_LUMINANCE_ALPHA4_SGIS = 0x811c
const GL_DUAL_LUMINANCE_ALPHA8_SGIS = 0x811d
const GL_QUAD_ALPHA4_SGIS = 0x811e
const GL_QUAD_ALPHA8_SGIS = Float32(0x0811)
const GL_QUAD_LUMINANCE4_SGIS = 0x8120
const GL_QUAD_LUMINANCE8_SGIS = 0x8121
const GL_QUAD_INTENSITY4_SGIS = 0x8122
const GL_QUAD_INTENSITY8_SGIS = 0x8123
const GL_DUAL_TEXTURE_SELECT_SGIS = 0x8124
const GL_QUAD_TEXTURE_SELECT_SGIS = 0x8125
const GL_SGIX_async = 1
const GL_ASYNC_MARKER_SGIX = 0x8329
const GL_SGIX_async_histogram = 1
const GL_ASYNC_HISTOGRAM_SGIX = 0x832c
const GL_MAX_ASYNC_HISTOGRAM_SGIX = 0x832d
const GL_SGIX_async_pixel = 1
const GL_ASYNC_TEX_IMAGE_SGIX = 0x835c
const GL_ASYNC_DRAW_PIXELS_SGIX = 0x835d
const GL_ASYNC_READ_PIXELS_SGIX = 0x835e
const GL_MAX_ASYNC_TEX_IMAGE_SGIX = Float32(0x0835)
const GL_MAX_ASYNC_DRAW_PIXELS_SGIX = 0x8360
const GL_MAX_ASYNC_READ_PIXELS_SGIX = 0x8361
const GL_SGIX_blend_alpha_minmax = 1
const GL_ALPHA_MIN_SGIX = 0x8320
const GL_ALPHA_MAX_SGIX = 0x8321
const GL_SGIX_calligraphic_fragment = 1
const GL_CALLIGRAPHIC_FRAGMENT_SGIX = 0x8183
const GL_SGIX_clipmap = 1
const GL_LINEAR_CLIPMAP_LINEAR_SGIX = 0x8170
const GL_TEXTURE_CLIPMAP_CENTER_SGIX = 0x8171
const GL_TEXTURE_CLIPMAP_FRAME_SGIX = 0x8172
const GL_TEXTURE_CLIPMAP_OFFSET_SGIX = 0x8173
const GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8174
const GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = 0x8175
const GL_TEXTURE_CLIPMAP_DEPTH_SGIX = 0x8176
const GL_MAX_CLIPMAP_DEPTH_SGIX = 0x8177
const GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8178
const GL_NEAREST_CLIPMAP_NEAREST_SGIX = 0x844d
const GL_NEAREST_CLIPMAP_LINEAR_SGIX = 0x844e
const GL_LINEAR_CLIPMAP_NEAREST_SGIX = Float32(0x0844)
const GL_SGIX_convolution_accuracy = 1
const GL_CONVOLUTION_HINT_SGIX = 0x8316
const GL_SGIX_depth_pass_instrument = 1
const GL_SGIX_depth_texture = 1
const GL_DEPTH_COMPONENT16_SGIX = 0x81a5
const GL_DEPTH_COMPONENT24_SGIX = 0x81a6
const GL_DEPTH_COMPONENT32_SGIX = 0x81a7
const GL_SGIX_flush_raster = 1
const GL_SGIX_fog_offset = 1
const GL_FOG_OFFSET_SGIX = 0x8198
const GL_FOG_OFFSET_VALUE_SGIX = 0x8199
const GL_SGIX_fragment_lighting = 1
const GL_FRAGMENT_LIGHTING_SGIX = 0x8400
const GL_FRAGMENT_COLOR_MATERIAL_SGIX = 0x8401
const GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX = 0x8402
const GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = 0x8403
const GL_MAX_FRAGMENT_LIGHTS_SGIX = 0x8404
const GL_MAX_ACTIVE_LIGHTS_SGIX = 0x8405
const GL_CURRENT_RASTER_NORMAL_SGIX = 0x8406
const GL_LIGHT_ENV_MODE_SGIX = 0x8407
const GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = 0x8408
const GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = 0x8409
const GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = 0x840a
const GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = 0x840b
const GL_FRAGMENT_LIGHT0_SGIX = 0x840c
const GL_FRAGMENT_LIGHT1_SGIX = 0x840d
const GL_FRAGMENT_LIGHT2_SGIX = 0x840e
const GL_FRAGMENT_LIGHT3_SGIX = Float32(0x0840)
const GL_FRAGMENT_LIGHT4_SGIX = 0x8410
const GL_FRAGMENT_LIGHT5_SGIX = 0x8411
const GL_FRAGMENT_LIGHT6_SGIX = 0x8412
const GL_FRAGMENT_LIGHT7_SGIX = 0x8413
const GL_SGIX_framezoom = 1
const GL_FRAMEZOOM_SGIX = 0x818b
const GL_FRAMEZOOM_FACTOR_SGIX = 0x818c
const GL_MAX_FRAMEZOOM_FACTOR_SGIX = 0x818d
const GL_SGIX_igloo_interface = 1
const GL_SGIX_instruments = 1
const GL_INSTRUMENT_BUFFER_POINTER_SGIX = 0x8180
const GL_INSTRUMENT_MEASUREMENTS_SGIX = 0x8181
const GL_SGIX_interlace = 1
const GL_INTERLACE_SGIX = 0x8094
const GL_SGIX_ir_instrument1 = 1
const GL_IR_INSTRUMENT1_SGIX = Float32(0x0817)
const GL_SGIX_list_priority = 1
const GL_LIST_PRIORITY_SGIX = 0x8182
const GL_SGIX_pixel_texture = 1
const GL_PIXEL_TEX_GEN_SGIX = 0x8139
const GL_PIXEL_TEX_GEN_MODE_SGIX = 0x832b
const GL_SGIX_pixel_tiles = 1
const GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX = 0x813e
const GL_PIXEL_TILE_CACHE_INCREMENT_SGIX = Float32(0x0813)
const GL_PIXEL_TILE_WIDTH_SGIX = 0x8140
const GL_PIXEL_TILE_HEIGHT_SGIX = 0x8141
const GL_PIXEL_TILE_GRID_WIDTH_SGIX = 0x8142
const GL_PIXEL_TILE_GRID_HEIGHT_SGIX = 0x8143
const GL_PIXEL_TILE_GRID_DEPTH_SGIX = 0x8144
const GL_PIXEL_TILE_CACHE_SIZE_SGIX = 0x8145
const GL_SGIX_polynomial_ffd = 1
const GL_TEXTURE_DEFORMATION_BIT_SGIX = 0x00000001
const GL_GEOMETRY_DEFORMATION_BIT_SGIX = 0x00000002
const GL_GEOMETRY_DEFORMATION_SGIX = 0x8194
const GL_TEXTURE_DEFORMATION_SGIX = 0x8195
const GL_DEFORMATIONS_MASK_SGIX = 0x8196
const GL_MAX_DEFORMATION_ORDER_SGIX = 0x8197
const GL_SGIX_reference_plane = 1
const GL_REFERENCE_PLANE_SGIX = 0x817d
const GL_REFERENCE_PLANE_EQUATION_SGIX = 0x817e
const GL_SGIX_resample = 1
const GL_PACK_RESAMPLE_SGIX = 0x842e
const GL_UNPACK_RESAMPLE_SGIX = Float32(0x0842)
const GL_RESAMPLE_REPLICATE_SGIX = 0x8433
const GL_RESAMPLE_ZERO_FILL_SGIX = 0x8434
const GL_RESAMPLE_DECIMATE_SGIX = 0x8430
const GL_SGIX_scalebias_hint = 1
const GL_SCALEBIAS_HINT_SGIX = 0x8322
const GL_SGIX_shadow = 1
const GL_TEXTURE_COMPARE_SGIX = 0x819a
const GL_TEXTURE_COMPARE_OPERATOR_SGIX = 0x819b
const GL_TEXTURE_LEQUAL_R_SGIX = 0x819c
const GL_TEXTURE_GEQUAL_R_SGIX = 0x819d
const GL_SGIX_shadow_ambient = 1
const GL_SHADOW_AMBIENT_SGIX = Float32(0x080b)
const GL_SGIX_sprite = 1
const GL_SPRITE_SGIX = 0x8148
const GL_SPRITE_MODE_SGIX = 0x8149
const GL_SPRITE_AXIS_SGIX = 0x814a
const GL_SPRITE_TRANSLATION_SGIX = 0x814b
const GL_SPRITE_AXIAL_SGIX = 0x814c
const GL_SPRITE_OBJECT_ALIGNED_SGIX = 0x814d
const GL_SPRITE_EYE_ALIGNED_SGIX = 0x814e
const GL_SGIX_subsample = 1
const GL_PACK_SUBSAMPLE_RATE_SGIX = 0x85a0
const GL_UNPACK_SUBSAMPLE_RATE_SGIX = 0x85a1
const GL_PIXEL_SUBSAMPLE_4444_SGIX = 0x85a2
const GL_PIXEL_SUBSAMPLE_2424_SGIX = 0x85a3
const GL_PIXEL_SUBSAMPLE_4242_SGIX = 0x85a4
const GL_SGIX_tag_sample_buffer = 1
const GL_SGIX_texture_add_env = 1
const GL_TEXTURE_ENV_BIAS_SGIX = 0x80be
const GL_SGIX_texture_coordinate_clamp = 1
const GL_TEXTURE_MAX_CLAMP_S_SGIX = 0x8369
const GL_TEXTURE_MAX_CLAMP_T_SGIX = 0x836a
const GL_TEXTURE_MAX_CLAMP_R_SGIX = 0x836b
const GL_SGIX_texture_lod_bias = 1
const GL_TEXTURE_LOD_BIAS_S_SGIX = 0x818e
const GL_TEXTURE_LOD_BIAS_T_SGIX = Float32(0x0818)
const GL_TEXTURE_LOD_BIAS_R_SGIX = 0x8190
const GL_SGIX_texture_multi_buffer = 1
const GL_TEXTURE_MULTI_BUFFER_HINT_SGIX = 0x812e
const GL_SGIX_texture_scale_bias = 1
const GL_POST_TEXTURE_FILTER_BIAS_SGIX = 0x8179
const GL_POST_TEXTURE_FILTER_SCALE_SGIX = 0x817a
const GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = 0x817b
const GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = 0x817c
const GL_SGIX_vertex_preclip = 1
const GL_VERTEX_PRECLIP_SGIX = 0x83ee
const GL_VERTEX_PRECLIP_HINT_SGIX = Float32(0x083e)
const GL_SGIX_ycrcb = 1
const GL_YCRCB_422_SGIX = 0x81bb
const GL_YCRCB_444_SGIX = 0x81bc
const GL_SGIX_ycrcb_subsample = 1
const GL_SGIX_ycrcba = 1
const GL_YCRCB_SGIX = 0x8318
const GL_YCRCBA_SGIX = 0x8319
const GL_SGI_color_matrix = 1
const GL_COLOR_MATRIX_SGI = 0x80b1
const GL_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80b2
const GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80b3
const GL_POST_COLOR_MATRIX_RED_SCALE_SGI = 0x80b4
const GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = 0x80b5
const GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = 0x80b6
const GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = 0x80b7
const GL_POST_COLOR_MATRIX_RED_BIAS_SGI = 0x80b8
const GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = 0x80b9
const GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = 0x80ba
const GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = 0x80bb
const GL_SGI_color_table = 1
const GL_COLOR_TABLE_SGI = 0x80d0
const GL_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80d1
const GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80d2
const GL_PROXY_COLOR_TABLE_SGI = 0x80d3
const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80d4
const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80d5
const GL_COLOR_TABLE_SCALE_SGI = 0x80d6
const GL_COLOR_TABLE_BIAS_SGI = 0x80d7
const GL_COLOR_TABLE_FORMAT_SGI = 0x80d8
const GL_COLOR_TABLE_WIDTH_SGI = 0x80d9
const GL_COLOR_TABLE_RED_SIZE_SGI = 0x80da
const GL_COLOR_TABLE_GREEN_SIZE_SGI = 0x80db
const GL_COLOR_TABLE_BLUE_SIZE_SGI = 0x80dc
const GL_COLOR_TABLE_ALPHA_SIZE_SGI = 0x80dd
const GL_COLOR_TABLE_LUMINANCE_SIZE_SGI = 0x80de
const GL_COLOR_TABLE_INTENSITY_SIZE_SGI = Float32(0x080d)
const GL_SGI_texture_color_table = 1
const GL_TEXTURE_COLOR_TABLE_SGI = 0x80bc
const GL_PROXY_TEXTURE_COLOR_TABLE_SGI = 0x80bd
const GL_SUNX_constant_data = 1
const GL_UNPACK_CONSTANT_DATA_SUNX = 0x81d5
const GL_TEXTURE_CONSTANT_DATA_SUNX = 0x81d6
const GL_SUN_convolution_border_modes = 1
const GL_WRAP_BORDER_SUN = 0x81d4
const GL_SUN_global_alpha = 1
const GL_GLOBAL_ALPHA_SUN = 0x81d9
const GL_GLOBAL_ALPHA_FACTOR_SUN = 0x81da
const GL_SUN_mesh_array = 1
const GL_QUAD_MESH_SUN = 0x8614
const GL_TRIANGLE_MESH_SUN = 0x8615
const GL_SUN_slice_accum = 1
const GL_SLICE_ACCUM_SUN = 0x85cc
const GL_SUN_triangle_list = 1
const GL_RESTART_SUN = 0x0001
const GL_REPLACE_MIDDLE_SUN = 0x0002
const GL_REPLACE_OLDEST_SUN = 0x0003
const GL_TRIANGLE_LIST_SUN = 0x81d7
const GL_REPLACEMENT_CODE_SUN = 0x81d8
const GL_REPLACEMENT_CODE_ARRAY_SUN = 0x85c0
const GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN = 0x85c1
const GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN = 0x85c2
const GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN = 0x85c3
const GL_R1UI_V3F_SUN = 0x85c4
const GL_R1UI_C4UB_V3F_SUN = 0x85c5
const GL_R1UI_C3F_V3F_SUN = 0x85c6
const GL_R1UI_N3F_V3F_SUN = 0x85c7
const GL_R1UI_C4F_N3F_V3F_SUN = 0x85c8
const GL_R1UI_T2F_V3F_SUN = 0x85c9
const GL_R1UI_T2F_N3F_V3F_SUN = 0x85ca
const GL_R1UI_T2F_C4F_N3F_V3F_SUN = 0x85cb
const GL_SUN_vertex = 1
const GL_WIN_phong_shading = 1
const GL_PHONG_WIN = 0x80ea
const GL_PHONG_HINT_WIN = 0x80eb
const GL_WIN_specular_fog = 1
const GL_FOG_SPECULAR_TEXTURE_WIN = 0x80ec
const GL_MESA_packed_depth_stencil = 1
const GL_DEPTH_STENCIL_MESA = 0x8750
const GL_UNSIGNED_INT_24_8_MESA = 0x8751
const GL_UNSIGNED_INT_8_24_REV_MESA = 0x8752
const GL_UNSIGNED_SHORT_15_1_MESA = 0x8753
const GL_UNSIGNED_SHORT_1_15_REV_MESA = 0x8754
const GL_ATI_blend_equation_separate = 1
const GL_ALPHA_BLEND_EQUATION_ATI = 0x883d
const GL_OES_EGL_image = 1

typealias GLenum UInt32
typealias GLboolean Cuchar
typealias GLbitfield UInt32
typealias GLvoid Void
typealias GLbyte UInt8
typealias GLshort Int16
typealias GLint Cint
typealias GLubyte Cuchar
typealias GLushort UInt16
typealias GLuint UInt32
typealias GLsizei Cint
typealias GLfloat Cfloat
typealias GLclampf Cfloat
typealias GLdouble Cdouble
typealias GLclampd Cdouble
typealias PFNGLDRAWRANGEELEMENTSPROC Ptr{Void}
typealias PFNGLTEXIMAGE3DPROC Ptr{Void}
typealias PFNGLTEXSUBIMAGE3DPROC Ptr{Void}
typealias PFNGLCOPYTEXSUBIMAGE3DPROC Ptr{Void}
typealias PFNGLACTIVETEXTUREPROC Ptr{Void}
typealias PFNGLSAMPLECOVERAGEPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXIMAGE3DPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXIMAGE2DPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXIMAGE1DPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC Ptr{Void}
typealias PFNGLGETCOMPRESSEDTEXIMAGEPROC Ptr{Void}
typealias PFNGLACTIVETEXTUREARBPROC Ptr{Void}
typealias PFNGLCLIENTACTIVETEXTUREARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1DARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1DVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1FARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1FVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1IARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1IVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1SARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1SVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2DARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2DVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2FARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2FVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2IARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2IVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2SARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2SVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3DARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3DVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3FARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3FVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3IARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3IVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3SARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3SVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4DARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4DVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4FARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4FVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4IARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4IVARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4SARBPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4SVARBPROC Ptr{Void}
typealias PFNGLBLENDFUNCSEPARATEPROC Ptr{Void}
typealias PFNGLMULTIDRAWARRAYSPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTSPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERFPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERFVPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERIPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERIVPROC Ptr{Void}
typealias PFNGLFOGCOORDFPROC Ptr{Void}
typealias PFNGLFOGCOORDFVPROC Ptr{Void}
typealias PFNGLFOGCOORDDPROC Ptr{Void}
typealias PFNGLFOGCOORDDVPROC Ptr{Void}
typealias PFNGLFOGCOORDPOINTERPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3BPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3BVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3DPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3DVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3FPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3FVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3IPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3IVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3SPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3SVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3UBPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3UBVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3UIPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3UIVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3USPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3USVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLORPOINTERPROC Ptr{Void}
typealias PFNGLWINDOWPOS2DPROC Ptr{Void}
typealias PFNGLWINDOWPOS2DVPROC Ptr{Void}
typealias PFNGLWINDOWPOS2FPROC Ptr{Void}
typealias PFNGLWINDOWPOS2FVPROC Ptr{Void}
typealias PFNGLWINDOWPOS2IPROC Ptr{Void}
typealias PFNGLWINDOWPOS2IVPROC Ptr{Void}
typealias PFNGLWINDOWPOS2SPROC Ptr{Void}
typealias PFNGLWINDOWPOS2SVPROC Ptr{Void}
typealias PFNGLWINDOWPOS3DPROC Ptr{Void}
typealias PFNGLWINDOWPOS3DVPROC Ptr{Void}
typealias PFNGLWINDOWPOS3FPROC Ptr{Void}
typealias PFNGLWINDOWPOS3FVPROC Ptr{Void}
typealias PFNGLWINDOWPOS3IPROC Ptr{Void}
typealias PFNGLWINDOWPOS3IVPROC Ptr{Void}
typealias PFNGLWINDOWPOS3SPROC Ptr{Void}
typealias PFNGLWINDOWPOS3SVPROC Ptr{Void}
typealias PFNGLBLENDCOLORPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONPROC Ptr{Void}
typealias GLsizeiptr Cint
typealias GLintptr Cint
typealias PFNGLGENQUERIESPROC Ptr{Void}
typealias PFNGLDELETEQUERIESPROC Ptr{Void}
typealias PFNGLISQUERYPROC Ptr{Void}
typealias PFNGLBEGINQUERYPROC Ptr{Void}
typealias PFNGLENDQUERYPROC Ptr{Void}
typealias PFNGLGETQUERYIVPROC Ptr{Void}
typealias PFNGLGETQUERYOBJECTIVPROC Ptr{Void}
typealias PFNGLGETQUERYOBJECTUIVPROC Ptr{Void}
typealias PFNGLBINDBUFFERPROC Ptr{Void}
typealias PFNGLDELETEBUFFERSPROC Ptr{Void}
typealias PFNGLGENBUFFERSPROC Ptr{Void}
typealias PFNGLISBUFFERPROC Ptr{Void}
typealias PFNGLBUFFERDATAPROC Ptr{Void}
typealias PFNGLBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLGETBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLMAPBUFFERPROC Ptr{Void}
typealias PFNGLUNMAPBUFFERPROC Ptr{Void}
typealias PFNGLGETBUFFERPARAMETERIVPROC Ptr{Void}
typealias PFNGLGETBUFFERPOINTERVPROC Ptr{Void}
typealias GLchar UInt8
typealias PFNGLBLENDEQUATIONSEPARATEPROC Ptr{Void}
typealias PFNGLDRAWBUFFERSPROC Ptr{Void}
typealias PFNGLSTENCILOPSEPARATEPROC Ptr{Void}
typealias PFNGLSTENCILFUNCSEPARATEPROC Ptr{Void}
typealias PFNGLSTENCILMASKSEPARATEPROC Ptr{Void}
typealias PFNGLATTACHSHADERPROC Ptr{Void}
typealias PFNGLBINDATTRIBLOCATIONPROC Ptr{Void}
typealias PFNGLCOMPILESHADERPROC Ptr{Void}
typealias PFNGLCREATEPROGRAMPROC Ptr{Void}
typealias PFNGLCREATESHADERPROC Ptr{Void}
typealias PFNGLDELETEPROGRAMPROC Ptr{Void}
typealias PFNGLDELETESHADERPROC Ptr{Void}
typealias PFNGLDETACHSHADERPROC Ptr{Void}
typealias PFNGLDISABLEVERTEXATTRIBARRAYPROC Ptr{Void}
typealias PFNGLENABLEVERTEXATTRIBARRAYPROC Ptr{Void}
typealias PFNGLGETACTIVEATTRIBPROC Ptr{Void}
typealias PFNGLGETACTIVEUNIFORMPROC Ptr{Void}
typealias PFNGLGETATTACHEDSHADERSPROC Ptr{Void}
typealias PFNGLGETATTRIBLOCATIONPROC Ptr{Void}
typealias PFNGLGETPROGRAMIVPROC Ptr{Void}
typealias PFNGLGETPROGRAMINFOLOGPROC Ptr{Void}
typealias PFNGLGETSHADERIVPROC Ptr{Void}
typealias PFNGLGETSHADERINFOLOGPROC Ptr{Void}
typealias PFNGLGETSHADERSOURCEPROC Ptr{Void}
typealias PFNGLGETUNIFORMLOCATIONPROC Ptr{Void}
typealias PFNGLGETUNIFORMFVPROC Ptr{Void}
typealias PFNGLGETUNIFORMIVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBDVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBFVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBIVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBPOINTERVPROC Ptr{Void}
typealias PFNGLISPROGRAMPROC Ptr{Void}
typealias PFNGLISSHADERPROC Ptr{Void}
typealias PFNGLLINKPROGRAMPROC Ptr{Void}
typealias PFNGLSHADERSOURCEPROC Ptr{Void}
typealias PFNGLUSEPROGRAMPROC Ptr{Void}
typealias PFNGLUNIFORM1FPROC Ptr{Void}
typealias PFNGLUNIFORM2FPROC Ptr{Void}
typealias PFNGLUNIFORM3FPROC Ptr{Void}
typealias PFNGLUNIFORM4FPROC Ptr{Void}
typealias PFNGLUNIFORM1IPROC Ptr{Void}
typealias PFNGLUNIFORM2IPROC Ptr{Void}
typealias PFNGLUNIFORM3IPROC Ptr{Void}
typealias PFNGLUNIFORM4IPROC Ptr{Void}
typealias PFNGLUNIFORM1FVPROC Ptr{Void}
typealias PFNGLUNIFORM2FVPROC Ptr{Void}
typealias PFNGLUNIFORM3FVPROC Ptr{Void}
typealias PFNGLUNIFORM4FVPROC Ptr{Void}
typealias PFNGLUNIFORM1IVPROC Ptr{Void}
typealias PFNGLUNIFORM2IVPROC Ptr{Void}
typealias PFNGLUNIFORM3IVPROC Ptr{Void}
typealias PFNGLUNIFORM4IVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX2FVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX3FVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX4FVPROC Ptr{Void}
typealias PFNGLVALIDATEPROGRAMPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1DPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1DVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1FPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1FVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1SPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1SVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2DPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2DVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2FPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2FVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2SPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2SVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3DPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3DVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3FPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3FVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3SPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3SVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NBVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NSVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NUBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NUBVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NUIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NUSVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4BVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4DPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4DVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4FPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4FVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4IVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4SPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4SVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4UBVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4UIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4USVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBPOINTERPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX2X3FVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX3X2FVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX2X4FVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX4X2FVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX3X4FVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX4X3FVPROC Ptr{Void}
typealias GLhalf UInt16
typealias PFNGLCOLORMASKIPROC Ptr{Void}
typealias PFNGLGETBOOLEANI_VPROC Ptr{Void}
typealias PFNGLGETINTEGERI_VPROC Ptr{Void}
typealias PFNGLENABLEIPROC Ptr{Void}
typealias PFNGLDISABLEIPROC Ptr{Void}
typealias PFNGLISENABLEDIPROC Ptr{Void}
typealias PFNGLBEGINTRANSFORMFEEDBACKPROC Ptr{Void}
typealias PFNGLENDTRANSFORMFEEDBACKPROC Ptr{Void}
typealias PFNGLBINDBUFFERRANGEPROC Ptr{Void}
typealias PFNGLBINDBUFFERBASEPROC Ptr{Void}
typealias PFNGLTRANSFORMFEEDBACKVARYINGSPROC Ptr{Void}
typealias PFNGLGETTRANSFORMFEEDBACKVARYINGPROC Ptr{Void}
typealias PFNGLCLAMPCOLORPROC Ptr{Void}
typealias PFNGLBEGINCONDITIONALRENDERPROC Ptr{Void}
typealias PFNGLENDCONDITIONALRENDERPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBIPOINTERPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBIIVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBIUIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI1IPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI2IPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI3IPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4IPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI1UIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI2UIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI3UIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4UIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI1IVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI2IVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI3IVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4IVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI1UIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI2UIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI3UIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4UIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4BVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4SVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4UBVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4USVPROC Ptr{Void}
typealias PFNGLGETUNIFORMUIVPROC Ptr{Void}
typealias PFNGLBINDFRAGDATALOCATIONPROC Ptr{Void}
typealias PFNGLGETFRAGDATALOCATIONPROC Ptr{Void}
typealias PFNGLUNIFORM1UIPROC Ptr{Void}
typealias PFNGLUNIFORM2UIPROC Ptr{Void}
typealias PFNGLUNIFORM3UIPROC Ptr{Void}
typealias PFNGLUNIFORM4UIPROC Ptr{Void}
typealias PFNGLUNIFORM1UIVPROC Ptr{Void}
typealias PFNGLUNIFORM2UIVPROC Ptr{Void}
typealias PFNGLUNIFORM3UIVPROC Ptr{Void}
typealias PFNGLUNIFORM4UIVPROC Ptr{Void}
typealias PFNGLTEXPARAMETERIIVPROC Ptr{Void}
typealias PFNGLTEXPARAMETERIUIVPROC Ptr{Void}
typealias PFNGLGETTEXPARAMETERIIVPROC Ptr{Void}
typealias PFNGLGETTEXPARAMETERIUIVPROC Ptr{Void}
typealias PFNGLCLEARBUFFERIVPROC Ptr{Void}
typealias PFNGLCLEARBUFFERUIVPROC Ptr{Void}
typealias PFNGLCLEARBUFFERFVPROC Ptr{Void}
typealias PFNGLCLEARBUFFERFIPROC Ptr{Void}
typealias PFNGLGETSTRINGIPROC Ptr{Void}
typealias PFNGLISRENDERBUFFERPROC Ptr{Void}
typealias PFNGLBINDRENDERBUFFERPROC Ptr{Void}
typealias PFNGLDELETERENDERBUFFERSPROC Ptr{Void}
typealias PFNGLGENRENDERBUFFERSPROC Ptr{Void}
typealias PFNGLRENDERBUFFERSTORAGEPROC Ptr{Void}
typealias PFNGLGETRENDERBUFFERPARAMETERIVPROC Ptr{Void}
typealias PFNGLISFRAMEBUFFERPROC Ptr{Void}
typealias PFNGLBINDFRAMEBUFFERPROC Ptr{Void}
typealias PFNGLDELETEFRAMEBUFFERSPROC Ptr{Void}
typealias PFNGLGENFRAMEBUFFERSPROC Ptr{Void}
typealias PFNGLCHECKFRAMEBUFFERSTATUSPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURE1DPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURE2DPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURE3DPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERRENDERBUFFERPROC Ptr{Void}
typealias PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC Ptr{Void}
typealias PFNGLGENERATEMIPMAPPROC Ptr{Void}
typealias PFNGLBLITFRAMEBUFFERPROC Ptr{Void}
typealias PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURELAYERPROC Ptr{Void}
typealias PFNGLMAPBUFFERRANGEPROC Ptr{Void}
typealias PFNGLFLUSHMAPPEDBUFFERRANGEPROC Ptr{Void}
typealias PFNGLBINDVERTEXARRAYPROC Ptr{Void}
typealias PFNGLDELETEVERTEXARRAYSPROC Ptr{Void}
typealias PFNGLGENVERTEXARRAYSPROC Ptr{Void}
typealias PFNGLISVERTEXARRAYPROC Ptr{Void}
typealias PFNGLDRAWARRAYSINSTANCEDPROC Ptr{Void}
typealias PFNGLDRAWELEMENTSINSTANCEDPROC Ptr{Void}
typealias PFNGLTEXBUFFERPROC Ptr{Void}
typealias PFNGLPRIMITIVERESTARTINDEXPROC Ptr{Void}
typealias PFNGLCOPYBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLGETUNIFORMINDICESPROC Ptr{Void}
typealias PFNGLGETACTIVEUNIFORMSIVPROC Ptr{Void}
typealias PFNGLGETACTIVEUNIFORMNAMEPROC Ptr{Void}
typealias PFNGLGETUNIFORMBLOCKINDEXPROC Ptr{Void}
typealias PFNGLGETACTIVEUNIFORMBLOCKIVPROC Ptr{Void}
typealias PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC Ptr{Void}
typealias PFNGLUNIFORMBLOCKBINDINGPROC Ptr{Void}
typealias GLsync Ptr{__GLsync}
typealias int8_t UInt8
typealias int16_t Int16
typealias int32_t Cint
typealias int64_t Clong
typealias uint8_t Cuchar
typealias uint16_t UInt16
typealias uint32_t UInt32
typealias uint64_t Culong
typealias int_least8_t UInt8
typealias int_least16_t Int16
typealias int_least32_t Cint
typealias int_least64_t Clong
typealias uint_least8_t Cuchar
typealias uint_least16_t UInt16
typealias uint_least32_t UInt32
typealias uint_least64_t Culong
typealias int_fast8_t UInt8
typealias int_fast16_t Clong
typealias int_fast32_t Clong
typealias int_fast64_t Clong
typealias uint_fast8_t Cuchar
typealias uint_fast16_t Culong
typealias uint_fast32_t Culong
typealias uint_fast64_t Culong
typealias intptr_t Clong
typealias uintptr_t Culong
typealias intmax_t Clong
typealias uintmax_t Culong

immutable imaxdiv_t
    quot::Clong
    rem::Clong
end

typealias GLuint64 UInt64
typealias GLint64 Int64
typealias PFNGLDRAWELEMENTSBASEVERTEXPROC Ptr{Void}
typealias PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC Ptr{Void}
typealias PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC Ptr{Void}
typealias PFNGLPROVOKINGVERTEXPROC Ptr{Void}
typealias PFNGLFENCESYNCPROC Ptr{Void}
typealias PFNGLISSYNCPROC Ptr{Void}
typealias PFNGLDELETESYNCPROC Ptr{Void}
typealias PFNGLCLIENTWAITSYNCPROC Ptr{Void}
typealias PFNGLWAITSYNCPROC Ptr{Void}
typealias PFNGLGETINTEGER64VPROC Ptr{Void}
typealias PFNGLGETSYNCIVPROC Ptr{Void}
typealias PFNGLGETINTEGER64I_VPROC Ptr{Void}
typealias PFNGLGETBUFFERPARAMETERI64VPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTUREPROC Ptr{Void}
typealias PFNGLTEXIMAGE2DMULTISAMPLEPROC Ptr{Void}
typealias PFNGLTEXIMAGE3DMULTISAMPLEPROC Ptr{Void}
typealias PFNGLGETMULTISAMPLEFVPROC Ptr{Void}
typealias PFNGLSAMPLEMASKIPROC Ptr{Void}
typealias PFNGLBINDFRAGDATALOCATIONINDEXEDPROC Ptr{Void}
typealias PFNGLGETFRAGDATAINDEXPROC Ptr{Void}
typealias PFNGLGENSAMPLERSPROC Ptr{Void}
typealias PFNGLDELETESAMPLERSPROC Ptr{Void}
typealias PFNGLISSAMPLERPROC Ptr{Void}
typealias PFNGLBINDSAMPLERPROC Ptr{Void}
typealias PFNGLSAMPLERPARAMETERIPROC Ptr{Void}
typealias PFNGLSAMPLERPARAMETERIVPROC Ptr{Void}
typealias PFNGLSAMPLERPARAMETERFPROC Ptr{Void}
typealias PFNGLSAMPLERPARAMETERFVPROC Ptr{Void}
typealias PFNGLSAMPLERPARAMETERIIVPROC Ptr{Void}
typealias PFNGLSAMPLERPARAMETERIUIVPROC Ptr{Void}
typealias PFNGLGETSAMPLERPARAMETERIVPROC Ptr{Void}
typealias PFNGLGETSAMPLERPARAMETERIIVPROC Ptr{Void}
typealias PFNGLGETSAMPLERPARAMETERFVPROC Ptr{Void}
typealias PFNGLGETSAMPLERPARAMETERIUIVPROC Ptr{Void}
typealias PFNGLQUERYCOUNTERPROC Ptr{Void}
typealias PFNGLGETQUERYOBJECTI64VPROC Ptr{Void}
typealias PFNGLGETQUERYOBJECTUI64VPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBDIVISORPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBP1UIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBP1UIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBP2UIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBP2UIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBP3UIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBP3UIVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBP4UIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBP4UIVPROC Ptr{Void}
typealias PFNGLVERTEXP2UIPROC Ptr{Void}
typealias PFNGLVERTEXP2UIVPROC Ptr{Void}
typealias PFNGLVERTEXP3UIPROC Ptr{Void}
typealias PFNGLVERTEXP3UIVPROC Ptr{Void}
typealias PFNGLVERTEXP4UIPROC Ptr{Void}
typealias PFNGLVERTEXP4UIVPROC Ptr{Void}
typealias PFNGLTEXCOORDP1UIPROC Ptr{Void}
typealias PFNGLTEXCOORDP1UIVPROC Ptr{Void}
typealias PFNGLTEXCOORDP2UIPROC Ptr{Void}
typealias PFNGLTEXCOORDP2UIVPROC Ptr{Void}
typealias PFNGLTEXCOORDP3UIPROC Ptr{Void}
typealias PFNGLTEXCOORDP3UIVPROC Ptr{Void}
typealias PFNGLTEXCOORDP4UIPROC Ptr{Void}
typealias PFNGLTEXCOORDP4UIVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDP1UIPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDP1UIVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDP2UIPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDP2UIVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDP3UIPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDP3UIVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDP4UIPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDP4UIVPROC Ptr{Void}
typealias PFNGLNORMALP3UIPROC Ptr{Void}
typealias PFNGLNORMALP3UIVPROC Ptr{Void}
typealias PFNGLCOLORP3UIPROC Ptr{Void}
typealias PFNGLCOLORP3UIVPROC Ptr{Void}
typealias PFNGLCOLORP4UIPROC Ptr{Void}
typealias PFNGLCOLORP4UIVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLORP3UIPROC Ptr{Void}
typealias PFNGLSECONDARYCOLORP3UIVPROC Ptr{Void}
typealias PFNGLMINSAMPLESHADINGPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONIPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONSEPARATEIPROC Ptr{Void}
typealias PFNGLBLENDFUNCIPROC Ptr{Void}
typealias PFNGLBLENDFUNCSEPARATEIPROC Ptr{Void}
typealias PFNGLDRAWARRAYSINDIRECTPROC Ptr{Void}
typealias PFNGLDRAWELEMENTSINDIRECTPROC Ptr{Void}
typealias PFNGLUNIFORM1DPROC Ptr{Void}
typealias PFNGLUNIFORM2DPROC Ptr{Void}
typealias PFNGLUNIFORM3DPROC Ptr{Void}
typealias PFNGLUNIFORM4DPROC Ptr{Void}
typealias PFNGLUNIFORM1DVPROC Ptr{Void}
typealias PFNGLUNIFORM2DVPROC Ptr{Void}
typealias PFNGLUNIFORM3DVPROC Ptr{Void}
typealias PFNGLUNIFORM4DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX2DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX3DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX4DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX2X3DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX2X4DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX3X2DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX3X4DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX4X2DVPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX4X3DVPROC Ptr{Void}
typealias PFNGLGETUNIFORMDVPROC Ptr{Void}
typealias PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC Ptr{Void}
typealias PFNGLGETSUBROUTINEINDEXPROC Ptr{Void}
typealias PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC Ptr{Void}
typealias PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC Ptr{Void}
typealias PFNGLGETACTIVESUBROUTINENAMEPROC Ptr{Void}
typealias PFNGLUNIFORMSUBROUTINESUIVPROC Ptr{Void}
typealias PFNGLGETUNIFORMSUBROUTINEUIVPROC Ptr{Void}
typealias PFNGLGETPROGRAMSTAGEIVPROC Ptr{Void}
typealias PFNGLPATCHPARAMETERIPROC Ptr{Void}
typealias PFNGLPATCHPARAMETERFVPROC Ptr{Void}
typealias PFNGLBINDTRANSFORMFEEDBACKPROC Ptr{Void}
typealias PFNGLDELETETRANSFORMFEEDBACKSPROC Ptr{Void}
typealias PFNGLGENTRANSFORMFEEDBACKSPROC Ptr{Void}
typealias PFNGLISTRANSFORMFEEDBACKPROC Ptr{Void}
typealias PFNGLPAUSETRANSFORMFEEDBACKPROC Ptr{Void}
typealias PFNGLRESUMETRANSFORMFEEDBACKPROC Ptr{Void}
typealias PFNGLDRAWTRANSFORMFEEDBACKPROC Ptr{Void}
typealias PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC Ptr{Void}
typealias PFNGLBEGINQUERYINDEXEDPROC Ptr{Void}
typealias PFNGLENDQUERYINDEXEDPROC Ptr{Void}
typealias PFNGLGETQUERYINDEXEDIVPROC Ptr{Void}
typealias PFNGLRELEASESHADERCOMPILERPROC Ptr{Void}
typealias PFNGLSHADERBINARYPROC Ptr{Void}
typealias PFNGLGETSHADERPRECISIONFORMATPROC Ptr{Void}
typealias PFNGLDEPTHRANGEFPROC Ptr{Void}
typealias PFNGLCLEARDEPTHFPROC Ptr{Void}
typealias PFNGLGETPROGRAMBINARYPROC Ptr{Void}
typealias PFNGLPROGRAMBINARYPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETERIPROC Ptr{Void}
typealias PFNGLUSEPROGRAMSTAGESPROC Ptr{Void}
typealias PFNGLACTIVESHADERPROGRAMPROC Ptr{Void}
typealias PFNGLCREATESHADERPROGRAMVPROC Ptr{Void}
typealias PFNGLBINDPROGRAMPIPELINEPROC Ptr{Void}
typealias PFNGLDELETEPROGRAMPIPELINESPROC Ptr{Void}
typealias PFNGLGENPROGRAMPIPELINESPROC Ptr{Void}
typealias PFNGLISPROGRAMPIPELINEPROC Ptr{Void}
typealias PFNGLGETPROGRAMPIPELINEIVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1IPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1IVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1FPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1DPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1UIPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1UIVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2IPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2IVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2FPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2DPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2UIPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2UIVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3IPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3IVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3FPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3DPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3UIPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3UIVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4IPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4IVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4FPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4DPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4UIPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4UIVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC Ptr{Void}
typealias PFNGLVALIDATEPROGRAMPIPELINEPROC Ptr{Void}
typealias PFNGLGETPROGRAMPIPELINEINFOLOGPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1DPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL2DPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL3DPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL4DPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1DVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL2DVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL3DVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL4DVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBLPOINTERPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBLDVPROC Ptr{Void}
typealias PFNGLVIEWPORTARRAYVPROC Ptr{Void}
typealias PFNGLVIEWPORTINDEXEDFPROC Ptr{Void}
typealias PFNGLVIEWPORTINDEXEDFVPROC Ptr{Void}
typealias PFNGLSCISSORARRAYVPROC Ptr{Void}
typealias PFNGLSCISSORINDEXEDPROC Ptr{Void}
typealias PFNGLSCISSORINDEXEDVPROC Ptr{Void}
typealias PFNGLDEPTHRANGEARRAYVPROC Ptr{Void}
typealias PFNGLDEPTHRANGEINDEXEDPROC Ptr{Void}
typealias PFNGLGETFLOATI_VPROC Ptr{Void}
typealias PFNGLGETDOUBLEI_VPROC Ptr{Void}
typealias PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC Ptr{Void}
typealias PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC Ptr{Void}
typealias PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC Ptr{Void}
typealias PFNGLGETINTERNALFORMATIVPROC Ptr{Void}
typealias PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC Ptr{Void}
typealias PFNGLBINDIMAGETEXTUREPROC Ptr{Void}
typealias PFNGLMEMORYBARRIERPROC Ptr{Void}
typealias PFNGLTEXSTORAGE1DPROC Ptr{Void}
typealias PFNGLTEXSTORAGE2DPROC Ptr{Void}
typealias PFNGLTEXSTORAGE3DPROC Ptr{Void}
typealias PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC Ptr{Void}
typealias PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC Ptr{Void}
typealias GLDEBUGPROC Ptr{Void}
typealias PFNGLCLEARBUFFERDATAPROC Ptr{Void}
typealias PFNGLCLEARBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLDISPATCHCOMPUTEPROC Ptr{Void}
typealias PFNGLDISPATCHCOMPUTEINDIRECTPROC Ptr{Void}
typealias PFNGLCOPYIMAGESUBDATAPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERPARAMETERIPROC Ptr{Void}
typealias PFNGLGETFRAMEBUFFERPARAMETERIVPROC Ptr{Void}
typealias PFNGLGETINTERNALFORMATI64VPROC Ptr{Void}
typealias PFNGLINVALIDATETEXSUBIMAGEPROC Ptr{Void}
typealias PFNGLINVALIDATETEXIMAGEPROC Ptr{Void}
typealias PFNGLINVALIDATEBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLINVALIDATEBUFFERDATAPROC Ptr{Void}
typealias PFNGLINVALIDATEFRAMEBUFFERPROC Ptr{Void}
typealias PFNGLINVALIDATESUBFRAMEBUFFERPROC Ptr{Void}
typealias PFNGLMULTIDRAWARRAYSINDIRECTPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTSINDIRECTPROC Ptr{Void}
typealias PFNGLGETPROGRAMINTERFACEIVPROC Ptr{Void}
typealias PFNGLGETPROGRAMRESOURCEINDEXPROC Ptr{Void}
typealias PFNGLGETPROGRAMRESOURCENAMEPROC Ptr{Void}
typealias PFNGLGETPROGRAMRESOURCEIVPROC Ptr{Void}
typealias PFNGLGETPROGRAMRESOURCELOCATIONPROC Ptr{Void}
typealias PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC Ptr{Void}
typealias PFNGLSHADERSTORAGEBLOCKBINDINGPROC Ptr{Void}
typealias PFNGLTEXBUFFERRANGEPROC Ptr{Void}
typealias PFNGLTEXSTORAGE2DMULTISAMPLEPROC Ptr{Void}
typealias PFNGLTEXSTORAGE3DMULTISAMPLEPROC Ptr{Void}
typealias PFNGLTEXTUREVIEWPROC Ptr{Void}
typealias PFNGLBINDVERTEXBUFFERPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBFORMATPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBIFORMATPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBLFORMATPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBBINDINGPROC Ptr{Void}
typealias PFNGLVERTEXBINDINGDIVISORPROC Ptr{Void}
typealias PFNGLDEBUGMESSAGECONTROLPROC Ptr{Void}
typealias PFNGLDEBUGMESSAGEINSERTPROC Ptr{Void}
typealias PFNGLDEBUGMESSAGECALLBACKPROC Ptr{Void}
typealias PFNGLGETDEBUGMESSAGELOGPROC Ptr{Void}
typealias PFNGLPUSHDEBUGGROUPPROC Ptr{Void}
typealias PFNGLPOPDEBUGGROUPPROC Ptr{Void}
typealias PFNGLOBJECTLABELPROC Ptr{Void}
typealias PFNGLGETOBJECTLABELPROC Ptr{Void}
typealias PFNGLOBJECTPTRLABELPROC Ptr{Void}
typealias PFNGLGETOBJECTPTRLABELPROC Ptr{Void}
typealias PFNGLBUFFERSTORAGEPROC Ptr{Void}
typealias PFNGLCLEARTEXIMAGEPROC Ptr{Void}
typealias PFNGLCLEARTEXSUBIMAGEPROC Ptr{Void}
typealias PFNGLBINDBUFFERSBASEPROC Ptr{Void}
typealias PFNGLBINDBUFFERSRANGEPROC Ptr{Void}
typealias PFNGLBINDTEXTURESPROC Ptr{Void}
typealias PFNGLBINDSAMPLERSPROC Ptr{Void}
typealias PFNGLBINDIMAGETEXTURESPROC Ptr{Void}
typealias PFNGLBINDVERTEXBUFFERSPROC Ptr{Void}
typealias PFNGLCLIPCONTROLPROC Ptr{Void}
typealias PFNGLCREATETRANSFORMFEEDBACKSPROC Ptr{Void}
typealias PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC Ptr{Void}
typealias PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC Ptr{Void}
typealias PFNGLGETTRANSFORMFEEDBACKIVPROC Ptr{Void}
typealias PFNGLGETTRANSFORMFEEDBACKI_VPROC Ptr{Void}
typealias PFNGLGETTRANSFORMFEEDBACKI64_VPROC Ptr{Void}
typealias PFNGLCREATEBUFFERSPROC Ptr{Void}
typealias PFNGLNAMEDBUFFERSTORAGEPROC Ptr{Void}
typealias PFNGLNAMEDBUFFERDATAPROC Ptr{Void}
typealias PFNGLNAMEDBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLCOPYNAMEDBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLCLEARNAMEDBUFFERDATAPROC Ptr{Void}
typealias PFNGLCLEARNAMEDBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLMAPNAMEDBUFFERPROC Ptr{Void}
typealias PFNGLMAPNAMEDBUFFERRANGEPROC Ptr{Void}
typealias PFNGLUNMAPNAMEDBUFFERPROC Ptr{Void}
typealias PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC Ptr{Void}
typealias PFNGLGETNAMEDBUFFERPARAMETERIVPROC Ptr{Void}
typealias PFNGLGETNAMEDBUFFERPARAMETERI64VPROC Ptr{Void}
typealias PFNGLGETNAMEDBUFFERPOINTERVPROC Ptr{Void}
typealias PFNGLGETNAMEDBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLCREATEFRAMEBUFFERSPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERTEXTUREPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC Ptr{Void}
typealias PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC Ptr{Void}
typealias PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC Ptr{Void}
typealias PFNGLCLEARNAMEDFRAMEBUFFERIVPROC Ptr{Void}
typealias PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC Ptr{Void}
typealias PFNGLCLEARNAMEDFRAMEBUFFERFVPROC Ptr{Void}
typealias PFNGLCLEARNAMEDFRAMEBUFFERFIPROC Ptr{Void}
typealias PFNGLBLITNAMEDFRAMEBUFFERPROC Ptr{Void}
typealias PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC Ptr{Void}
typealias PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC Ptr{Void}
typealias PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC Ptr{Void}
typealias PFNGLCREATERENDERBUFFERSPROC Ptr{Void}
typealias PFNGLNAMEDRENDERBUFFERSTORAGEPROC Ptr{Void}
typealias PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC Ptr{Void}
typealias PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC Ptr{Void}
typealias PFNGLCREATETEXTURESPROC Ptr{Void}
typealias PFNGLTEXTUREBUFFERPROC Ptr{Void}
typealias PFNGLTEXTUREBUFFERRANGEPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE1DPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE2DPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE3DPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC Ptr{Void}
typealias PFNGLTEXTURESUBIMAGE1DPROC Ptr{Void}
typealias PFNGLTEXTURESUBIMAGE2DPROC Ptr{Void}
typealias PFNGLTEXTURESUBIMAGE3DPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC Ptr{Void}
typealias PFNGLCOPYTEXTURESUBIMAGE1DPROC Ptr{Void}
typealias PFNGLCOPYTEXTURESUBIMAGE2DPROC Ptr{Void}
typealias PFNGLCOPYTEXTURESUBIMAGE3DPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERFPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERFVPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERIPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERIIVPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERIUIVPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERIVPROC Ptr{Void}
typealias PFNGLGENERATETEXTUREMIPMAPPROC Ptr{Void}
typealias PFNGLBINDTEXTUREUNITPROC Ptr{Void}
typealias PFNGLGETTEXTUREIMAGEPROC Ptr{Void}
typealias PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC Ptr{Void}
typealias PFNGLGETTEXTURELEVELPARAMETERFVPROC Ptr{Void}
typealias PFNGLGETTEXTURELEVELPARAMETERIVPROC Ptr{Void}
typealias PFNGLGETTEXTUREPARAMETERFVPROC Ptr{Void}
typealias PFNGLGETTEXTUREPARAMETERIIVPROC Ptr{Void}
typealias PFNGLGETTEXTUREPARAMETERIUIVPROC Ptr{Void}
typealias PFNGLGETTEXTUREPARAMETERIVPROC Ptr{Void}
typealias PFNGLCREATEVERTEXARRAYSPROC Ptr{Void}
typealias PFNGLDISABLEVERTEXARRAYATTRIBPROC Ptr{Void}
typealias PFNGLENABLEVERTEXARRAYATTRIBPROC Ptr{Void}
typealias PFNGLVERTEXARRAYELEMENTBUFFERPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXBUFFERPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXBUFFERSPROC Ptr{Void}
typealias PFNGLVERTEXARRAYATTRIBBINDINGPROC Ptr{Void}
typealias PFNGLVERTEXARRAYATTRIBFORMATPROC Ptr{Void}
typealias PFNGLVERTEXARRAYATTRIBIFORMATPROC Ptr{Void}
typealias PFNGLVERTEXARRAYATTRIBLFORMATPROC Ptr{Void}
typealias PFNGLVERTEXARRAYBINDINGDIVISORPROC Ptr{Void}
typealias PFNGLGETVERTEXARRAYIVPROC Ptr{Void}
typealias PFNGLGETVERTEXARRAYINDEXEDIVPROC Ptr{Void}
typealias PFNGLGETVERTEXARRAYINDEXED64IVPROC Ptr{Void}
typealias PFNGLCREATESAMPLERSPROC Ptr{Void}
typealias PFNGLCREATEPROGRAMPIPELINESPROC Ptr{Void}
typealias PFNGLCREATEQUERIESPROC Ptr{Void}
typealias PFNGLGETQUERYBUFFEROBJECTI64VPROC Ptr{Void}
typealias PFNGLGETQUERYBUFFEROBJECTIVPROC Ptr{Void}
typealias PFNGLGETQUERYBUFFEROBJECTUI64VPROC Ptr{Void}
typealias PFNGLGETQUERYBUFFEROBJECTUIVPROC Ptr{Void}
typealias PFNGLMEMORYBARRIERBYREGIONPROC Ptr{Void}
typealias PFNGLGETTEXTURESUBIMAGEPROC Ptr{Void}
typealias PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC Ptr{Void}
typealias PFNGLGETGRAPHICSRESETSTATUSPROC Ptr{Void}
typealias PFNGLGETNCOMPRESSEDTEXIMAGEPROC Ptr{Void}
typealias PFNGLGETNTEXIMAGEPROC Ptr{Void}
typealias PFNGLGETNUNIFORMDVPROC Ptr{Void}
typealias PFNGLGETNUNIFORMFVPROC Ptr{Void}
typealias PFNGLGETNUNIFORMIVPROC Ptr{Void}
typealias PFNGLGETNUNIFORMUIVPROC Ptr{Void}
typealias PFNGLREADNPIXELSPROC Ptr{Void}
typealias PFNGLGETNMAPDVPROC Ptr{Void}
typealias PFNGLGETNMAPFVPROC Ptr{Void}
typealias PFNGLGETNMAPIVPROC Ptr{Void}
typealias PFNGLGETNPIXELMAPFVPROC Ptr{Void}
typealias PFNGLGETNPIXELMAPUIVPROC Ptr{Void}
typealias PFNGLGETNPIXELMAPUSVPROC Ptr{Void}
typealias PFNGLGETNPOLYGONSTIPPLEPROC Ptr{Void}
typealias PFNGLGETNCOLORTABLEPROC Ptr{Void}
typealias PFNGLGETNCONVOLUTIONFILTERPROC Ptr{Void}
typealias PFNGLGETNSEPARABLEFILTERPROC Ptr{Void}
typealias PFNGLGETNHISTOGRAMPROC Ptr{Void}
typealias PFNGLGETNMINMAXPROC Ptr{Void}
typealias PFNGLTEXTUREBARRIERPROC Ptr{Void}
typealias PFNGLPRIMITIVEBOUNDINGBOXARBPROC Ptr{Void}
typealias GLuint64EXT UInt64
typealias PFNGLGETTEXTUREHANDLEARBPROC Ptr{Void}
typealias PFNGLGETTEXTURESAMPLERHANDLEARBPROC Ptr{Void}
typealias PFNGLMAKETEXTUREHANDLERESIDENTARBPROC Ptr{Void}
typealias PFNGLMAKETEXTUREHANDLENONRESIDENTARBPROC Ptr{Void}
typealias PFNGLGETIMAGEHANDLEARBPROC Ptr{Void}
typealias PFNGLMAKEIMAGEHANDLERESIDENTARBPROC Ptr{Void}
typealias PFNGLMAKEIMAGEHANDLENONRESIDENTARBPROC Ptr{Void}
typealias PFNGLUNIFORMHANDLEUI64ARBPROC Ptr{Void}
typealias PFNGLUNIFORMHANDLEUI64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMHANDLEUI64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMHANDLEUI64VARBPROC Ptr{Void}
typealias PFNGLISTEXTUREHANDLERESIDENTARBPROC Ptr{Void}
typealias PFNGLISIMAGEHANDLERESIDENTARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1UI64ARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1UI64VARBPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBLUI64VARBPROC Ptr{Void}
typealias _cl_context Void
typealias _cl_event Void
typealias PFNGLCREATESYNCFROMCLEVENTARBPROC Ptr{Void}
typealias PFNGLCLAMPCOLORARBPROC Ptr{Void}
typealias PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC Ptr{Void}
typealias GLDEBUGPROCARB Ptr{Void}
typealias PFNGLDEBUGMESSAGECONTROLARBPROC Ptr{Void}
typealias PFNGLDEBUGMESSAGEINSERTARBPROC Ptr{Void}
typealias PFNGLDEBUGMESSAGECALLBACKARBPROC Ptr{Void}
typealias PFNGLGETDEBUGMESSAGELOGARBPROC Ptr{Void}
typealias PFNGLDRAWBUFFERSARBPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONIARBPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONSEPARATEIARBPROC Ptr{Void}
typealias PFNGLBLENDFUNCIARBPROC Ptr{Void}
typealias PFNGLBLENDFUNCSEPARATEIARBPROC Ptr{Void}
typealias PFNGLDRAWARRAYSINSTANCEDARBPROC Ptr{Void}
typealias PFNGLDRAWELEMENTSINSTANCEDARBPROC Ptr{Void}
typealias PFNGLPROGRAMSTRINGARBPROC Ptr{Void}
typealias PFNGLBINDPROGRAMARBPROC Ptr{Void}
typealias PFNGLDELETEPROGRAMSARBPROC Ptr{Void}
typealias PFNGLGENPROGRAMSARBPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETER4DARBPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETER4DVARBPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETER4FARBPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETER4FVARBPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETER4DARBPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETER4DVARBPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETER4FARBPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETER4FVARBPROC Ptr{Void}
typealias PFNGLGETPROGRAMENVPARAMETERDVARBPROC Ptr{Void}
typealias PFNGLGETPROGRAMENVPARAMETERFVARBPROC Ptr{Void}
typealias PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC Ptr{Void}
typealias PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC Ptr{Void}
typealias PFNGLGETPROGRAMIVARBPROC Ptr{Void}
typealias PFNGLGETPROGRAMSTRINGARBPROC Ptr{Void}
typealias PFNGLISPROGRAMARBPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETERIARBPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTUREARBPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURELAYERARBPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTUREFACEARBPROC Ptr{Void}
typealias PFNGLUNIFORM1I64ARBPROC Ptr{Void}
typealias PFNGLUNIFORM2I64ARBPROC Ptr{Void}
typealias PFNGLUNIFORM3I64ARBPROC Ptr{Void}
typealias PFNGLUNIFORM4I64ARBPROC Ptr{Void}
typealias PFNGLUNIFORM1I64VARBPROC Ptr{Void}
typealias PFNGLUNIFORM2I64VARBPROC Ptr{Void}
typealias PFNGLUNIFORM3I64VARBPROC Ptr{Void}
typealias PFNGLUNIFORM4I64VARBPROC Ptr{Void}
typealias PFNGLUNIFORM1UI64ARBPROC Ptr{Void}
typealias PFNGLUNIFORM2UI64ARBPROC Ptr{Void}
typealias PFNGLUNIFORM3UI64ARBPROC Ptr{Void}
typealias PFNGLUNIFORM4UI64ARBPROC Ptr{Void}
typealias PFNGLUNIFORM1UI64VARBPROC Ptr{Void}
typealias PFNGLUNIFORM2UI64VARBPROC Ptr{Void}
typealias PFNGLUNIFORM3UI64VARBPROC Ptr{Void}
typealias PFNGLUNIFORM4UI64VARBPROC Ptr{Void}
typealias PFNGLGETUNIFORMI64VARBPROC Ptr{Void}
typealias PFNGLGETUNIFORMUI64VARBPROC Ptr{Void}
typealias PFNGLGETNUNIFORMI64VARBPROC Ptr{Void}
typealias PFNGLGETNUNIFORMUI64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1I64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2I64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3I64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4I64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1I64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2I64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3I64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4I64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1UI64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2UI64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3UI64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4UI64ARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1UI64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2UI64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3UI64VARBPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4UI64VARBPROC Ptr{Void}
typealias GLhalfARB UInt16
typealias PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBDIVISORARBPROC Ptr{Void}
typealias PFNGLCURRENTPALETTEMATRIXARBPROC Ptr{Void}
typealias PFNGLMATRIXINDEXUBVARBPROC Ptr{Void}
typealias PFNGLMATRIXINDEXUSVARBPROC Ptr{Void}
typealias PFNGLMATRIXINDEXUIVARBPROC Ptr{Void}
typealias PFNGLMATRIXINDEXPOINTERARBPROC Ptr{Void}
typealias PFNGLSAMPLECOVERAGEARBPROC Ptr{Void}
typealias PFNGLGENQUERIESARBPROC Ptr{Void}
typealias PFNGLDELETEQUERIESARBPROC Ptr{Void}
typealias PFNGLISQUERYARBPROC Ptr{Void}
typealias PFNGLBEGINQUERYARBPROC Ptr{Void}
typealias PFNGLENDQUERYARBPROC Ptr{Void}
typealias PFNGLGETQUERYIVARBPROC Ptr{Void}
typealias PFNGLGETQUERYOBJECTIVARBPROC Ptr{Void}
typealias PFNGLGETQUERYOBJECTUIVARBPROC Ptr{Void}
typealias PFNGLMAXSHADERCOMPILERTHREADSARBPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERFARBPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERFVARBPROC Ptr{Void}
typealias PFNGLGETGRAPHICSRESETSTATUSARBPROC Ptr{Void}
typealias PFNGLGETNTEXIMAGEARBPROC Ptr{Void}
typealias PFNGLREADNPIXELSARBPROC Ptr{Void}
typealias PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC Ptr{Void}
typealias PFNGLGETNUNIFORMFVARBPROC Ptr{Void}
typealias PFNGLGETNUNIFORMIVARBPROC Ptr{Void}
typealias PFNGLGETNUNIFORMUIVARBPROC Ptr{Void}
typealias PFNGLGETNUNIFORMDVARBPROC Ptr{Void}
typealias PFNGLGETNMAPDVARBPROC Ptr{Void}
typealias PFNGLGETNMAPFVARBPROC Ptr{Void}
typealias PFNGLGETNMAPIVARBPROC Ptr{Void}
typealias PFNGLGETNPIXELMAPFVARBPROC Ptr{Void}
typealias PFNGLGETNPIXELMAPUIVARBPROC Ptr{Void}
typealias PFNGLGETNPIXELMAPUSVARBPROC Ptr{Void}
typealias PFNGLGETNPOLYGONSTIPPLEARBPROC Ptr{Void}
typealias PFNGLGETNCOLORTABLEARBPROC Ptr{Void}
typealias PFNGLGETNCONVOLUTIONFILTERARBPROC Ptr{Void}
typealias PFNGLGETNSEPARABLEFILTERARBPROC Ptr{Void}
typealias PFNGLGETNHISTOGRAMARBPROC Ptr{Void}
typealias PFNGLGETNMINMAXARBPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERSAMPLELOCATIONSFVARBPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERSAMPLELOCATIONSFVARBPROC Ptr{Void}
typealias PFNGLEVALUATEDEPTHVALUESARBPROC Ptr{Void}
typealias PFNGLMINSAMPLESHADINGARBPROC Ptr{Void}
typealias GLhandleARB UInt32
typealias GLcharARB UInt8
typealias PFNGLDELETEOBJECTARBPROC Ptr{Void}
typealias PFNGLGETHANDLEARBPROC Ptr{Void}
typealias PFNGLDETACHOBJECTARBPROC Ptr{Void}
typealias PFNGLCREATESHADEROBJECTARBPROC Ptr{Void}
typealias PFNGLSHADERSOURCEARBPROC Ptr{Void}
typealias PFNGLCOMPILESHADERARBPROC Ptr{Void}
typealias PFNGLCREATEPROGRAMOBJECTARBPROC Ptr{Void}
typealias PFNGLATTACHOBJECTARBPROC Ptr{Void}
typealias PFNGLLINKPROGRAMARBPROC Ptr{Void}
typealias PFNGLUSEPROGRAMOBJECTARBPROC Ptr{Void}
typealias PFNGLVALIDATEPROGRAMARBPROC Ptr{Void}
typealias PFNGLUNIFORM1FARBPROC Ptr{Void}
typealias PFNGLUNIFORM2FARBPROC Ptr{Void}
typealias PFNGLUNIFORM3FARBPROC Ptr{Void}
typealias PFNGLUNIFORM4FARBPROC Ptr{Void}
typealias PFNGLUNIFORM1IARBPROC Ptr{Void}
typealias PFNGLUNIFORM2IARBPROC Ptr{Void}
typealias PFNGLUNIFORM3IARBPROC Ptr{Void}
typealias PFNGLUNIFORM4IARBPROC Ptr{Void}
typealias PFNGLUNIFORM1FVARBPROC Ptr{Void}
typealias PFNGLUNIFORM2FVARBPROC Ptr{Void}
typealias PFNGLUNIFORM3FVARBPROC Ptr{Void}
typealias PFNGLUNIFORM4FVARBPROC Ptr{Void}
typealias PFNGLUNIFORM1IVARBPROC Ptr{Void}
typealias PFNGLUNIFORM2IVARBPROC Ptr{Void}
typealias PFNGLUNIFORM3IVARBPROC Ptr{Void}
typealias PFNGLUNIFORM4IVARBPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX2FVARBPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX3FVARBPROC Ptr{Void}
typealias PFNGLUNIFORMMATRIX4FVARBPROC Ptr{Void}
typealias PFNGLGETOBJECTPARAMETERFVARBPROC Ptr{Void}
typealias PFNGLGETOBJECTPARAMETERIVARBPROC Ptr{Void}
typealias PFNGLGETINFOLOGARBPROC Ptr{Void}
typealias PFNGLGETATTACHEDOBJECTSARBPROC Ptr{Void}
typealias PFNGLGETUNIFORMLOCATIONARBPROC Ptr{Void}
typealias PFNGLGETACTIVEUNIFORMARBPROC Ptr{Void}
typealias PFNGLGETUNIFORMFVARBPROC Ptr{Void}
typealias PFNGLGETUNIFORMIVARBPROC Ptr{Void}
typealias PFNGLGETSHADERSOURCEARBPROC Ptr{Void}
typealias PFNGLNAMEDSTRINGARBPROC Ptr{Void}
typealias PFNGLDELETENAMEDSTRINGARBPROC Ptr{Void}
typealias PFNGLCOMPILESHADERINCLUDEARBPROC Ptr{Void}
typealias PFNGLISNAMEDSTRINGARBPROC Ptr{Void}
typealias PFNGLGETNAMEDSTRINGARBPROC Ptr{Void}
typealias PFNGLGETNAMEDSTRINGIVARBPROC Ptr{Void}
typealias PFNGLBUFFERPAGECOMMITMENTARBPROC Ptr{Void}
typealias PFNGLNAMEDBUFFERPAGECOMMITMENTEXTPROC Ptr{Void}
typealias PFNGLNAMEDBUFFERPAGECOMMITMENTARBPROC Ptr{Void}
typealias PFNGLTEXPAGECOMMITMENTARBPROC Ptr{Void}
typealias PFNGLTEXBUFFERARBPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXIMAGE3DARBPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXIMAGE2DARBPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXIMAGE1DARBPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC Ptr{Void}
typealias PFNGLGETCOMPRESSEDTEXIMAGEARBPROC Ptr{Void}
typealias PFNGLLOADTRANSPOSEMATRIXFARBPROC Ptr{Void}
typealias PFNGLLOADTRANSPOSEMATRIXDARBPROC Ptr{Void}
typealias PFNGLMULTTRANSPOSEMATRIXFARBPROC Ptr{Void}
typealias PFNGLMULTTRANSPOSEMATRIXDARBPROC Ptr{Void}
typealias PFNGLWEIGHTBVARBPROC Ptr{Void}
typealias PFNGLWEIGHTSVARBPROC Ptr{Void}
typealias PFNGLWEIGHTIVARBPROC Ptr{Void}
typealias PFNGLWEIGHTFVARBPROC Ptr{Void}
typealias PFNGLWEIGHTDVARBPROC Ptr{Void}
typealias PFNGLWEIGHTUBVARBPROC Ptr{Void}
typealias PFNGLWEIGHTUSVARBPROC Ptr{Void}
typealias PFNGLWEIGHTUIVARBPROC Ptr{Void}
typealias PFNGLWEIGHTPOINTERARBPROC Ptr{Void}
typealias PFNGLVERTEXBLENDARBPROC Ptr{Void}
typealias GLsizeiptrARB Cint
typealias GLintptrARB Cint
typealias PFNGLBINDBUFFERARBPROC Ptr{Void}
typealias PFNGLDELETEBUFFERSARBPROC Ptr{Void}
typealias PFNGLGENBUFFERSARBPROC Ptr{Void}
typealias PFNGLISBUFFERARBPROC Ptr{Void}
typealias PFNGLBUFFERDATAARBPROC Ptr{Void}
typealias PFNGLBUFFERSUBDATAARBPROC Ptr{Void}
typealias PFNGLGETBUFFERSUBDATAARBPROC Ptr{Void}
typealias PFNGLMAPBUFFERARBPROC Ptr{Void}
typealias PFNGLUNMAPBUFFERARBPROC Ptr{Void}
typealias PFNGLGETBUFFERPARAMETERIVARBPROC Ptr{Void}
typealias PFNGLGETBUFFERPOINTERVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1DARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1DVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1FARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1FVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1SARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1SVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2DARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2DVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2FARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2FVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2SARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2SVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3DARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3DVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3FARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3FVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3SARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3SVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NBVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NIVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NSVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NUBARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NUBVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NUIVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4NUSVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4BVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4DARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4DVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4FARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4FVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4IVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4SARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4SVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4UBVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4UIVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4USVARBPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBPOINTERARBPROC Ptr{Void}
typealias PFNGLENABLEVERTEXATTRIBARRAYARBPROC Ptr{Void}
typealias PFNGLDISABLEVERTEXATTRIBARRAYARBPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBDVARBPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBFVARBPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBIVARBPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBPOINTERVARBPROC Ptr{Void}
typealias PFNGLBINDATTRIBLOCATIONARBPROC Ptr{Void}
typealias PFNGLGETACTIVEATTRIBARBPROC Ptr{Void}
typealias PFNGLGETATTRIBLOCATIONARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS2DARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS2DVARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS2FARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS2FVARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS2IARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS2IVARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS2SARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS2SVARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS3DARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS3DVARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS3FARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS3FVARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS3IARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS3IVARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS3SARBPROC Ptr{Void}
typealias PFNGLWINDOWPOS3SVARBPROC Ptr{Void}
typealias PFNGLBLENDBARRIERKHRPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1BOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1BVOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2BOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2BVOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3BOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3BVOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4BOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4BVOESPROC Ptr{Void}
typealias PFNGLTEXCOORD1BOESPROC Ptr{Void}
typealias PFNGLTEXCOORD1BVOESPROC Ptr{Void}
typealias PFNGLTEXCOORD2BOESPROC Ptr{Void}
typealias PFNGLTEXCOORD2BVOESPROC Ptr{Void}
typealias PFNGLTEXCOORD3BOESPROC Ptr{Void}
typealias PFNGLTEXCOORD3BVOESPROC Ptr{Void}
typealias PFNGLTEXCOORD4BOESPROC Ptr{Void}
typealias PFNGLTEXCOORD4BVOESPROC Ptr{Void}
typealias PFNGLVERTEX2BOESPROC Ptr{Void}
typealias PFNGLVERTEX2BVOESPROC Ptr{Void}
typealias PFNGLVERTEX3BOESPROC Ptr{Void}
typealias PFNGLVERTEX3BVOESPROC Ptr{Void}
typealias PFNGLVERTEX4BOESPROC Ptr{Void}
typealias PFNGLVERTEX4BVOESPROC Ptr{Void}
typealias GLfixed GLint
typealias PFNGLALPHAFUNCXOESPROC Ptr{Void}
typealias PFNGLCLEARCOLORXOESPROC Ptr{Void}
typealias PFNGLCLEARDEPTHXOESPROC Ptr{Void}
typealias PFNGLCLIPPLANEXOESPROC Ptr{Void}
typealias PFNGLCOLOR4XOESPROC Ptr{Void}
typealias PFNGLDEPTHRANGEXOESPROC Ptr{Void}
typealias PFNGLFOGXOESPROC Ptr{Void}
typealias PFNGLFOGXVOESPROC Ptr{Void}
typealias PFNGLFRUSTUMXOESPROC Ptr{Void}
typealias PFNGLGETCLIPPLANEXOESPROC Ptr{Void}
typealias PFNGLGETFIXEDVOESPROC Ptr{Void}
typealias PFNGLGETTEXENVXVOESPROC Ptr{Void}
typealias PFNGLGETTEXPARAMETERXVOESPROC Ptr{Void}
typealias PFNGLLIGHTMODELXOESPROC Ptr{Void}
typealias PFNGLLIGHTMODELXVOESPROC Ptr{Void}
typealias PFNGLLIGHTXOESPROC Ptr{Void}
typealias PFNGLLIGHTXVOESPROC Ptr{Void}
typealias PFNGLLINEWIDTHXOESPROC Ptr{Void}
typealias PFNGLLOADMATRIXXOESPROC Ptr{Void}
typealias PFNGLMATERIALXOESPROC Ptr{Void}
typealias PFNGLMATERIALXVOESPROC Ptr{Void}
typealias PFNGLMULTMATRIXXOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4XOESPROC Ptr{Void}
typealias PFNGLNORMAL3XOESPROC Ptr{Void}
typealias PFNGLORTHOXOESPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERXVOESPROC Ptr{Void}
typealias PFNGLPOINTSIZEXOESPROC Ptr{Void}
typealias PFNGLPOLYGONOFFSETXOESPROC Ptr{Void}
typealias PFNGLROTATEXOESPROC Ptr{Void}
typealias PFNGLSCALEXOESPROC Ptr{Void}
typealias PFNGLTEXENVXOESPROC Ptr{Void}
typealias PFNGLTEXENVXVOESPROC Ptr{Void}
typealias PFNGLTEXPARAMETERXOESPROC Ptr{Void}
typealias PFNGLTEXPARAMETERXVOESPROC Ptr{Void}
typealias PFNGLTRANSLATEXOESPROC Ptr{Void}
typealias PFNGLACCUMXOESPROC Ptr{Void}
typealias PFNGLBITMAPXOESPROC Ptr{Void}
typealias PFNGLBLENDCOLORXOESPROC Ptr{Void}
typealias PFNGLCLEARACCUMXOESPROC Ptr{Void}
typealias PFNGLCOLOR3XOESPROC Ptr{Void}
typealias PFNGLCOLOR3XVOESPROC Ptr{Void}
typealias PFNGLCOLOR4XVOESPROC Ptr{Void}
typealias PFNGLCONVOLUTIONPARAMETERXOESPROC Ptr{Void}
typealias PFNGLCONVOLUTIONPARAMETERXVOESPROC Ptr{Void}
typealias PFNGLEVALCOORD1XOESPROC Ptr{Void}
typealias PFNGLEVALCOORD1XVOESPROC Ptr{Void}
typealias PFNGLEVALCOORD2XOESPROC Ptr{Void}
typealias PFNGLEVALCOORD2XVOESPROC Ptr{Void}
typealias PFNGLFEEDBACKBUFFERXOESPROC Ptr{Void}
typealias PFNGLGETCONVOLUTIONPARAMETERXVOESPROC Ptr{Void}
typealias PFNGLGETHISTOGRAMPARAMETERXVOESPROC Ptr{Void}
typealias PFNGLGETLIGHTXOESPROC Ptr{Void}
typealias PFNGLGETMAPXVOESPROC Ptr{Void}
typealias PFNGLGETMATERIALXOESPROC Ptr{Void}
typealias PFNGLGETPIXELMAPXVPROC Ptr{Void}
typealias PFNGLGETTEXGENXVOESPROC Ptr{Void}
typealias PFNGLGETTEXLEVELPARAMETERXVOESPROC Ptr{Void}
typealias PFNGLINDEXXOESPROC Ptr{Void}
typealias PFNGLINDEXXVOESPROC Ptr{Void}
typealias PFNGLLOADTRANSPOSEMATRIXXOESPROC Ptr{Void}
typealias PFNGLMAP1XOESPROC Ptr{Void}
typealias PFNGLMAP2XOESPROC Ptr{Void}
typealias PFNGLMAPGRID1XOESPROC Ptr{Void}
typealias PFNGLMAPGRID2XOESPROC Ptr{Void}
typealias PFNGLMULTTRANSPOSEMATRIXXOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1XOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1XVOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2XOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2XVOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3XOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3XVOESPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4XVOESPROC Ptr{Void}
typealias PFNGLNORMAL3XVOESPROC Ptr{Void}
typealias PFNGLPASSTHROUGHXOESPROC Ptr{Void}
typealias PFNGLPIXELMAPXPROC Ptr{Void}
typealias PFNGLPIXELSTOREXPROC Ptr{Void}
typealias PFNGLPIXELTRANSFERXOESPROC Ptr{Void}
typealias PFNGLPIXELZOOMXOESPROC Ptr{Void}
typealias PFNGLPRIORITIZETEXTURESXOESPROC Ptr{Void}
typealias PFNGLRASTERPOS2XOESPROC Ptr{Void}
typealias PFNGLRASTERPOS2XVOESPROC Ptr{Void}
typealias PFNGLRASTERPOS3XOESPROC Ptr{Void}
typealias PFNGLRASTERPOS3XVOESPROC Ptr{Void}
typealias PFNGLRASTERPOS4XOESPROC Ptr{Void}
typealias PFNGLRASTERPOS4XVOESPROC Ptr{Void}
typealias PFNGLRECTXOESPROC Ptr{Void}
typealias PFNGLRECTXVOESPROC Ptr{Void}
typealias PFNGLTEXCOORD1XOESPROC Ptr{Void}
typealias PFNGLTEXCOORD1XVOESPROC Ptr{Void}
typealias PFNGLTEXCOORD2XOESPROC Ptr{Void}
typealias PFNGLTEXCOORD2XVOESPROC Ptr{Void}
typealias PFNGLTEXCOORD3XOESPROC Ptr{Void}
typealias PFNGLTEXCOORD3XVOESPROC Ptr{Void}
typealias PFNGLTEXCOORD4XOESPROC Ptr{Void}
typealias PFNGLTEXCOORD4XVOESPROC Ptr{Void}
typealias PFNGLTEXGENXOESPROC Ptr{Void}
typealias PFNGLTEXGENXVOESPROC Ptr{Void}
typealias PFNGLVERTEX2XOESPROC Ptr{Void}
typealias PFNGLVERTEX2XVOESPROC Ptr{Void}
typealias PFNGLVERTEX3XOESPROC Ptr{Void}
typealias PFNGLVERTEX3XVOESPROC Ptr{Void}
typealias PFNGLVERTEX4XOESPROC Ptr{Void}
typealias PFNGLVERTEX4XVOESPROC Ptr{Void}
typealias PFNGLQUERYMATRIXXOESPROC Ptr{Void}
typealias PFNGLCLEARDEPTHFOESPROC Ptr{Void}
typealias PFNGLCLIPPLANEFOESPROC Ptr{Void}
typealias PFNGLDEPTHRANGEFOESPROC Ptr{Void}
typealias PFNGLFRUSTUMFOESPROC Ptr{Void}
typealias PFNGLGETCLIPPLANEFOESPROC Ptr{Void}
typealias PFNGLORTHOFOESPROC Ptr{Void}
typealias PFNGLTBUFFERMASK3DFXPROC Ptr{Void}
typealias GLDEBUGPROCAMD Ptr{Void}
typealias PFNGLDEBUGMESSAGEENABLEAMDPROC Ptr{Void}
typealias PFNGLDEBUGMESSAGEINSERTAMDPROC Ptr{Void}
typealias PFNGLDEBUGMESSAGECALLBACKAMDPROC Ptr{Void}
typealias PFNGLGETDEBUGMESSAGELOGAMDPROC Ptr{Void}
typealias PFNGLBLENDFUNCINDEXEDAMDPROC Ptr{Void}
typealias PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONINDEXEDAMDPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC Ptr{Void}
typealias GLint64EXT Int64
typealias PFNGLUNIFORM1I64NVPROC Ptr{Void}
typealias PFNGLUNIFORM2I64NVPROC Ptr{Void}
typealias PFNGLUNIFORM3I64NVPROC Ptr{Void}
typealias PFNGLUNIFORM4I64NVPROC Ptr{Void}
typealias PFNGLUNIFORM1I64VNVPROC Ptr{Void}
typealias PFNGLUNIFORM2I64VNVPROC Ptr{Void}
typealias PFNGLUNIFORM3I64VNVPROC Ptr{Void}
typealias PFNGLUNIFORM4I64VNVPROC Ptr{Void}
typealias PFNGLUNIFORM1UI64NVPROC Ptr{Void}
typealias PFNGLUNIFORM2UI64NVPROC Ptr{Void}
typealias PFNGLUNIFORM3UI64NVPROC Ptr{Void}
typealias PFNGLUNIFORM4UI64NVPROC Ptr{Void}
typealias PFNGLUNIFORM1UI64VNVPROC Ptr{Void}
typealias PFNGLUNIFORM2UI64VNVPROC Ptr{Void}
typealias PFNGLUNIFORM3UI64VNVPROC Ptr{Void}
typealias PFNGLUNIFORM4UI64VNVPROC Ptr{Void}
typealias PFNGLGETUNIFORMI64VNVPROC Ptr{Void}
typealias PFNGLGETUNIFORMUI64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1I64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2I64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3I64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4I64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1I64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2I64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3I64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4I64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1UI64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2UI64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3UI64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4UI64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1UI64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2UI64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3UI64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4UI64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBPARAMETERIAMDPROC Ptr{Void}
typealias PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC Ptr{Void}
typealias PFNGLGENNAMESAMDPROC Ptr{Void}
typealias PFNGLDELETENAMESAMDPROC Ptr{Void}
typealias PFNGLISNAMEAMDPROC Ptr{Void}
typealias PFNGLQUERYOBJECTPARAMETERUIAMDPROC Ptr{Void}
typealias PFNGLGETPERFMONITORGROUPSAMDPROC Ptr{Void}
typealias PFNGLGETPERFMONITORCOUNTERSAMDPROC Ptr{Void}
typealias PFNGLGETPERFMONITORGROUPSTRINGAMDPROC Ptr{Void}
typealias PFNGLGETPERFMONITORCOUNTERSTRINGAMDPROC Ptr{Void}
typealias PFNGLGETPERFMONITORCOUNTERINFOAMDPROC Ptr{Void}
typealias PFNGLGENPERFMONITORSAMDPROC Ptr{Void}
typealias PFNGLDELETEPERFMONITORSAMDPROC Ptr{Void}
typealias PFNGLSELECTPERFMONITORCOUNTERSAMDPROC Ptr{Void}
typealias PFNGLBEGINPERFMONITORAMDPROC Ptr{Void}
typealias PFNGLENDPERFMONITORAMDPROC Ptr{Void}
typealias PFNGLGETPERFMONITORCOUNTERDATAAMDPROC Ptr{Void}
typealias PFNGLSETMULTISAMPLEFVAMDPROC Ptr{Void}
typealias PFNGLTEXSTORAGESPARSEAMDPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGESPARSEAMDPROC Ptr{Void}
typealias PFNGLSTENCILOPVALUEAMDPROC Ptr{Void}
typealias PFNGLTESSELLATIONFACTORAMDPROC Ptr{Void}
typealias PFNGLTESSELLATIONMODEAMDPROC Ptr{Void}
typealias PFNGLELEMENTPOINTERAPPLEPROC Ptr{Void}
typealias PFNGLDRAWELEMENTARRAYAPPLEPROC Ptr{Void}
typealias PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC Ptr{Void}
typealias PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC Ptr{Void}
typealias PFNGLGENFENCESAPPLEPROC Ptr{Void}
typealias PFNGLDELETEFENCESAPPLEPROC Ptr{Void}
typealias PFNGLSETFENCEAPPLEPROC Ptr{Void}
typealias PFNGLISFENCEAPPLEPROC Ptr{Void}
typealias PFNGLTESTFENCEAPPLEPROC Ptr{Void}
typealias PFNGLFINISHFENCEAPPLEPROC Ptr{Void}
typealias PFNGLTESTOBJECTAPPLEPROC Ptr{Void}
typealias PFNGLFINISHOBJECTAPPLEPROC Ptr{Void}
typealias PFNGLBUFFERPARAMETERIAPPLEPROC Ptr{Void}
typealias PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC Ptr{Void}
typealias PFNGLOBJECTPURGEABLEAPPLEPROC Ptr{Void}
typealias PFNGLOBJECTUNPURGEABLEAPPLEPROC Ptr{Void}
typealias PFNGLGETOBJECTPARAMETERIVAPPLEPROC Ptr{Void}
typealias PFNGLTEXTURERANGEAPPLEPROC Ptr{Void}
typealias PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC Ptr{Void}
typealias PFNGLBINDVERTEXARRAYAPPLEPROC Ptr{Void}
typealias PFNGLDELETEVERTEXARRAYSAPPLEPROC Ptr{Void}
typealias PFNGLGENVERTEXARRAYSAPPLEPROC Ptr{Void}
typealias PFNGLISVERTEXARRAYAPPLEPROC Ptr{Void}
typealias PFNGLVERTEXARRAYRANGEAPPLEPROC Ptr{Void}
typealias PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC Ptr{Void}
typealias PFNGLVERTEXARRAYPARAMETERIAPPLEPROC Ptr{Void}
typealias PFNGLENABLEVERTEXATTRIBAPPLEPROC Ptr{Void}
typealias PFNGLDISABLEVERTEXATTRIBAPPLEPROC Ptr{Void}
typealias PFNGLISVERTEXATTRIBENABLEDAPPLEPROC Ptr{Void}
typealias PFNGLMAPVERTEXATTRIB1DAPPLEPROC Ptr{Void}
typealias PFNGLMAPVERTEXATTRIB1FAPPLEPROC Ptr{Void}
typealias PFNGLMAPVERTEXATTRIB2DAPPLEPROC Ptr{Void}
typealias PFNGLMAPVERTEXATTRIB2FAPPLEPROC Ptr{Void}
typealias PFNGLDRAWBUFFERSATIPROC Ptr{Void}
typealias PFNGLELEMENTPOINTERATIPROC Ptr{Void}
typealias PFNGLDRAWELEMENTARRAYATIPROC Ptr{Void}
typealias PFNGLDRAWRANGEELEMENTARRAYATIPROC Ptr{Void}
typealias PFNGLTEXBUMPPARAMETERIVATIPROC Ptr{Void}
typealias PFNGLTEXBUMPPARAMETERFVATIPROC Ptr{Void}
typealias PFNGLGETTEXBUMPPARAMETERIVATIPROC Ptr{Void}
typealias PFNGLGETTEXBUMPPARAMETERFVATIPROC Ptr{Void}
typealias PFNGLGENFRAGMENTSHADERSATIPROC Ptr{Void}
typealias PFNGLBINDFRAGMENTSHADERATIPROC Ptr{Void}
typealias PFNGLDELETEFRAGMENTSHADERATIPROC Ptr{Void}
typealias PFNGLBEGINFRAGMENTSHADERATIPROC Ptr{Void}
typealias PFNGLENDFRAGMENTSHADERATIPROC Ptr{Void}
typealias PFNGLPASSTEXCOORDATIPROC Ptr{Void}
typealias PFNGLSAMPLEMAPATIPROC Ptr{Void}
typealias PFNGLCOLORFRAGMENTOP1ATIPROC Ptr{Void}
typealias PFNGLCOLORFRAGMENTOP2ATIPROC Ptr{Void}
typealias PFNGLCOLORFRAGMENTOP3ATIPROC Ptr{Void}
typealias PFNGLALPHAFRAGMENTOP1ATIPROC Ptr{Void}
typealias PFNGLALPHAFRAGMENTOP2ATIPROC Ptr{Void}
typealias PFNGLALPHAFRAGMENTOP3ATIPROC Ptr{Void}
typealias PFNGLSETFRAGMENTSHADERCONSTANTATIPROC Ptr{Void}
typealias PFNGLMAPOBJECTBUFFERATIPROC Ptr{Void}
typealias PFNGLUNMAPOBJECTBUFFERATIPROC Ptr{Void}
typealias PFNGLPNTRIANGLESIATIPROC Ptr{Void}
typealias PFNGLPNTRIANGLESFATIPROC Ptr{Void}
typealias PFNGLSTENCILOPSEPARATEATIPROC Ptr{Void}
typealias PFNGLSTENCILFUNCSEPARATEATIPROC Ptr{Void}
typealias PFNGLNEWOBJECTBUFFERATIPROC Ptr{Void}
typealias PFNGLISOBJECTBUFFERATIPROC Ptr{Void}
typealias PFNGLUPDATEOBJECTBUFFERATIPROC Ptr{Void}
typealias PFNGLGETOBJECTBUFFERFVATIPROC Ptr{Void}
typealias PFNGLGETOBJECTBUFFERIVATIPROC Ptr{Void}
typealias PFNGLFREEOBJECTBUFFERATIPROC Ptr{Void}
typealias PFNGLARRAYOBJECTATIPROC Ptr{Void}
typealias PFNGLGETARRAYOBJECTFVATIPROC Ptr{Void}
typealias PFNGLGETARRAYOBJECTIVATIPROC Ptr{Void}
typealias PFNGLVARIANTARRAYOBJECTATIPROC Ptr{Void}
typealias PFNGLGETVARIANTARRAYOBJECTFVATIPROC Ptr{Void}
typealias PFNGLGETVARIANTARRAYOBJECTIVATIPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBARRAYOBJECTATIPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM1SATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM1SVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM1IATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM1IVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM1FATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM1FVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM1DATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM1DVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM2SATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM2SVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM2IATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM2IVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM2FATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM2FVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM2DATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM2DVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM3SATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM3SVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM3IATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM3IVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM3FATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM3FVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM3DATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM3DVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM4SATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM4SVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM4IATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM4IVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM4FATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM4FVATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM4DATIPROC Ptr{Void}
typealias PFNGLVERTEXSTREAM4DVATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3BATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3BVATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3SATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3SVATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3IATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3IVATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3FATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3FVATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3DATIPROC Ptr{Void}
typealias PFNGLNORMALSTREAM3DVATIPROC Ptr{Void}
typealias PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC Ptr{Void}
typealias PFNGLVERTEXBLENDENVIATIPROC Ptr{Void}
typealias PFNGLVERTEXBLENDENVFATIPROC Ptr{Void}
typealias PFNGLUNIFORMBUFFEREXTPROC Ptr{Void}
typealias PFNGLGETUNIFORMBUFFERSIZEEXTPROC Ptr{Void}
typealias PFNGLGETUNIFORMOFFSETEXTPROC Ptr{Void}
typealias PFNGLBLENDCOLOREXTPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONSEPARATEEXTPROC Ptr{Void}
typealias PFNGLBLENDFUNCSEPARATEEXTPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONEXTPROC Ptr{Void}
typealias PFNGLCOLORSUBTABLEEXTPROC Ptr{Void}
typealias PFNGLCOPYCOLORSUBTABLEEXTPROC Ptr{Void}
typealias PFNGLLOCKARRAYSEXTPROC Ptr{Void}
typealias PFNGLUNLOCKARRAYSEXTPROC Ptr{Void}
typealias PFNGLCONVOLUTIONFILTER1DEXTPROC Ptr{Void}
typealias PFNGLCONVOLUTIONFILTER2DEXTPROC Ptr{Void}
typealias PFNGLCONVOLUTIONPARAMETERFEXTPROC Ptr{Void}
typealias PFNGLCONVOLUTIONPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLCONVOLUTIONPARAMETERIEXTPROC Ptr{Void}
typealias PFNGLCONVOLUTIONPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC Ptr{Void}
typealias PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC Ptr{Void}
typealias PFNGLGETCONVOLUTIONFILTEREXTPROC Ptr{Void}
typealias PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGETSEPARABLEFILTEREXTPROC Ptr{Void}
typealias PFNGLSEPARABLEFILTER2DEXTPROC Ptr{Void}
typealias PFNGLTANGENT3BEXTPROC Ptr{Void}
typealias PFNGLTANGENT3BVEXTPROC Ptr{Void}
typealias PFNGLTANGENT3DEXTPROC Ptr{Void}
typealias PFNGLTANGENT3DVEXTPROC Ptr{Void}
typealias PFNGLTANGENT3FEXTPROC Ptr{Void}
typealias PFNGLTANGENT3FVEXTPROC Ptr{Void}
typealias PFNGLTANGENT3IEXTPROC Ptr{Void}
typealias PFNGLTANGENT3IVEXTPROC Ptr{Void}
typealias PFNGLTANGENT3SEXTPROC Ptr{Void}
typealias PFNGLTANGENT3SVEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3BEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3BVEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3DEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3DVEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3FEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3FVEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3IEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3IVEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3SEXTPROC Ptr{Void}
typealias PFNGLBINORMAL3SVEXTPROC Ptr{Void}
typealias PFNGLTANGENTPOINTEREXTPROC Ptr{Void}
typealias PFNGLBINORMALPOINTEREXTPROC Ptr{Void}
typealias PFNGLCOPYTEXIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXSUBIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXSUBIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXSUBIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLCULLPARAMETERDVEXTPROC Ptr{Void}
typealias PFNGLCULLPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLLABELOBJECTEXTPROC Ptr{Void}
typealias PFNGLGETOBJECTLABELEXTPROC Ptr{Void}
typealias PFNGLINSERTEVENTMARKEREXTPROC Ptr{Void}
typealias PFNGLPUSHGROUPMARKEREXTPROC Ptr{Void}
typealias PFNGLPOPGROUPMARKEREXTPROC Ptr{Void}
typealias PFNGLDEPTHBOUNDSEXTPROC Ptr{Void}
typealias PFNGLMATRIXLOADFEXTPROC Ptr{Void}
typealias PFNGLMATRIXLOADDEXTPROC Ptr{Void}
typealias PFNGLMATRIXMULTFEXTPROC Ptr{Void}
typealias PFNGLMATRIXMULTDEXTPROC Ptr{Void}
typealias PFNGLMATRIXLOADIDENTITYEXTPROC Ptr{Void}
typealias PFNGLMATRIXROTATEFEXTPROC Ptr{Void}
typealias PFNGLMATRIXROTATEDEXTPROC Ptr{Void}
typealias PFNGLMATRIXSCALEFEXTPROC Ptr{Void}
typealias PFNGLMATRIXSCALEDEXTPROC Ptr{Void}
typealias PFNGLMATRIXTRANSLATEFEXTPROC Ptr{Void}
typealias PFNGLMATRIXTRANSLATEDEXTPROC Ptr{Void}
typealias PFNGLMATRIXFRUSTUMEXTPROC Ptr{Void}
typealias PFNGLMATRIXORTHOEXTPROC Ptr{Void}
typealias PFNGLMATRIXPOPEXTPROC Ptr{Void}
typealias PFNGLMATRIXPUSHEXTPROC Ptr{Void}
typealias PFNGLCLIENTATTRIBDEFAULTEXTPROC Ptr{Void}
typealias PFNGLPUSHCLIENTATTRIBDEFAULTEXTPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERFEXTPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERIEXTPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLTEXTUREIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLTEXTUREIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLTEXTURESUBIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLTEXTURESUBIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXTUREIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXTUREIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXTURESUBIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXTURESUBIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLGETTEXTUREIMAGEEXTPROC Ptr{Void}
typealias PFNGLGETTEXTUREPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETTEXTUREPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGETTEXTURELEVELPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETTEXTURELEVELPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLTEXTUREIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLTEXTURESUBIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLCOPYTEXTURESUBIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLBINDMULTITEXTUREEXTPROC Ptr{Void}
typealias PFNGLMULTITEXCOORDPOINTEREXTPROC Ptr{Void}
typealias PFNGLMULTITEXENVFEXTPROC Ptr{Void}
typealias PFNGLMULTITEXENVFVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXENVIEXTPROC Ptr{Void}
typealias PFNGLMULTITEXENVIVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXGENDEXTPROC Ptr{Void}
typealias PFNGLMULTITEXGENDVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXGENFEXTPROC Ptr{Void}
typealias PFNGLMULTITEXGENFVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXGENIEXTPROC Ptr{Void}
typealias PFNGLMULTITEXGENIVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXENVFVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXENVIVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXGENDVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXGENFVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXGENIVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXPARAMETERIEXTPROC Ptr{Void}
typealias PFNGLMULTITEXPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXPARAMETERFEXTPROC Ptr{Void}
typealias PFNGLMULTITEXPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLMULTITEXIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLMULTITEXSUBIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLMULTITEXSUBIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOPYMULTITEXIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLCOPYMULTITEXIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOPYMULTITEXSUBIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLCOPYMULTITEXSUBIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXIMAGEEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXLEVELPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXLEVELPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLMULTITEXSUBIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLCOPYMULTITEXSUBIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLENABLECLIENTSTATEINDEXEDEXTPROC Ptr{Void}
typealias PFNGLDISABLECLIENTSTATEINDEXEDEXTPROC Ptr{Void}
typealias PFNGLGETFLOATINDEXEDVEXTPROC Ptr{Void}
typealias PFNGLGETDOUBLEINDEXEDVEXTPROC Ptr{Void}
typealias PFNGLGETPOINTERINDEXEDVEXTPROC Ptr{Void}
typealias PFNGLENABLEINDEXEDEXTPROC Ptr{Void}
typealias PFNGLDISABLEINDEXEDEXTPROC Ptr{Void}
typealias PFNGLISENABLEDINDEXEDEXTPROC Ptr{Void}
typealias PFNGLGETINTEGERINDEXEDVEXTPROC Ptr{Void}
typealias PFNGLGETBOOLEANINDEXEDVEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC Ptr{Void}
typealias PFNGLMATRIXLOADTRANSPOSEFEXTPROC Ptr{Void}
typealias PFNGLMATRIXLOADTRANSPOSEDEXTPROC Ptr{Void}
typealias PFNGLMATRIXMULTTRANSPOSEFEXTPROC Ptr{Void}
typealias PFNGLMATRIXMULTTRANSPOSEDEXTPROC Ptr{Void}
typealias PFNGLNAMEDBUFFERDATAEXTPROC Ptr{Void}
typealias PFNGLNAMEDBUFFERSUBDATAEXTPROC Ptr{Void}
typealias PFNGLMAPNAMEDBUFFEREXTPROC Ptr{Void}
typealias PFNGLUNMAPNAMEDBUFFEREXTPROC Ptr{Void}
typealias PFNGLGETNAMEDBUFFERPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDBUFFERPOINTERVEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDBUFFERSUBDATAEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1FEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2FEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3FEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4FEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1IEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2IEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3IEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4IEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1IVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2IVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3IVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4IVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC Ptr{Void}
typealias PFNGLTEXTUREBUFFEREXTPROC Ptr{Void}
typealias PFNGLMULTITEXBUFFEREXTPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERIIVEXTPROC Ptr{Void}
typealias PFNGLTEXTUREPARAMETERIUIVEXTPROC Ptr{Void}
typealias PFNGLGETTEXTUREPARAMETERIIVEXTPROC Ptr{Void}
typealias PFNGLGETTEXTUREPARAMETERIUIVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXPARAMETERIIVEXTPROC Ptr{Void}
typealias PFNGLMULTITEXPARAMETERIUIVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXPARAMETERIIVEXTPROC Ptr{Void}
typealias PFNGLGETMULTITEXPARAMETERIUIVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1UIEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2UIEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3UIEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4UIEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1UIVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2UIVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3UIVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4UIVEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC Ptr{Void}
typealias PFNGLENABLECLIENTSTATEIEXTPROC Ptr{Void}
typealias PFNGLDISABLECLIENTSTATEIEXTPROC Ptr{Void}
typealias PFNGLGETFLOATI_VEXTPROC Ptr{Void}
typealias PFNGLGETDOUBLEI_VEXTPROC Ptr{Void}
typealias PFNGLGETPOINTERI_VEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMSTRINGEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC Ptr{Void}
typealias PFNGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDPROGRAMIVEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDPROGRAMSTRINGEXTPROC Ptr{Void}
typealias PFNGLNAMEDRENDERBUFFERSTORAGEEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC Ptr{Void}
typealias PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC Ptr{Void}
typealias PFNGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC Ptr{Void}
typealias PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGENERATETEXTUREMIPMAPEXTPROC Ptr{Void}
typealias PFNGLGENERATEMULTITEXMIPMAPEXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERDRAWBUFFEREXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERDRAWBUFFERSEXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERREADBUFFEREXTPROC Ptr{Void}
typealias PFNGLGETFRAMEBUFFERPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLNAMEDCOPYBUFFERSUBDATAEXTPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERTEXTUREEXTPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC Ptr{Void}
typealias PFNGLTEXTURERENDERBUFFEREXTPROC Ptr{Void}
typealias PFNGLMULTITEXRENDERBUFFEREXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXOFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYCOLOROFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYEDGEFLAGOFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYINDEXOFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYNORMALOFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYTEXCOORDOFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYMULTITEXCOORDOFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYFOGCOORDOFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYSECONDARYCOLOROFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXATTRIBOFFSETEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXATTRIBIOFFSETEXTPROC Ptr{Void}
typealias PFNGLENABLEVERTEXARRAYEXTPROC Ptr{Void}
typealias PFNGLDISABLEVERTEXARRAYEXTPROC Ptr{Void}
typealias PFNGLENABLEVERTEXARRAYATTRIBEXTPROC Ptr{Void}
typealias PFNGLDISABLEVERTEXARRAYATTRIBEXTPROC Ptr{Void}
typealias PFNGLGETVERTEXARRAYINTEGERVEXTPROC Ptr{Void}
typealias PFNGLGETVERTEXARRAYPOINTERVEXTPROC Ptr{Void}
typealias PFNGLGETVERTEXARRAYINTEGERI_VEXTPROC Ptr{Void}
typealias PFNGLGETVERTEXARRAYPOINTERI_VEXTPROC Ptr{Void}
typealias PFNGLMAPNAMEDBUFFERRANGEEXTPROC Ptr{Void}
typealias PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC Ptr{Void}
typealias PFNGLNAMEDBUFFERSTORAGEEXTPROC Ptr{Void}
typealias PFNGLCLEARNAMEDBUFFERDATAEXTPROC Ptr{Void}
typealias PFNGLCLEARNAMEDBUFFERSUBDATAEXTPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERPARAMETERIEXTPROC Ptr{Void}
typealias PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1DEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2DEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3DEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4DEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM1DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM2DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM3DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORM4DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2X3DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX2X4DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3X2DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX3X4DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4X2DVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMMATRIX4X3DVEXTPROC Ptr{Void}
typealias PFNGLTEXTUREBUFFERRANGEEXTPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE1DEXTPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE2DEXTPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE3DEXTPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE2DMULTISAMPLEEXTPROC Ptr{Void}
typealias PFNGLTEXTURESTORAGE3DMULTISAMPLEEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYBINDVERTEXBUFFEREXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXATTRIBFORMATEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXATTRIBIFORMATEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXATTRIBLFORMATEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXATTRIBBINDINGEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXBINDINGDIVISOREXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC Ptr{Void}
typealias PFNGLTEXTUREPAGECOMMITMENTEXTPROC Ptr{Void}
typealias PFNGLVERTEXARRAYVERTEXATTRIBDIVISOREXTPROC Ptr{Void}
typealias PFNGLCOLORMASKINDEXEDEXTPROC Ptr{Void}
typealias PFNGLDRAWARRAYSINSTANCEDEXTPROC Ptr{Void}
typealias PFNGLDRAWELEMENTSINSTANCEDEXTPROC Ptr{Void}
typealias PFNGLDRAWRANGEELEMENTSEXTPROC Ptr{Void}
typealias PFNGLFOGCOORDFEXTPROC Ptr{Void}
typealias PFNGLFOGCOORDFVEXTPROC Ptr{Void}
typealias PFNGLFOGCOORDDEXTPROC Ptr{Void}
typealias PFNGLFOGCOORDDVEXTPROC Ptr{Void}
typealias PFNGLFOGCOORDPOINTEREXTPROC Ptr{Void}
typealias PFNGLBLITFRAMEBUFFEREXTPROC Ptr{Void}
typealias PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC Ptr{Void}
typealias PFNGLISRENDERBUFFEREXTPROC Ptr{Void}
typealias PFNGLBINDRENDERBUFFEREXTPROC Ptr{Void}
typealias PFNGLDELETERENDERBUFFERSEXTPROC Ptr{Void}
typealias PFNGLGENRENDERBUFFERSEXTPROC Ptr{Void}
typealias PFNGLRENDERBUFFERSTORAGEEXTPROC Ptr{Void}
typealias PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLISFRAMEBUFFEREXTPROC Ptr{Void}
typealias PFNGLBINDFRAMEBUFFEREXTPROC Ptr{Void}
typealias PFNGLDELETEFRAMEBUFFERSEXTPROC Ptr{Void}
typealias PFNGLGENFRAMEBUFFERSEXTPROC Ptr{Void}
typealias PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURE1DEXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURE2DEXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURE3DEXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC Ptr{Void}
typealias PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGENERATEMIPMAPEXTPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETERIEXTPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETERS4FVEXTPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC Ptr{Void}
typealias PFNGLGETUNIFORMUIVEXTPROC Ptr{Void}
typealias PFNGLBINDFRAGDATALOCATIONEXTPROC Ptr{Void}
typealias PFNGLGETFRAGDATALOCATIONEXTPROC Ptr{Void}
typealias PFNGLUNIFORM1UIEXTPROC Ptr{Void}
typealias PFNGLUNIFORM2UIEXTPROC Ptr{Void}
typealias PFNGLUNIFORM3UIEXTPROC Ptr{Void}
typealias PFNGLUNIFORM4UIEXTPROC Ptr{Void}
typealias PFNGLUNIFORM1UIVEXTPROC Ptr{Void}
typealias PFNGLUNIFORM2UIVEXTPROC Ptr{Void}
typealias PFNGLUNIFORM3UIVEXTPROC Ptr{Void}
typealias PFNGLUNIFORM4UIVEXTPROC Ptr{Void}
typealias PFNGLGETHISTOGRAMEXTPROC Ptr{Void}
typealias PFNGLGETHISTOGRAMPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETHISTOGRAMPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGETMINMAXEXTPROC Ptr{Void}
typealias PFNGLGETMINMAXPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETMINMAXPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLHISTOGRAMEXTPROC Ptr{Void}
typealias PFNGLMINMAXEXTPROC Ptr{Void}
typealias PFNGLRESETHISTOGRAMEXTPROC Ptr{Void}
typealias PFNGLRESETMINMAXEXTPROC Ptr{Void}
typealias PFNGLINDEXFUNCEXTPROC Ptr{Void}
typealias PFNGLINDEXMATERIALEXTPROC Ptr{Void}
typealias PFNGLAPPLYTEXTUREEXTPROC Ptr{Void}
typealias PFNGLTEXTURELIGHTEXTPROC Ptr{Void}
typealias PFNGLTEXTUREMATERIALEXTPROC Ptr{Void}
typealias PFNGLMULTIDRAWARRAYSEXTPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTSEXTPROC Ptr{Void}
typealias PFNGLSAMPLEMASKEXTPROC Ptr{Void}
typealias PFNGLSAMPLEPATTERNEXTPROC Ptr{Void}
typealias PFNGLCOLORTABLEEXTPROC Ptr{Void}
typealias PFNGLGETCOLORTABLEEXTPROC Ptr{Void}
typealias PFNGLGETCOLORTABLEPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGETCOLORTABLEPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLPIXELTRANSFORMPARAMETERIEXTPROC Ptr{Void}
typealias PFNGLPIXELTRANSFORMPARAMETERFEXTPROC Ptr{Void}
typealias PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLGETPIXELTRANSFORMPARAMETERIVEXTPROC Ptr{Void}
typealias PFNGLGETPIXELTRANSFORMPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERFEXTPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERFVEXTPROC Ptr{Void}
typealias PFNGLPOLYGONOFFSETEXTPROC Ptr{Void}
typealias PFNGLPOLYGONOFFSETCLAMPEXTPROC Ptr{Void}
typealias PFNGLPROVOKINGVERTEXEXTPROC Ptr{Void}
typealias PFNGLRASTERSAMPLESEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3BEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3BVEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3DEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3DVEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3FEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3FVEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3IEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3IVEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3SEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3SVEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3UBEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3UBVEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3UIEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3UIVEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3USEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3USVEXTPROC Ptr{Void}
typealias PFNGLSECONDARYCOLORPOINTEREXTPROC Ptr{Void}
typealias PFNGLUSESHADERPROGRAMEXTPROC Ptr{Void}
typealias PFNGLACTIVEPROGRAMEXTPROC Ptr{Void}
typealias PFNGLCREATESHADERPROGRAMEXTPROC Ptr{Void}
typealias PFNGLBINDIMAGETEXTUREEXTPROC Ptr{Void}
typealias PFNGLMEMORYBARRIEREXTPROC Ptr{Void}
typealias PFNGLSTENCILCLEARTAGEXTPROC Ptr{Void}
typealias PFNGLACTIVESTENCILFACEEXTPROC Ptr{Void}
typealias PFNGLTEXSUBIMAGE1DEXTPROC Ptr{Void}
typealias PFNGLTEXSUBIMAGE2DEXTPROC Ptr{Void}
typealias PFNGLTEXIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLTEXSUBIMAGE3DEXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC Ptr{Void}
typealias PFNGLTEXBUFFEREXTPROC Ptr{Void}
typealias PFNGLTEXPARAMETERIIVEXTPROC Ptr{Void}
typealias PFNGLTEXPARAMETERIUIVEXTPROC Ptr{Void}
typealias PFNGLGETTEXPARAMETERIIVEXTPROC Ptr{Void}
typealias PFNGLGETTEXPARAMETERIUIVEXTPROC Ptr{Void}
typealias PFNGLCLEARCOLORIIEXTPROC Ptr{Void}
typealias PFNGLCLEARCOLORIUIEXTPROC Ptr{Void}
typealias PFNGLARETEXTURESRESIDENTEXTPROC Ptr{Void}
typealias PFNGLBINDTEXTUREEXTPROC Ptr{Void}
typealias PFNGLDELETETEXTURESEXTPROC Ptr{Void}
typealias PFNGLGENTEXTURESEXTPROC Ptr{Void}
typealias PFNGLISTEXTUREEXTPROC Ptr{Void}
typealias PFNGLPRIORITIZETEXTURESEXTPROC Ptr{Void}
typealias PFNGLTEXTURENORMALEXTPROC Ptr{Void}
typealias PFNGLGETQUERYOBJECTI64VEXTPROC Ptr{Void}
typealias PFNGLGETQUERYOBJECTUI64VEXTPROC Ptr{Void}
typealias PFNGLBEGINTRANSFORMFEEDBACKEXTPROC Ptr{Void}
typealias PFNGLENDTRANSFORMFEEDBACKEXTPROC Ptr{Void}
typealias PFNGLBINDBUFFERRANGEEXTPROC Ptr{Void}
typealias PFNGLBINDBUFFEROFFSETEXTPROC Ptr{Void}
typealias PFNGLBINDBUFFERBASEEXTPROC Ptr{Void}
typealias PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC Ptr{Void}
typealias PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC Ptr{Void}
typealias PFNGLARRAYELEMENTEXTPROC Ptr{Void}
typealias PFNGLCOLORPOINTEREXTPROC Ptr{Void}
typealias PFNGLDRAWARRAYSEXTPROC Ptr{Void}
typealias PFNGLEDGEFLAGPOINTEREXTPROC Ptr{Void}
typealias PFNGLGETPOINTERVEXTPROC Ptr{Void}
typealias PFNGLINDEXPOINTEREXTPROC Ptr{Void}
typealias PFNGLNORMALPOINTEREXTPROC Ptr{Void}
typealias PFNGLTEXCOORDPOINTEREXTPROC Ptr{Void}
typealias PFNGLVERTEXPOINTEREXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1DEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL2DEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL3DEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL4DEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1DVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL2DVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL3DVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL4DVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBLPOINTEREXTPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBLDVEXTPROC Ptr{Void}
typealias PFNGLBEGINVERTEXSHADEREXTPROC Ptr{Void}
typealias PFNGLENDVERTEXSHADEREXTPROC Ptr{Void}
typealias PFNGLBINDVERTEXSHADEREXTPROC Ptr{Void}
typealias PFNGLGENVERTEXSHADERSEXTPROC Ptr{Void}
typealias PFNGLDELETEVERTEXSHADEREXTPROC Ptr{Void}
typealias PFNGLSHADEROP1EXTPROC Ptr{Void}
typealias PFNGLSHADEROP2EXTPROC Ptr{Void}
typealias PFNGLSHADEROP3EXTPROC Ptr{Void}
typealias PFNGLSWIZZLEEXTPROC Ptr{Void}
typealias PFNGLWRITEMASKEXTPROC Ptr{Void}
typealias PFNGLINSERTCOMPONENTEXTPROC Ptr{Void}
typealias PFNGLEXTRACTCOMPONENTEXTPROC Ptr{Void}
typealias PFNGLGENSYMBOLSEXTPROC Ptr{Void}
typealias PFNGLSETINVARIANTEXTPROC Ptr{Void}
typealias PFNGLSETLOCALCONSTANTEXTPROC Ptr{Void}
typealias PFNGLVARIANTBVEXTPROC Ptr{Void}
typealias PFNGLVARIANTSVEXTPROC Ptr{Void}
typealias PFNGLVARIANTIVEXTPROC Ptr{Void}
typealias PFNGLVARIANTFVEXTPROC Ptr{Void}
typealias PFNGLVARIANTDVEXTPROC Ptr{Void}
typealias PFNGLVARIANTUBVEXTPROC Ptr{Void}
typealias PFNGLVARIANTUSVEXTPROC Ptr{Void}
typealias PFNGLVARIANTUIVEXTPROC Ptr{Void}
typealias PFNGLVARIANTPOINTEREXTPROC Ptr{Void}
typealias PFNGLENABLEVARIANTCLIENTSTATEEXTPROC Ptr{Void}
typealias PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC Ptr{Void}
typealias PFNGLBINDLIGHTPARAMETEREXTPROC Ptr{Void}
typealias PFNGLBINDMATERIALPARAMETEREXTPROC Ptr{Void}
typealias PFNGLBINDTEXGENPARAMETEREXTPROC Ptr{Void}
typealias PFNGLBINDTEXTUREUNITPARAMETEREXTPROC Ptr{Void}
typealias PFNGLBINDPARAMETEREXTPROC Ptr{Void}
typealias PFNGLISVARIANTENABLEDEXTPROC Ptr{Void}
typealias PFNGLGETVARIANTBOOLEANVEXTPROC Ptr{Void}
typealias PFNGLGETVARIANTINTEGERVEXTPROC Ptr{Void}
typealias PFNGLGETVARIANTFLOATVEXTPROC Ptr{Void}
typealias PFNGLGETVARIANTPOINTERVEXTPROC Ptr{Void}
typealias PFNGLGETINVARIANTBOOLEANVEXTPROC Ptr{Void}
typealias PFNGLGETINVARIANTINTEGERVEXTPROC Ptr{Void}
typealias PFNGLGETINVARIANTFLOATVEXTPROC Ptr{Void}
typealias PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC Ptr{Void}
typealias PFNGLGETLOCALCONSTANTINTEGERVEXTPROC Ptr{Void}
typealias PFNGLGETLOCALCONSTANTFLOATVEXTPROC Ptr{Void}
typealias PFNGLVERTEXWEIGHTFEXTPROC Ptr{Void}
typealias PFNGLVERTEXWEIGHTFVEXTPROC Ptr{Void}
typealias PFNGLVERTEXWEIGHTPOINTEREXTPROC Ptr{Void}
typealias PFNGLIMPORTSYNCEXTPROC Ptr{Void}
typealias PFNGLFRAMETERMINATORGREMEDYPROC Ptr{Void}
typealias PFNGLSTRINGMARKERGREMEDYPROC Ptr{Void}
typealias PFNGLIMAGETRANSFORMPARAMETERIHPPROC Ptr{Void}
typealias PFNGLIMAGETRANSFORMPARAMETERFHPPROC Ptr{Void}
typealias PFNGLIMAGETRANSFORMPARAMETERIVHPPROC Ptr{Void}
typealias PFNGLIMAGETRANSFORMPARAMETERFVHPPROC Ptr{Void}
typealias PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC Ptr{Void}
typealias PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC Ptr{Void}
typealias PFNGLMULTIMODEDRAWARRAYSIBMPROC Ptr{Void}
typealias PFNGLMULTIMODEDRAWELEMENTSIBMPROC Ptr{Void}
typealias PFNGLFLUSHSTATICDATAIBMPROC Ptr{Void}
typealias PFNGLCOLORPOINTERLISTIBMPROC Ptr{Void}
typealias PFNGLSECONDARYCOLORPOINTERLISTIBMPROC Ptr{Void}
typealias PFNGLEDGEFLAGPOINTERLISTIBMPROC Ptr{Void}
typealias PFNGLFOGCOORDPOINTERLISTIBMPROC Ptr{Void}
typealias PFNGLINDEXPOINTERLISTIBMPROC Ptr{Void}
typealias PFNGLNORMALPOINTERLISTIBMPROC Ptr{Void}
typealias PFNGLTEXCOORDPOINTERLISTIBMPROC Ptr{Void}
typealias PFNGLVERTEXPOINTERLISTIBMPROC Ptr{Void}
typealias PFNGLBLENDFUNCSEPARATEINGRPROC Ptr{Void}
typealias PFNGLAPPLYFRAMEBUFFERATTACHMENTCMAAINTELPROC Ptr{Void}
typealias PFNGLSYNCTEXTUREINTELPROC Ptr{Void}
typealias PFNGLUNMAPTEXTURE2DINTELPROC Ptr{Void}
typealias PFNGLMAPTEXTURE2DINTELPROC Ptr{Void}
typealias PFNGLVERTEXPOINTERVINTELPROC Ptr{Void}
typealias PFNGLNORMALPOINTERVINTELPROC Ptr{Void}
typealias PFNGLCOLORPOINTERVINTELPROC Ptr{Void}
typealias PFNGLTEXCOORDPOINTERVINTELPROC Ptr{Void}
typealias PFNGLBEGINPERFQUERYINTELPROC Ptr{Void}
typealias PFNGLCREATEPERFQUERYINTELPROC Ptr{Void}
typealias PFNGLDELETEPERFQUERYINTELPROC Ptr{Void}
typealias PFNGLENDPERFQUERYINTELPROC Ptr{Void}
typealias PFNGLGETFIRSTPERFQUERYIDINTELPROC Ptr{Void}
typealias PFNGLGETNEXTPERFQUERYIDINTELPROC Ptr{Void}
typealias PFNGLGETPERFCOUNTERINFOINTELPROC Ptr{Void}
typealias PFNGLGETPERFQUERYDATAINTELPROC Ptr{Void}
typealias PFNGLGETPERFQUERYIDBYNAMEINTELPROC Ptr{Void}
typealias PFNGLGETPERFQUERYINFOINTELPROC Ptr{Void}
typealias PFNGLRESIZEBUFFERSMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS2DMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS2DVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS2FMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS2FVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS2IMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS2IVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS2SMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS2SVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS3DMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS3DVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS3FMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS3FVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS3IMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS3IVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS3SMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS3SVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS4DMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS4DVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS4FMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS4FVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS4IMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS4IVMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS4SMESAPROC Ptr{Void}
typealias PFNGLWINDOWPOS4SVMESAPROC Ptr{Void}
typealias PFNGLBEGINCONDITIONALRENDERNVXPROC Ptr{Void}
typealias PFNGLENDCONDITIONALRENDERNVXPROC Ptr{Void}
typealias PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC Ptr{Void}
typealias PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSCOUNTNVPROC Ptr{Void}
typealias PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSCOUNTNVPROC Ptr{Void}
typealias PFNGLGETTEXTUREHANDLENVPROC Ptr{Void}
typealias PFNGLGETTEXTURESAMPLERHANDLENVPROC Ptr{Void}
typealias PFNGLMAKETEXTUREHANDLERESIDENTNVPROC Ptr{Void}
typealias PFNGLMAKETEXTUREHANDLENONRESIDENTNVPROC Ptr{Void}
typealias PFNGLGETIMAGEHANDLENVPROC Ptr{Void}
typealias PFNGLMAKEIMAGEHANDLERESIDENTNVPROC Ptr{Void}
typealias PFNGLMAKEIMAGEHANDLENONRESIDENTNVPROC Ptr{Void}
typealias PFNGLUNIFORMHANDLEUI64NVPROC Ptr{Void}
typealias PFNGLUNIFORMHANDLEUI64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMHANDLEUI64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMHANDLEUI64VNVPROC Ptr{Void}
typealias PFNGLISTEXTUREHANDLERESIDENTNVPROC Ptr{Void}
typealias PFNGLISIMAGEHANDLERESIDENTNVPROC Ptr{Void}
typealias PFNGLBLENDPARAMETERINVPROC Ptr{Void}
typealias PFNGLBLENDBARRIERNVPROC Ptr{Void}
typealias PFNGLCREATESTATESNVPROC Ptr{Void}
typealias PFNGLDELETESTATESNVPROC Ptr{Void}
typealias PFNGLISSTATENVPROC Ptr{Void}
typealias PFNGLSTATECAPTURENVPROC Ptr{Void}
typealias PFNGLGETCOMMANDHEADERNVPROC Ptr{Void}
typealias PFNGLGETSTAGEINDEXNVPROC Ptr{Void}
typealias PFNGLDRAWCOMMANDSNVPROC Ptr{Void}
typealias PFNGLDRAWCOMMANDSADDRESSNVPROC Ptr{Void}
typealias PFNGLDRAWCOMMANDSSTATESNVPROC Ptr{Void}
typealias PFNGLDRAWCOMMANDSSTATESADDRESSNVPROC Ptr{Void}
typealias PFNGLCREATECOMMANDLISTSNVPROC Ptr{Void}
typealias PFNGLDELETECOMMANDLISTSNVPROC Ptr{Void}
typealias PFNGLISCOMMANDLISTNVPROC Ptr{Void}
typealias PFNGLLISTDRAWCOMMANDSSTATESCLIENTNVPROC Ptr{Void}
typealias PFNGLCOMMANDLISTSEGMENTSNVPROC Ptr{Void}
typealias PFNGLCOMPILECOMMANDLISTNVPROC Ptr{Void}
typealias PFNGLCALLCOMMANDLISTNVPROC Ptr{Void}
typealias PFNGLBEGINCONDITIONALRENDERNVPROC Ptr{Void}
typealias PFNGLENDCONDITIONALRENDERNVPROC Ptr{Void}
typealias PFNGLSUBPIXELPRECISIONBIASNVPROC Ptr{Void}
typealias PFNGLCONSERVATIVERASTERPARAMETERFNVPROC Ptr{Void}
typealias PFNGLCOPYIMAGESUBDATANVPROC Ptr{Void}
typealias PFNGLDEPTHRANGEDNVPROC Ptr{Void}
typealias PFNGLCLEARDEPTHDNVPROC Ptr{Void}
typealias PFNGLDEPTHBOUNDSDNVPROC Ptr{Void}
typealias PFNGLDRAWTEXTURENVPROC Ptr{Void}
typealias PFNGLMAPCONTROLPOINTSNVPROC Ptr{Void}
typealias PFNGLMAPPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLMAPPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETMAPCONTROLPOINTSNVPROC Ptr{Void}
typealias PFNGLGETMAPPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLGETMAPPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETMAPATTRIBPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLGETMAPATTRIBPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLEVALMAPSNVPROC Ptr{Void}
typealias PFNGLGETMULTISAMPLEFVNVPROC Ptr{Void}
typealias PFNGLSAMPLEMASKINDEXEDNVPROC Ptr{Void}
typealias PFNGLTEXRENDERBUFFERNVPROC Ptr{Void}
typealias PFNGLDELETEFENCESNVPROC Ptr{Void}
typealias PFNGLGENFENCESNVPROC Ptr{Void}
typealias PFNGLISFENCENVPROC Ptr{Void}
typealias PFNGLTESTFENCENVPROC Ptr{Void}
typealias PFNGLGETFENCEIVNVPROC Ptr{Void}
typealias PFNGLFINISHFENCENVPROC Ptr{Void}
typealias PFNGLSETFENCENVPROC Ptr{Void}
typealias PFNGLFRAGMENTCOVERAGECOLORNVPROC Ptr{Void}
typealias PFNGLPROGRAMNAMEDPARAMETER4FNVPROC Ptr{Void}
typealias PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC Ptr{Void}
typealias PFNGLPROGRAMNAMEDPARAMETER4DNVPROC Ptr{Void}
typealias PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC Ptr{Void}
typealias PFNGLCOVERAGEMODULATIONTABLENVPROC Ptr{Void}
typealias PFNGLGETCOVERAGEMODULATIONTABLENVPROC Ptr{Void}
typealias PFNGLCOVERAGEMODULATIONNVPROC Ptr{Void}
typealias PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC Ptr{Void}
typealias PFNGLPROGRAMVERTEXLIMITNVPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTUREEXTPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETERI4INVPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETERI4UINVPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC Ptr{Void}
typealias PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETERI4INVPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETERI4IVNVPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETERSI4IVNVPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETERI4UINVPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETERI4UIVNVPROC Ptr{Void}
typealias PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMENVPARAMETERIIVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC Ptr{Void}
typealias PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC Ptr{Void}
typealias GLhalfNV UInt16
typealias PFNGLVERTEX2HNVPROC Ptr{Void}
typealias PFNGLVERTEX2HVNVPROC Ptr{Void}
typealias PFNGLVERTEX3HNVPROC Ptr{Void}
typealias PFNGLVERTEX3HVNVPROC Ptr{Void}
typealias PFNGLVERTEX4HNVPROC Ptr{Void}
typealias PFNGLVERTEX4HVNVPROC Ptr{Void}
typealias PFNGLNORMAL3HNVPROC Ptr{Void}
typealias PFNGLNORMAL3HVNVPROC Ptr{Void}
typealias PFNGLCOLOR3HNVPROC Ptr{Void}
typealias PFNGLCOLOR3HVNVPROC Ptr{Void}
typealias PFNGLCOLOR4HNVPROC Ptr{Void}
typealias PFNGLCOLOR4HVNVPROC Ptr{Void}
typealias PFNGLTEXCOORD1HNVPROC Ptr{Void}
typealias PFNGLTEXCOORD1HVNVPROC Ptr{Void}
typealias PFNGLTEXCOORD2HNVPROC Ptr{Void}
typealias PFNGLTEXCOORD2HVNVPROC Ptr{Void}
typealias PFNGLTEXCOORD3HNVPROC Ptr{Void}
typealias PFNGLTEXCOORD3HVNVPROC Ptr{Void}
typealias PFNGLTEXCOORD4HNVPROC Ptr{Void}
typealias PFNGLTEXCOORD4HVNVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1HNVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD1HVNVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2HNVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD2HVNVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3HNVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD3HVNVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4HNVPROC Ptr{Void}
typealias PFNGLMULTITEXCOORD4HVNVPROC Ptr{Void}
typealias PFNGLFOGCOORDHNVPROC Ptr{Void}
typealias PFNGLFOGCOORDHVNVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3HNVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLOR3HVNVPROC Ptr{Void}
typealias PFNGLVERTEXWEIGHTHNVPROC Ptr{Void}
typealias PFNGLVERTEXWEIGHTHVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1HNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1HVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2HNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2HVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3HNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3HVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4HNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4HVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS1HVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS2HVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS3HVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS4HVNVPROC Ptr{Void}
typealias PFNGLGETINTERNALFORMATSAMPLEIVNVPROC Ptr{Void}
typealias PFNGLGENOCCLUSIONQUERIESNVPROC Ptr{Void}
typealias PFNGLDELETEOCCLUSIONQUERIESNVPROC Ptr{Void}
typealias PFNGLISOCCLUSIONQUERYNVPROC Ptr{Void}
typealias PFNGLBEGINOCCLUSIONQUERYNVPROC Ptr{Void}
typealias PFNGLENDOCCLUSIONQUERYNVPROC Ptr{Void}
typealias PFNGLGETOCCLUSIONQUERYIVNVPROC Ptr{Void}
typealias PFNGLGETOCCLUSIONQUERYUIVNVPROC Ptr{Void}
typealias PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC Ptr{Void}
typealias PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC Ptr{Void}
typealias PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC Ptr{Void}
typealias PFNGLGENPATHSNVPROC Ptr{Void}
typealias PFNGLDELETEPATHSNVPROC Ptr{Void}
typealias PFNGLISPATHNVPROC Ptr{Void}
typealias PFNGLPATHCOMMANDSNVPROC Ptr{Void}
typealias PFNGLPATHCOORDSNVPROC Ptr{Void}
typealias PFNGLPATHSUBCOMMANDSNVPROC Ptr{Void}
typealias PFNGLPATHSUBCOORDSNVPROC Ptr{Void}
typealias PFNGLPATHSTRINGNVPROC Ptr{Void}
typealias PFNGLPATHGLYPHSNVPROC Ptr{Void}
typealias PFNGLPATHGLYPHRANGENVPROC Ptr{Void}
typealias PFNGLWEIGHTPATHSNVPROC Ptr{Void}
typealias PFNGLCOPYPATHNVPROC Ptr{Void}
typealias PFNGLINTERPOLATEPATHSNVPROC Ptr{Void}
typealias PFNGLTRANSFORMPATHNVPROC Ptr{Void}
typealias PFNGLPATHPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLPATHPARAMETERINVPROC Ptr{Void}
typealias PFNGLPATHPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLPATHPARAMETERFNVPROC Ptr{Void}
typealias PFNGLPATHDASHARRAYNVPROC Ptr{Void}
typealias PFNGLPATHSTENCILFUNCNVPROC Ptr{Void}
typealias PFNGLPATHSTENCILDEPTHOFFSETNVPROC Ptr{Void}
typealias PFNGLSTENCILFILLPATHNVPROC Ptr{Void}
typealias PFNGLSTENCILSTROKEPATHNVPROC Ptr{Void}
typealias PFNGLSTENCILFILLPATHINSTANCEDNVPROC Ptr{Void}
typealias PFNGLSTENCILSTROKEPATHINSTANCEDNVPROC Ptr{Void}
typealias PFNGLPATHCOVERDEPTHFUNCNVPROC Ptr{Void}
typealias PFNGLCOVERFILLPATHNVPROC Ptr{Void}
typealias PFNGLCOVERSTROKEPATHNVPROC Ptr{Void}
typealias PFNGLCOVERFILLPATHINSTANCEDNVPROC Ptr{Void}
typealias PFNGLCOVERSTROKEPATHINSTANCEDNVPROC Ptr{Void}
typealias PFNGLGETPATHPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLGETPATHPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETPATHCOMMANDSNVPROC Ptr{Void}
typealias PFNGLGETPATHCOORDSNVPROC Ptr{Void}
typealias PFNGLGETPATHDASHARRAYNVPROC Ptr{Void}
typealias PFNGLGETPATHMETRICSNVPROC Ptr{Void}
typealias PFNGLGETPATHMETRICRANGENVPROC Ptr{Void}
typealias PFNGLGETPATHSPACINGNVPROC Ptr{Void}
typealias PFNGLISPOINTINFILLPATHNVPROC Ptr{Void}
typealias PFNGLISPOINTINSTROKEPATHNVPROC Ptr{Void}
typealias PFNGLGETPATHLENGTHNVPROC Ptr{Void}
typealias PFNGLPOINTALONGPATHNVPROC Ptr{Void}
typealias PFNGLMATRIXLOAD3X2FNVPROC Ptr{Void}
typealias PFNGLMATRIXLOAD3X3FNVPROC Ptr{Void}
typealias PFNGLMATRIXLOADTRANSPOSE3X3FNVPROC Ptr{Void}
typealias PFNGLMATRIXMULT3X2FNVPROC Ptr{Void}
typealias PFNGLMATRIXMULT3X3FNVPROC Ptr{Void}
typealias PFNGLMATRIXMULTTRANSPOSE3X3FNVPROC Ptr{Void}
typealias PFNGLSTENCILTHENCOVERFILLPATHNVPROC Ptr{Void}
typealias PFNGLSTENCILTHENCOVERSTROKEPATHNVPROC Ptr{Void}
typealias PFNGLSTENCILTHENCOVERFILLPATHINSTANCEDNVPROC Ptr{Void}
typealias PFNGLSTENCILTHENCOVERSTROKEPATHINSTANCEDNVPROC Ptr{Void}
typealias PFNGLPATHGLYPHINDEXRANGENVPROC Ptr{Void}
typealias PFNGLPATHGLYPHINDEXARRAYNVPROC Ptr{Void}
typealias PFNGLPATHMEMORYGLYPHINDEXARRAYNVPROC Ptr{Void}
typealias PFNGLPROGRAMPATHFRAGMENTINPUTGENNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMRESOURCEFVNVPROC Ptr{Void}
typealias PFNGLPATHCOLORGENNVPROC Ptr{Void}
typealias PFNGLPATHTEXGENNVPROC Ptr{Void}
typealias PFNGLPATHFOGGENNVPROC Ptr{Void}
typealias PFNGLGETPATHCOLORGENIVNVPROC Ptr{Void}
typealias PFNGLGETPATHCOLORGENFVNVPROC Ptr{Void}
typealias PFNGLGETPATHTEXGENIVNVPROC Ptr{Void}
typealias PFNGLGETPATHTEXGENFVNVPROC Ptr{Void}
typealias PFNGLPIXELDATARANGENVPROC Ptr{Void}
typealias PFNGLFLUSHPIXELDATARANGENVPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERINVPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLPRESENTFRAMEKEYEDNVPROC Ptr{Void}
typealias PFNGLPRESENTFRAMEDUALFILLNVPROC Ptr{Void}
typealias PFNGLGETVIDEOIVNVPROC Ptr{Void}
typealias PFNGLGETVIDEOUIVNVPROC Ptr{Void}
typealias PFNGLGETVIDEOI64VNVPROC Ptr{Void}
typealias PFNGLGETVIDEOUI64VNVPROC Ptr{Void}
typealias PFNGLPRIMITIVERESTARTNVPROC Ptr{Void}
typealias PFNGLPRIMITIVERESTARTINDEXNVPROC Ptr{Void}
typealias PFNGLCOMBINERPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLCOMBINERPARAMETERFNVPROC Ptr{Void}
typealias PFNGLCOMBINERPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLCOMBINERPARAMETERINVPROC Ptr{Void}
typealias PFNGLCOMBINERINPUTNVPROC Ptr{Void}
typealias PFNGLCOMBINEROUTPUTNVPROC Ptr{Void}
typealias PFNGLFINALCOMBINERINPUTNVPROC Ptr{Void}
typealias PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLCOMBINERSTAGEPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERSAMPLELOCATIONSFVNVPROC Ptr{Void}
typealias PFNGLNAMEDFRAMEBUFFERSAMPLELOCATIONSFVNVPROC Ptr{Void}
typealias PFNGLRESOLVEDEPTHVALUESNVPROC Ptr{Void}
typealias PFNGLMAKEBUFFERRESIDENTNVPROC Ptr{Void}
typealias PFNGLMAKEBUFFERNONRESIDENTNVPROC Ptr{Void}
typealias PFNGLISBUFFERRESIDENTNVPROC Ptr{Void}
typealias PFNGLMAKENAMEDBUFFERRESIDENTNVPROC Ptr{Void}
typealias PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC Ptr{Void}
typealias PFNGLISNAMEDBUFFERRESIDENTNVPROC Ptr{Void}
typealias PFNGLGETBUFFERPARAMETERUI64VNVPROC Ptr{Void}
typealias PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC Ptr{Void}
typealias PFNGLGETINTEGERUI64VNVPROC Ptr{Void}
typealias PFNGLUNIFORMUI64NVPROC Ptr{Void}
typealias PFNGLUNIFORMUI64VNVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMUI64NVPROC Ptr{Void}
typealias PFNGLPROGRAMUNIFORMUI64VNVPROC Ptr{Void}
typealias PFNGLTEXTUREBARRIERNVPROC Ptr{Void}
typealias PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC Ptr{Void}
typealias PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC Ptr{Void}
typealias PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC Ptr{Void}
typealias PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC Ptr{Void}
typealias PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC Ptr{Void}
typealias PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC Ptr{Void}
typealias PFNGLBEGINTRANSFORMFEEDBACKNVPROC Ptr{Void}
typealias PFNGLENDTRANSFORMFEEDBACKNVPROC Ptr{Void}
typealias PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC Ptr{Void}
typealias PFNGLBINDBUFFERRANGENVPROC Ptr{Void}
typealias PFNGLBINDBUFFEROFFSETNVPROC Ptr{Void}
typealias PFNGLBINDBUFFERBASENVPROC Ptr{Void}
typealias PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC Ptr{Void}
typealias PFNGLACTIVEVARYINGNVPROC Ptr{Void}
typealias PFNGLGETVARYINGLOCATIONNVPROC Ptr{Void}
typealias PFNGLGETACTIVEVARYINGNVPROC Ptr{Void}
typealias PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC Ptr{Void}
typealias PFNGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC Ptr{Void}
typealias PFNGLBINDTRANSFORMFEEDBACKNVPROC Ptr{Void}
typealias PFNGLDELETETRANSFORMFEEDBACKSNVPROC Ptr{Void}
typealias PFNGLGENTRANSFORMFEEDBACKSNVPROC Ptr{Void}
typealias PFNGLISTRANSFORMFEEDBACKNVPROC Ptr{Void}
typealias PFNGLPAUSETRANSFORMFEEDBACKNVPROC Ptr{Void}
typealias PFNGLRESUMETRANSFORMFEEDBACKNVPROC Ptr{Void}
typealias PFNGLDRAWTRANSFORMFEEDBACKNVPROC Ptr{Void}
typealias GLvdpauSurfaceNV GLintptr
typealias PFNGLVDPAUINITNVPROC Ptr{Void}
typealias PFNGLVDPAUFININVPROC Ptr{Void}
typealias PFNGLVDPAUREGISTERVIDEOSURFACENVPROC Ptr{Void}
typealias PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC Ptr{Void}
typealias PFNGLVDPAUISSURFACENVPROC Ptr{Void}
typealias PFNGLVDPAUUNREGISTERSURFACENVPROC Ptr{Void}
typealias PFNGLVDPAUGETSURFACEIVNVPROC Ptr{Void}
typealias PFNGLVDPAUSURFACEACCESSNVPROC Ptr{Void}
typealias PFNGLVDPAUMAPSURFACESNVPROC Ptr{Void}
typealias PFNGLVDPAUUNMAPSURFACESNVPROC Ptr{Void}
typealias PFNGLFLUSHVERTEXARRAYRANGENVPROC Ptr{Void}
typealias PFNGLVERTEXARRAYRANGENVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1I64NVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL2I64NVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL3I64NVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL4I64NVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1I64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL2I64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL3I64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL4I64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1UI64NVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL2UI64NVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL3UI64NVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL4UI64NVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL1UI64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL2UI64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL3UI64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBL4UI64VNVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBLI64VNVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBLUI64VNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBLFORMATNVPROC Ptr{Void}
typealias PFNGLBUFFERADDRESSRANGENVPROC Ptr{Void}
typealias PFNGLVERTEXFORMATNVPROC Ptr{Void}
typealias PFNGLNORMALFORMATNVPROC Ptr{Void}
typealias PFNGLCOLORFORMATNVPROC Ptr{Void}
typealias PFNGLINDEXFORMATNVPROC Ptr{Void}
typealias PFNGLTEXCOORDFORMATNVPROC Ptr{Void}
typealias PFNGLEDGEFLAGFORMATNVPROC Ptr{Void}
typealias PFNGLSECONDARYCOLORFORMATNVPROC Ptr{Void}
typealias PFNGLFOGCOORDFORMATNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBFORMATNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBIFORMATNVPROC Ptr{Void}
typealias PFNGLGETINTEGERUI64I_VNVPROC Ptr{Void}
typealias PFNGLAREPROGRAMSRESIDENTNVPROC Ptr{Void}
typealias PFNGLBINDPROGRAMNVPROC Ptr{Void}
typealias PFNGLDELETEPROGRAMSNVPROC Ptr{Void}
typealias PFNGLEXECUTEPROGRAMNVPROC Ptr{Void}
typealias PFNGLGENPROGRAMSNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMPARAMETERDVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMIVNVPROC Ptr{Void}
typealias PFNGLGETPROGRAMSTRINGNVPROC Ptr{Void}
typealias PFNGLGETTRACKMATRIXIVNVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBDVNVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBFVNVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBIVNVPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBPOINTERVNVPROC Ptr{Void}
typealias PFNGLISPROGRAMNVPROC Ptr{Void}
typealias PFNGLLOADPROGRAMNVPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETER4DNVPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETER4DVNVPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETER4FNVPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETER4FVNVPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETERS4DVNVPROC Ptr{Void}
typealias PFNGLPROGRAMPARAMETERS4FVNVPROC Ptr{Void}
typealias PFNGLREQUESTRESIDENTPROGRAMSNVPROC Ptr{Void}
typealias PFNGLTRACKMATRIXNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBPOINTERNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1DNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1DVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1FNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1FVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1SNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB1SVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2DNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2DVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2FNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2FVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2SNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB2SVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3DNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3DVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3FNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3FVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3SNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB3SVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4DNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4DVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4FNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4FVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4SNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4SVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4UBNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIB4UBVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS1DVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS1FVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS1SVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS2DVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS2FVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS2SVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS3DVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS3FVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS3SVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS4DVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS4FVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS4SVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBS4UBVNVPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI1IEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI2IEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI3IEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4IEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI1UIEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI2UIEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI3UIEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4UIEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI1IVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI2IVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI3IVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4IVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI1UIVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI2UIVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI3UIVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4UIVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4BVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4SVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4UBVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBI4USVEXTPROC Ptr{Void}
typealias PFNGLVERTEXATTRIBIPOINTEREXTPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBIIVEXTPROC Ptr{Void}
typealias PFNGLGETVERTEXATTRIBIUIVEXTPROC Ptr{Void}
typealias PFNGLBEGINVIDEOCAPTURENVPROC Ptr{Void}
typealias PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC Ptr{Void}
typealias PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC Ptr{Void}
typealias PFNGLENDVIDEOCAPTURENVPROC Ptr{Void}
typealias PFNGLGETVIDEOCAPTUREIVNVPROC Ptr{Void}
typealias PFNGLGETVIDEOCAPTURESTREAMIVNVPROC Ptr{Void}
typealias PFNGLGETVIDEOCAPTURESTREAMFVNVPROC Ptr{Void}
typealias PFNGLGETVIDEOCAPTURESTREAMDVNVPROC Ptr{Void}
typealias PFNGLVIDEOCAPTURENVPROC Ptr{Void}
typealias PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC Ptr{Void}
typealias PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC Ptr{Void}
typealias PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC Ptr{Void}
typealias PFNGLFRAMEBUFFERTEXTUREMULTIVIEWOVRPROC Ptr{Void}
typealias PFNGLHINTPGIPROC Ptr{Void}
typealias PFNGLDETAILTEXFUNCSGISPROC Ptr{Void}
typealias PFNGLGETDETAILTEXFUNCSGISPROC Ptr{Void}
typealias PFNGLFOGFUNCSGISPROC Ptr{Void}
typealias PFNGLGETFOGFUNCSGISPROC Ptr{Void}
typealias PFNGLSAMPLEMASKSGISPROC Ptr{Void}
typealias PFNGLSAMPLEPATTERNSGISPROC Ptr{Void}
typealias PFNGLPIXELTEXGENPARAMETERISGISPROC Ptr{Void}
typealias PFNGLPIXELTEXGENPARAMETERIVSGISPROC Ptr{Void}
typealias PFNGLPIXELTEXGENPARAMETERFSGISPROC Ptr{Void}
typealias PFNGLPIXELTEXGENPARAMETERFVSGISPROC Ptr{Void}
typealias PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC Ptr{Void}
typealias PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERFSGISPROC Ptr{Void}
typealias PFNGLPOINTPARAMETERFVSGISPROC Ptr{Void}
typealias PFNGLSHARPENTEXFUNCSGISPROC Ptr{Void}
typealias PFNGLGETSHARPENTEXFUNCSGISPROC Ptr{Void}
typealias PFNGLTEXIMAGE4DSGISPROC Ptr{Void}
typealias PFNGLTEXSUBIMAGE4DSGISPROC Ptr{Void}
typealias PFNGLTEXTURECOLORMASKSGISPROC Ptr{Void}
typealias PFNGLGETTEXFILTERFUNCSGISPROC Ptr{Void}
typealias PFNGLTEXFILTERFUNCSGISPROC Ptr{Void}
typealias PFNGLASYNCMARKERSGIXPROC Ptr{Void}
typealias PFNGLFINISHASYNCSGIXPROC Ptr{Void}
typealias PFNGLPOLLASYNCSGIXPROC Ptr{Void}
typealias PFNGLGENASYNCMARKERSSGIXPROC Ptr{Void}
typealias PFNGLDELETEASYNCMARKERSSGIXPROC Ptr{Void}
typealias PFNGLISASYNCMARKERSGIXPROC Ptr{Void}
typealias PFNGLFLUSHRASTERSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTCOLORMATERIALSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTLIGHTFSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTLIGHTFVSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTLIGHTISGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTLIGHTIVSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTLIGHTMODELFSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTLIGHTMODELFVSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTLIGHTMODELISGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTLIGHTMODELIVSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTMATERIALFSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTMATERIALFVSGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTMATERIALISGIXPROC Ptr{Void}
typealias PFNGLFRAGMENTMATERIALIVSGIXPROC Ptr{Void}
typealias PFNGLGETFRAGMENTLIGHTFVSGIXPROC Ptr{Void}
typealias PFNGLGETFRAGMENTLIGHTIVSGIXPROC Ptr{Void}
typealias PFNGLGETFRAGMENTMATERIALFVSGIXPROC Ptr{Void}
typealias PFNGLGETFRAGMENTMATERIALIVSGIXPROC Ptr{Void}
typealias PFNGLLIGHTENVISGIXPROC Ptr{Void}
typealias PFNGLFRAMEZOOMSGIXPROC Ptr{Void}
typealias PFNGLIGLOOINTERFACESGIXPROC Ptr{Void}
typealias PFNGLGETINSTRUMENTSSGIXPROC Ptr{Void}
typealias PFNGLINSTRUMENTSBUFFERSGIXPROC Ptr{Void}
typealias PFNGLPOLLINSTRUMENTSSGIXPROC Ptr{Void}
typealias PFNGLREADINSTRUMENTSSGIXPROC Ptr{Void}
typealias PFNGLSTARTINSTRUMENTSSGIXPROC Ptr{Void}
typealias PFNGLSTOPINSTRUMENTSSGIXPROC Ptr{Void}
typealias PFNGLGETLISTPARAMETERFVSGIXPROC Ptr{Void}
typealias PFNGLGETLISTPARAMETERIVSGIXPROC Ptr{Void}
typealias PFNGLLISTPARAMETERFSGIXPROC Ptr{Void}
typealias PFNGLLISTPARAMETERFVSGIXPROC Ptr{Void}
typealias PFNGLLISTPARAMETERISGIXPROC Ptr{Void}
typealias PFNGLLISTPARAMETERIVSGIXPROC Ptr{Void}
typealias PFNGLPIXELTEXGENSGIXPROC Ptr{Void}
typealias PFNGLDEFORMATIONMAP3DSGIXPROC Ptr{Void}
typealias PFNGLDEFORMATIONMAP3FSGIXPROC Ptr{Void}
typealias PFNGLDEFORMSGIXPROC Ptr{Void}
typealias PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC Ptr{Void}
typealias PFNGLREFERENCEPLANESGIXPROC Ptr{Void}
typealias PFNGLSPRITEPARAMETERFSGIXPROC Ptr{Void}
typealias PFNGLSPRITEPARAMETERFVSGIXPROC Ptr{Void}
typealias PFNGLSPRITEPARAMETERISGIXPROC Ptr{Void}
typealias PFNGLSPRITEPARAMETERIVSGIXPROC Ptr{Void}
typealias PFNGLTAGSAMPLEBUFFERSGIXPROC Ptr{Void}
typealias PFNGLCOLORTABLESGIPROC Ptr{Void}
typealias PFNGLCOLORTABLEPARAMETERFVSGIPROC Ptr{Void}
typealias PFNGLCOLORTABLEPARAMETERIVSGIPROC Ptr{Void}
typealias PFNGLCOPYCOLORTABLESGIPROC Ptr{Void}
typealias PFNGLGETCOLORTABLESGIPROC Ptr{Void}
typealias PFNGLGETCOLORTABLEPARAMETERFVSGIPROC Ptr{Void}
typealias PFNGLGETCOLORTABLEPARAMETERIVSGIPROC Ptr{Void}
typealias PFNGLFINISHTEXTURESUNXPROC Ptr{Void}
typealias PFNGLGLOBALALPHAFACTORBSUNPROC Ptr{Void}
typealias PFNGLGLOBALALPHAFACTORSSUNPROC Ptr{Void}
typealias PFNGLGLOBALALPHAFACTORISUNPROC Ptr{Void}
typealias PFNGLGLOBALALPHAFACTORFSUNPROC Ptr{Void}
typealias PFNGLGLOBALALPHAFACTORDSUNPROC Ptr{Void}
typealias PFNGLGLOBALALPHAFACTORUBSUNPROC Ptr{Void}
typealias PFNGLGLOBALALPHAFACTORUSSUNPROC Ptr{Void}
typealias PFNGLGLOBALALPHAFACTORUISUNPROC Ptr{Void}
typealias PFNGLDRAWMESHARRAYSSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUISUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUSSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUBSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUIVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUSVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUBVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEPOINTERSUNPROC Ptr{Void}
typealias PFNGLCOLOR4UBVERTEX2FSUNPROC Ptr{Void}
typealias PFNGLCOLOR4UBVERTEX2FVSUNPROC Ptr{Void}
typealias PFNGLCOLOR4UBVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLCOLOR4UBVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLCOLOR3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLCOLOR3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLNORMAL3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLNORMAL3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD4FVERTEX4FSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD4FVERTEX4FVSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC Ptr{Void}
typealias PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC Ptr{Void}
typealias PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC Ptr{Void}
typealias PFNGLBLENDEQUATIONSEPARATEATIPROC Ptr{Void}
typealias GLeglImageOES Ptr{Void}
typealias PFNGLEGLIMAGETARGETTEXTURE2DOESPROC Ptr{Void}
typealias PFNGLEGLIMAGETARGETRENDERBUFFERSTORAGEOESPROC Ptr{Void}

@cenum(cudaGLDeviceList,
    cudaGLDeviceListAll = 1,
    cudaGLDeviceListCurrentFrame = 2,
    cudaGLDeviceListNextFrame = 3,
)
@cenum(cudaGLMapFlags,
    cudaGLMapFlagsNone = 0,
    cudaGLMapFlagsReadOnly = 1,
    cudaGLMapFlagsWriteDiscard = 2,
)
