/*
 * This file is part of cpucudaCPU, a HIP implementation based on OpenMP
 *
 * Copyright (c) 2018,2019 Aksel Alpay
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#ifndef CPUCUDA_RUNTIME_H
#define CPUCUDA_RUNTIME_H

#define __CPUCUDA__

#ifndef __global__
#define __global__
#endif

#ifndef __device__
#define __device__
#endif

#ifndef __host__
#define __host__
#endif

#ifndef __constant__
#define __constant__ const
#endif

#ifndef __shared__
#define __shared__ static
#endif


#include <cstddef>
#include <climits>
#include <cstring>
#include <limits>
#include <memory>
#include <cmath>
#include <stdexcept>

#include "detail/runtime.hpp"


using cpucuda::dim3;

#define HIP_KERNEL_NAME(...) __VA_ARGS__

typedef int cpucudaLaunchParm;

#define _cpucuda_runtime (cpucuda::runtime::get())

// Use a macro instead of a function with variadic template arguments
// to avoid different properties of kernel template argument deduction
// based on kernel arguments compared to AMDs implementation
#define cpucudaLaunchKernelGGL(f, grid, block, shared_mem, stream, ...) \
  _cpucuda_runtime.submit_kernel(grid, block, shared_mem, stream, \
                                 [=](dim3 gridDim, dim3 blockDim, dim3 blockIdx){ \
                                   f(gridDim, blockDim, blockIdx, __VA_ARGS__); \
                                 })

#define cpucudaLaunchKernel(f, grid, block, shared_mem, stream, ...)    \
  cpucudaLaunchKernelGGL(f, grid, block, shared_mem, stream, 0, __VA_ARGS__)

#define cpucudaLaunchTask(f, stream, ...)                               \
  _cpucuda_runtime.submit_operation( \
    [=](dim3 gridDim, dim3 blockDim, dim3 blockIdx, dim3 threadIdx){ \
      f(gridDim, blockDim, blockIdx, threadIdx, __VA_ARGS__); \
    }, stream)

#define cpucudaLaunchSequentialKernel(f, stream, scratch_mem, ...)      \
  _cpucuda_runtime.submit_unparallelized_kernel(scratch_mem, stream, \
                                                [=](dim3 gridDim, dim3 blockDim, dim3 blockIdx, dim3 threadIdx){ \
                                                  f(gridDim, blockDim, blockIdx, threadIdx, __VA_ARGS__); \
	                                              })

// TODO
#define cpucudaLaunchKernelNoBarrier(f, grid, block, stream, ...)


// TODO This dev() may be different if changed during kernel execution?
// This is not a problem at the moment since we only treat the case of
// one effective host device for now.

// TODO might have to pass shared memory as an argument to device side functions

#define HIP_DYNAMIC_SHARED_MEMORY _cpucuda_runtime.dev().get_dynamic_shared_memory()


#define HIP_SYMBOL(X) X

typedef enum cpucudaMemcpyKind {
    cpucudaMemcpyHostToHost,
    cpucudaMemcpyHostToDevice,
    cpucudaMemcpyDeviceToHost,
    cpucudaMemcpyDeviceToDevice,
    cpucudaMemcpyDefault
} cpucudaMemcpyKind;

/* Textures are unimplemented

// cpucudaTextureAddressMode
#define cpucudaTextureAddressMode 0
#define cpucudaAddressModeWrap 0
#define cpucudaAddressModeClamp 0
#define cpucudaAddressModeMirror 0
#define cpucudaAddressModeBorder 0

// cpucudaTextureFilterMode
#define cpucudaTextureFilterMode 0
#define cpucudaFilterModePoint 0
#define cpucudaFilterModeLinear 0

// cpucudaTextureReadMode
enum cpucudaTextureReadMode {};
#define cpucudaReadModeElementType 0
#define cpucudaReadModeNormalizedFloat 0

template<class T, int dim, cpucudaTextureReadMode readMode>
struct texture 
{};

typedef enum cpucudaChannelFormatKind {
    cpucudaChannelFormatKindSigned = 0,
    cpucudaChannelFormatKindUnsigned = 1,
    cpucudaChannelFormatKindFloat = 2,
    cpucudaChannelFormatKindNone = 3
} cpucudaChannelFormatKind;

#define cpucudaSurfaceBoundaryMode 0
#define cpucudaBoundaryModeZero 0
#define cpucudaBoundaryModeTrap 0
#define cpucudaBoundaryModeClamp 0

// cpucudaResourceType
#define cpucudaResourceType 0
#define cpucudaResourceTypeArray 0
#define cpucudaResourceTypeMipmappedArray 0
#define cpucudaResourceTypeLinear 0
#define cpucudaResourceTypePitch2D 0 */

#define cpucudaEventDefault cpucudaEvent_t()
#define cpucudaEventBlockingSync 0
#define cpucudaEventDisableTiming 0
#define cpucudaEventInterprocess 0
#define cpucudaEventReleaseToDevice 0
#define cpucudaEventReleaseToSystem 0


#define cpucudaHostMallocDefault 0x0
#define cpucudaHostMallocPortable 0x1
#define cpucudaHostMallocMapped 0x2
#define cpucudaHostMallocWriteCombined 0x4
#define cpucudaHostMallocCoherent 0x40000000
#define cpucudaHostMallocNonCoherent 0x80000000

#define cpucudaHostRegisterPortable 0
#define cpucudaHostRegisterMapped 0


typedef int cpucudaEvent_t;
typedef int cpucudaStream_t;
typedef int cpucudaIpcEventHandle_t;
typedef int cpucudaIpcMemHandle_t;
typedef int cpucudaLimit_t;
typedef int cpucudaFuncCache_t;
typedef int cpucudaCtx_t;
typedef int cpucudaSharedMemConfig;
typedef int cpucudaFuncCache;
typedef int cpucudaJitOption;
typedef int cpucudaDevice_t;
typedef int cpucudaModule_t;
typedef int cpucudaFunction_t;
typedef void* cpucudaDeviceptr_t;
typedef int cpucudaArray;
typedef int* cpucudaArray_const_t;
typedef int cpucudaFuncAttributes;
typedef int cpucudaCtx_t;

typedef int cpucudaTextureObject_t;
typedef int cpucudaSurfaceObject_t;
typedef int cpucudaResourceDesc;
typedef int cpucudaTextureDesc;
typedef int cpucudaResourceViewDesc;
typedef int textureReference;

enum cpucudaError_t
{
  cpucudaSuccess,
  cpucudaErrorInvalidContext,
  cpucudaErrorInvalidKernelFile,
  cpucudaErrorMemoryAllocation,
  cpucudaErrorInitializationError,
  cpucudaErrorLaunchFailure,
  cpucudaErrorLaunchOutOfResources,
  cpucudaErrorInvalidDevice,
  cpucudaErrorInvalidValue,
  cpucudaErrorInvalidDevicePointer,
  cpucudaErrorInvalidMemcpyDirection,
  cpucudaErrorUnknown,
  cpucudaErrorInvalidResourceHandle,
  cpucudaErrorNotReady,
  cpucudaErrorNoDevice,
  cpucudaErrorPeerAccessAlreadyEnabled,
  cpucudaErrorPeerAccessNotEnabled,
  cpucudaErrorRuntimeMemory,
  cpucudaErrorRuntimeOther,
  cpucudaErrorHostMemoryAlreadyRegistered,
  cpucudaErrorHostMemoryNotRegistered,
  cpucudaErrorMapBufferObjectFailed,
  cpucudaErrorTbd
};

typedef void* cpucudaPitchedPtr;
//struct cpucudaExtent {};

//struct cpucudaChannelFormatDesc {};

struct cpucudaDeviceArch_t
{
  unsigned hasGlobalInt32Atomics    : 1;
  unsigned hasGlobalFloatAtomicExch : 1;
  unsigned hasSharedInt32Atomics    : 1;
  unsigned hasSharedFloatAtomicExch : 1;
  unsigned hasFloatAtomicAdd        : 1;

  // 64-bit Atomics
  unsigned hasGlobalInt64Atomics    : 1;
  unsigned hasSharedInt64Atomics    : 1;

  // Doubles
  unsigned hasDoubles               : 1;

  // Warp cross-lane operations
  unsigned hasWarpVote              : 1;
  unsigned hasWarpBallot            : 1;
  unsigned hasWarpShuffle           : 1;
  unsigned hasFunnelShift           : 1;

  // Sync
  unsigned hasThreadFenceSystem     : 1;
  unsigned hasSyncThreadsExt        : 1;

  // Misc
  unsigned hasSurfaceFuncs          : 1;
  unsigned has3dGrid                : 1;
  unsigned hasDynamicParallelism    : 1;
};

struct cpucudaDeviceProp_t
{
  char name[256];
  size_t totalGlobalMem;
  size_t sharedMemPerBlock;
  int regsPerBlock;
  int warpSize;
  int maxThreadsPerBlock;
  int maxThreadsDim[3];
  int maxGridSize[3];
  int clockRate;
  int memoryClockRate;
  int memoryBusWidth;
  size_t totalConstMem;
  int major;
  int minor;
  int multiProcessorCount;
  int l2CacheSize;
  int maxThreadsPerMultiProcessor;
  int computeMode;
  int clockInstructionRate;
  cpucudaDeviceArch_t arch;
  int concurrentKernels;
  int pciBusID;
  int pciDeviceID;
  size_t maxSharedMemoryPerMultiProcessor;
  int isMultiGpuBoard;
  int canMapHostMemory;
  int gcnArch;
  int ECCEnabled;
};


struct cpucudaMemcpy3DParms {};
enum cpucudaDeviceAttribute_t
{
  cpucudaDeviceAttributeMaxThreadsPerBlock,
  cpucudaDeviceAttributeMaxBlockDimX,
  cpucudaDeviceAttributeMaxBlockDimY,
  cpucudaDeviceAttributeMaxBlockDimZ,
  cpucudaDeviceAttributeMaxGridDimX,
  cpucudaDeviceAttributeMaxGridDimY,
  cpucudaDeviceAttributeMaxGridDimZ,
  cpucudaDeviceAttributeMaxSharedMemoryPerBlock,
  cpucudaDeviceAttributeTotalConstantMemory,
  cpucudaDeviceAttributeWarpSize,
  cpucudaDeviceAttributeMaxRegistersPerBlock,
  cpucudaDeviceAttributeClockRate,
  cpucudaDeviceAttributeMemoryClockRate,
  cpucudaDeviceAttributeMemoryBusWidth,
  cpucudaDeviceAttributeMultiprocessorCount,
  cpucudaDeviceAttributeComputeMode,
  cpucudaDeviceAttributeL2CacheSize,
  cpucudaDeviceAttributeMaxThreadsPerMultiProcessor,
  cpucudaDeviceAttributeComputeCapabilityMajor,
  cpucudaDeviceAttributeComputeCapabilityMinor,
  cpucudaDeviceAttributeConcurrentKernels,
  cpucudaDeviceAttributePciBusId,
  cpucudaDeviceAttributePciDeviceId,
  cpucudaDeviceAttributeMaxSharedMemoryPerMultiprocessor,
  cpucudaDeviceAttributeIsMultiGpuBoard,
  cpucudaDeviceAttributeIntegrated,
};

struct cpucudaPointerAttribute_t
{
  cpucudaDevice_t device;
  cpucudaDeviceptr_t devicePointer;
  void* hostPointer;
  bool isManaged;
  int allocationFlags;
};

#define cpucudaStreamDefault 0
#define cpucudaStreamNonBlocking 0

#define cpucudaSharedMemBankSizeDefault 0
#define cpucudaSharedMemBankSizeFourByte 0
#define cpucudaSharedMemBankSizeEightByte 0

typedef void(*cpucudaStreamCallback_t)(cpucudaStream_t, cpucudaError_t, void*);


/*
cpucudaError_t cpucudaPeekAtLastError();
*/

cpucudaError_t cpucudaDeviceReset();
cpucudaError_t cpucudaGetLastError();

inline
cpucudaError_t cpucudaMalloc(void** ptr, size_t size)
{
  *ptr = cpucuda::detail::aligned_malloc(cpucuda::detail::default_alignment, size);

  if(*ptr == nullptr)
    return cpucudaErrorMemoryAllocation;

  return cpucudaSuccess;
}

//cpucudaError_t cpucudaMallocPitch(void** ptr, size_t* pitch, size_t width, size_t height);
//cpucudaError_t cpucudaMalloc3D(cpucudaPitchedPtr* pitchedDevPtr, cpucudaExtent extent);

inline
cpucudaError_t cpucudaFree(void* ptr)
{
  cpucuda::detail::aligned_free(ptr);
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaMallocHost(void** ptr, size_t size)
{
  return cpucudaMalloc(ptr, size);
}

#define cpucudaMemAttachGlobal 0
#define cpucudaMemAttachHost 1

template<class T>
inline
cpucudaError_t cpucudaMallocManaged(T** ptr, size_t size, unsigned flags = cpucudaMemAttachGlobal)
{
  return cpucudaMalloc(reinterpret_cast<void**>(ptr), size);
}

inline
cpucudaError_t cpucudaHostAlloc(void** ptr, size_t size, unsigned int flags)
{
  return cpucudaMalloc(ptr, size);
}

inline
cpucudaError_t cpucudaHostMalloc(void** ptr, size_t size, unsigned int flags = 0)
{
  return cpucudaMalloc(ptr, size);
}

/*
cpucudaError_t cpucudaMallocArray(cpucudaArray** array,
                                        const cpucudaChannelFormatDesc* desc,
                                        size_t width, size_t height,
                                        unsigned int flags);
cpucudaError_t cpucudaMalloc3DArray(cpucudaArray** array, const struct cpucudaChannelFormatDesc* desc,
                            struct cpucudaExtent extent, unsigned int flags);
cpucudaError_t cpucudaFreeArray(cpucudaArray* array);
cpucudaError_t cpucudaHostGetDevicePointer(void** devPtr, void* hostPtr, unsigned int flags);
cpucudaError_t cpucudaHostGetFlags(unsigned int* flagsPtr, void* hostPtr);
cpucudaError_t cpucudaHostRegister(void* ptr, size_t size, unsigned int flags);
cpucudaError_t cpucudaHostUnregister(void* ptr);*/

inline
cpucudaError_t cpucudaFreeHost(void* ptr)
{
  return cpucudaFree(ptr);
}

inline
cpucudaError_t cpucudaHostFree(void* ptr)
{
  return cpucudaFree(ptr);
}

inline
cpucudaError_t cpucudaSetDevice(int device)
{
  if(device != 0)
    return cpucudaErrorInvalidDevice;

  _cpucuda_runtime.set_device(device);
  return cpucudaSuccess;
}

//cpucudaError_t cpucudaChooseDevice(int* device, const cpucudaDeviceProp_t* prop);
inline
cpucudaError_t cpucudaStreamCreate(cpucudaStream_t* stream)
{
  *stream = _cpucuda_runtime.create_blocking_stream();
  return cpucudaSuccess;
}

//TODO Make sure semantics are correct for all allowed values of flags
inline
cpucudaError_t cpucudaStreamCreateWithFlags(cpucudaStream_t* stream, unsigned int flags)
{
  if(flags == cpucudaStreamDefault)
    return cpucudaStreamCreate(stream);
  else if (flags == cpucudaStreamNonBlocking) 
  {
    *stream = _cpucuda_runtime.create_async_stream();
    return cpucudaSuccess;
  }

  return cpucudaErrorInvalidValue;
}

inline
cpucudaError_t cpucudaStreamSynchronize(cpucudaStream_t stream)
{
  _cpucuda_runtime.streams().get(stream)->wait();
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaStreamDestroy(cpucudaStream_t stream)
{
  _cpucuda_runtime.destroy_stream(stream);
  return cpucudaSuccess;
}

//TODO Make sure semantics are correct for all allowed values of flags
inline
cpucudaError_t cpucudaStreamWaitEvent(cpucudaStream_t stream, cpucudaEvent_t event,
                                            unsigned int flags)
{
  std::shared_ptr<cpucuda::event> evt = _cpucuda_runtime.events().get_shared(event);
  _cpucuda_runtime.submit_operation([evt](){
    // TODO store error code
    evt->wait();
  }, stream);
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaStreamQuery(cpucudaStream_t stream)
{
  cpucuda::stream* s = _cpucuda_runtime.streams().get(stream);
  
  if(s->is_idle())
    return cpucudaSuccess;

  return cpucudaErrorNotReady;
}

//TODO Make sure semantics are correct for all allowed values of flags
inline
cpucudaError_t cpucudaStreamAddCallback(cpucudaStream_t stream,
                                cpucudaStreamCallback_t callback, void *userData,
                                unsigned int flags) 
{
  _cpucuda_runtime.submit_operation([stream, callback, userData](){
    // TODO guarantee correct error propagation
    callback(stream, cpucudaSuccess, userData);
  }, stream);
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaMemcpyAsync(void* dst, const void* src, size_t sizeBytes,
                          cpucudaMemcpyKind copyKind, cpucudaStream_t stream = 0)
{
  if(!_cpucuda_runtime.streams().is_valid(stream))
    return cpucudaErrorInvalidValue;

  _cpucuda_runtime.submit_operation([=](){
    memcpy(dst, src, sizeBytes);
  }, stream);

  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaMemcpy(void* dst, const void* src, size_t sizeBytes,
                                   cpucudaMemcpyKind copyKind)
{
  cpucudaMemcpyAsync(dst, src, sizeBytes, copyKind, 0);
  _cpucuda_runtime.streams().get(0)->wait();
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaMemcpyHtoD(cpucudaDeviceptr_t dst, void* src, size_t size)
{
  return cpucudaMemcpy(dst, src, size, cpucudaMemcpyHostToDevice);
}

inline
cpucudaError_t cpucudaMemcpyDtoH(void* dst, cpucudaDeviceptr_t src, size_t size)
{
  return cpucudaMemcpy(dst, src, size, cpucudaMemcpyDeviceToHost);
}

inline
cpucudaError_t cpucudaMemcpyDtoD(cpucudaDeviceptr_t dst, cpucudaDeviceptr_t src, size_t size)
{
  return cpucudaMemcpy(dst, src, size, cpucudaMemcpyDeviceToDevice);
}

inline
cpucudaError_t cpucudaMemcpyHtoDAsync(cpucudaDeviceptr_t dst, void* src, size_t size,
                                            cpucudaStream_t stream)
{
  return cpucudaMemcpyAsync(dst, src, size, cpucudaMemcpyHostToDevice, stream);
}

inline
cpucudaError_t cpucudaMemcpyDtoHAsync(void* dst, cpucudaDeviceptr_t src, size_t size,
                                            cpucudaStream_t stream)
{
  return cpucudaMemcpyAsync(dst, src, size, cpucudaMemcpyDeviceToHost, stream);
}

inline
cpucudaError_t cpucudaMemcpyDtoDAsync(cpucudaDeviceptr_t dst, cpucudaDeviceptr_t src, size_t size,
                                            cpucudaStream_t stream)
{
  return cpucudaMemcpyAsync(dst, src, size, cpucudaMemcpyDeviceToDevice, stream);
}

inline
cpucudaError_t cpucudaMemcpyToSymbolAsync(const void* symbol, const void* src,
                                  size_t sizeBytes, size_t offset,
                                  cpucudaMemcpyKind copyType,
                                  cpucudaStream_t stream = 0)
{
  char* base_ptr = static_cast<char*>(const_cast<void*>(symbol));
  void* ptr = static_cast<void*>(base_ptr + offset);
  return cpucudaMemcpyAsync(ptr, src, sizeBytes, copyType, stream);
}

inline
cpucudaError_t cpucudaMemcpyFromSymbolAsync(void* dst, const void* symbolName,
                                    size_t sizeBytes, size_t offset,
                                    cpucudaMemcpyKind kind,
                                    cpucudaStream_t stream = 0)
{
  const void* ptr = 
    static_cast<const void*>(static_cast<const char*>(symbolName)+offset);
  return cpucudaMemcpyAsync(dst, ptr, sizeBytes, kind, stream);
}

inline
cpucudaError_t cpucudaMemcpyToSymbol(const void* symbol, const void* src, size_t sizeBytes,
                            size_t offset = 0,
                            cpucudaMemcpyKind copyType = cpucudaMemcpyHostToDevice)
{
  cpucudaError_t err = 
    cpucudaMemcpyToSymbolAsync(symbol, src, sizeBytes, offset, copyType, 0);

  if(err != cpucudaSuccess)
    return err;

  _cpucuda_runtime.streams().get(0)->wait();
  return err;
}

inline
cpucudaError_t cpucudaMemcpyFromSymbol(void *dst, const void *symbolName,
                               size_t sizeBytes, size_t offset = 0,
                               cpucudaMemcpyKind kind = cpucudaMemcpyDeviceToHost) 
{
  cpucudaError_t err = 
    cpucudaMemcpyFromSymbolAsync(dst, symbolName, sizeBytes, offset, kind, 0);
    
  if(err != cpucudaSuccess)
    return err;

  _cpucuda_runtime.streams().get(0)->wait();
  return err;
}


cpucudaError_t cpucudaMemcpy3D(const struct cpucudaMemcpy3DParms *p);

inline
cpucudaError_t cpucudaMemcpy2DAsync(void* dst, size_t dpitch, const void* src, size_t spitch,
                                          size_t width, size_t height, cpucudaMemcpyKind kind,
                                          cpucudaStream_t stream)
{
  if(!_cpucuda_runtime.streams().is_valid(stream))
    return cpucudaErrorInvalidValue;

  _cpucuda_runtime.submit_operation([=](){
    for(size_t row = 0; row < height; ++row)
    {
      void* row_dst_begin = reinterpret_cast<char*>(dst) + row * dpitch;
      const void* row_src_begin = reinterpret_cast<const char*>(src) + row * spitch;

      memcpy(row_dst_begin, row_src_begin, width);
    }
  }, stream);
  
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaMemcpy2D(void* dst, size_t dpitch, const void* src, size_t spitch,
                                     size_t width, size_t height, cpucudaMemcpyKind kind)
{
  cpucudaError_t err = cpucudaMemcpy2DAsync(dst, dpitch, src, spitch, width, height, kind, 0);

  if(err != cpucudaSuccess)
    return err;

  _cpucuda_runtime.streams().get(0)->wait();
  return err;
}

cpucudaError_t cpucudaMemcpy2DToArray(cpucudaArray* dst, size_t wOffset, size_t hOffset,
                                            const void* src, size_t spitch, size_t width,
                                            size_t height, cpucudaMemcpyKind kind);

cpucudaError_t cpucudaMemcpyToArray(cpucudaArray* dst, size_t wOffset, size_t hOffset,
                                          const void* src, size_t count, cpucudaMemcpyKind kind);

cpucudaError_t cpucudaMemcpyFromArray(void* dst, cpucudaArray_const_t srcArray, size_t wOffset,
                                            size_t hOffset, size_t count, cpucudaMemcpyKind kind);

cpucudaError_t cpucudaMemcpyAtoH(void* dst, cpucudaArray* srcArray, size_t srcOffset,
                                       size_t count);

cpucudaError_t cpucudaMemcpyHtoA(cpucudaArray* dstArray, size_t dstOffset, const void* srcHost,
                                       size_t count);

inline
cpucudaError_t cpucudaDeviceSynchronize()
{
  _cpucuda_runtime.streams().for_each([](cpucuda::stream* s){
    s->wait();
  });
  return cpucudaSuccess;
}

cpucudaError_t cpucudaDeviceGetCacheConfig(cpucudaFuncCache_t* pCacheConfig);

const char* cpucudaGetErrorString(cpucudaError_t error);

const char* cpucudaGetErrorName(cpucudaError_t error);

inline
cpucudaError_t cpucudaGetDeviceCount(int* count)
{
  *count = 1;
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaGetDevice(int* device)
{
  *device = 0;
  return cpucudaSuccess;
}

/*
cpucudaError_t cpucudaIpcCloseMemHandle(void* devPtr);

cpucudaError_t cpucudaIpcGetEventHandle(cpucudaIpcEventHandle_t* handle, cpucudaEvent_t event);

cpucudaError_t cpucudaIpcGetMemHandle(cpucudaIpcMemHandle_t* handle, void* devPtr);

cpucudaError_t cpucudaIpcOpenEventHandle(cpucudaEvent_t* event, cpucudaIpcEventHandle_t handle);

cpucudaError_t cpucudaIpcOpenMemHandle(void** devPtr, cpucudaIpcMemHandle_t handle,
                                             unsigned int flags);
*/
inline
cpucudaError_t cpucudaMemsetAsync(void* devPtr, int value, size_t count,
                                        cpucudaStream_t stream = 0)
{
  if(!_cpucuda_runtime.streams().is_valid(stream))
    return cpucudaErrorInvalidValue;
  
  _cpucuda_runtime.submit_operation([=](){
    memset(devPtr, value, count);
  }, stream);

  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaMemset(void* devPtr, int value, size_t count)
{
  cpucudaError_t err = cpucudaMemsetAsync(devPtr, value, count, 0);
  if(err != cpucudaSuccess)
    return err;

  _cpucuda_runtime.streams().get(0)->wait();
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaMemsetD8(cpucudaDeviceptr_t dest, unsigned char value, size_t sizeBytes)
{
  return cpucudaMemset(dest, value, sizeBytes);
}

/*
cpucudaError_t cpucudaMemset2D(void* dst, size_t pitch, int value, size_t width, size_t height);

cpucudaError_t cpucudaMemset2DAsync(void* dst, size_t pitch, int value, size_t width, size_t height, cpucudaStream_t stream = 0);

cpucudaError_t cpucudaMemset3D(cpucudaPitchedPtr pitchedDevPtr, int  value, cpucudaExtent extent );

cpucudaError_t cpucudaMemset3DAsync(cpucudaPitchedPtr pitchedDevPtr, int  value, cpucudaExtent extent, cpucudaStream_t stream = 0);
*/

inline
cpucudaError_t cpucudaGetDeviceProperties(cpucudaDeviceProp_t* p_prop, int device)
{
  if(device != 0)
    return cpucudaErrorInvalidDevice;

  static const char device_name[] = "cpucudaCPU OpenMP host device";
  int max_dim = std::numeric_limits<int>::max();

  // TODO add descriptive message
  static_assert(sizeof device_name <= sizeof p_prop->name, "");
  memcpy(p_prop->name, device_name, sizeof device_name);

  // TODO: Find available memory
  p_prop->totalGlobalMem = std::numeric_limits<size_t>::max();
  p_prop->sharedMemPerBlock = _cpucuda_runtime.dev().get_max_shared_memory();
  p_prop->regsPerBlock = std::numeric_limits<int>::max();
  p_prop->warpSize = 1;
  p_prop->maxThreadsPerBlock = _cpucuda_runtime.dev().get_max_threads();
  p_prop->maxGridSize[0] = max_dim;
  p_prop->maxGridSize[1] = max_dim;
  p_prop->maxGridSize[2] = max_dim;
  p_prop->maxGridSize[0] = max_dim;
  p_prop->maxGridSize[1] = max_dim;
  p_prop->maxGridSize[2] = max_dim;
  // TODO: Find actual value
  p_prop->clockRate = 1;
  p_prop->memoryClockRate = 1;
  p_prop->memoryBusWidth = 1;
  p_prop->totalConstMem = std::numeric_limits<std::size_t>::max();
  p_prop->major = 1;
  p_prop->minor = 0;
  p_prop->multiProcessorCount = _cpucuda_runtime.dev().get_num_compute_units();
  // TODO: Find actual value
  p_prop->l2CacheSize = std::numeric_limits<int>::max();
  p_prop->maxThreadsPerMultiProcessor = p_prop->maxThreadsPerBlock;
  p_prop->computeMode = 0;
  p_prop->clockInstructionRate = p_prop->clockRate;

  cpucudaDeviceArch_t arch;
  arch.hasGlobalInt32Atomics = 1;
  arch.hasGlobalFloatAtomicExch = 1;
  arch.hasSharedInt32Atomics = 1;
  arch.hasSharedFloatAtomicExch = 1;
  arch.hasFloatAtomicAdd = 1;
  arch.hasGlobalInt64Atomics = 1;
  arch.hasSharedInt64Atomics = 1;
  arch.hasDoubles = 1;
  arch.hasWarpVote = 0;
  arch.hasWarpBallot = 0;
  arch.hasWarpShuffle = 0;
  arch.hasFunnelShift = 0;
  arch.hasThreadFenceSystem = 1;
  arch.hasSyncThreadsExt = 1;
  arch.hasSurfaceFuncs = 0;
  arch.has3dGrid = 1;
  arch.hasDynamicParallelism = 0;

  p_prop->arch = arch;
  p_prop->concurrentKernels = 1;
  p_prop->pciBusID = 0;
  p_prop->pciDeviceID = 0;
  p_prop->maxSharedMemoryPerMultiProcessor = p_prop->sharedMemPerBlock;
  p_prop->isMultiGpuBoard = 0;
  p_prop->canMapHostMemory = 1;
  p_prop->gcnArch = 0;
  
  return cpucudaSuccess;
}

cpucudaError_t cpucudaDeviceGetAttribute(int* pi, cpucudaDeviceAttribute_t attr, int device);

cpucudaError_t cpucudaOccupancyMaxActiveBlocksPerMultiprocessor(int* numBlocks,
                                                        const void* func,
                                                        int blockSize,
                                                        size_t dynamicSMemSize);

cpucudaError_t cpucudaPointerGetAttributes(cpucudaPointerAttribute_t* attributes, void* ptr);

cpucudaError_t cpucudaMemGetInfo(size_t* free, size_t* total);

inline
cpucudaError_t cpucudaEventCreate(cpucudaEvent_t* event)
{
  *event = _cpucuda_runtime.create_event();
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaEventRecord(cpucudaEvent_t event, cpucudaStream_t stream = 0)
{
  if(!_cpucuda_runtime.events().is_valid(event) ||
     !_cpucuda_runtime.streams().is_valid(stream))
    return cpucudaErrorInvalidValue;

  std::shared_ptr<cpucuda::event> evt = _cpucuda_runtime.events().get_shared(event);
  _cpucuda_runtime.submit_operation([evt](){
    evt->mark_as_finished();
  }, stream);
  return cpucudaSuccess;
}

inline
cpucudaError_t cpucudaEventSynchronize(cpucudaEvent_t event)
{
  if(!_cpucuda_runtime.events().is_valid(event))
    return cpucudaErrorInvalidValue;

  cpucuda::event* evt = _cpucuda_runtime.events().get(event);
  evt->wait();

  if(evt->is_complete())
    return cpucudaSuccess;

  return cpucudaErrorUnknown;
}

inline
cpucudaError_t cpucudaEventElapsedTime(float* ms, cpucudaEvent_t start, cpucudaEvent_t stop)
{
  if(!_cpucuda_runtime.events().is_valid(start) || !_cpucuda_runtime.events().is_valid(stop))
    return cpucudaErrorInvalidValue;

  cpucuda::event* start_evt = _cpucuda_runtime.events().get(start);
  cpucuda::event* stop_evt = _cpucuda_runtime.events().get(stop);
  if(start_evt->is_complete() && stop_evt->is_complete())
  {
    *ms = static_cast<float>(stop_evt->timestamp_ns() - start_evt->timestamp_ns()) / 1e6f;
    return cpucudaSuccess;
  }

  return cpucudaErrorUnknown;
}

inline
cpucudaError_t cpucudaEventDestroy(cpucudaEvent_t event)
{
  if(!_cpucuda_runtime.events().is_valid(event))
    return cpucudaErrorInvalidValue;

  _cpucuda_runtime.destroy_event(event);
  return cpucudaSuccess;
}

cpucudaError_t cpucudaDriverGetVersion(int* driverVersion);

inline
cpucudaError_t cpucudaRuntimeGetVersion(int* runtimeVersion)
{
  *runtimeVersion = 99999;
  return cpucudaSuccess;
}

cpucudaError_t cpucudaDeviceCanAccessPeer(int* canAccessPeer, int device, int peerDevice);

cpucudaError_t cpucudaDeviceDisablePeerAccess(int peerDevice);

cpucudaError_t cpucudaDeviceEnablePeerAccess(int peerDevice, unsigned int flags);
cpucudaError_t cpucudaCtxDisablePeerAccess(cpucudaCtx_t peerCtx);

cpucudaError_t cpucudaCtxEnablePeerAccess(cpucudaCtx_t peerCtx, unsigned int flags);

cpucudaError_t cpucudaDevicePrimaryCtxGetState(cpucudaDevice_t dev, unsigned int* flags,
                                                     int* active);

cpucudaError_t cpucudaDevicePrimaryCtxRelease(cpucudaDevice_t dev);

cpucudaError_t cpucudaDevicePrimaryCtxRetain(cpucudaCtx_t* pctx, cpucudaDevice_t dev);

cpucudaError_t cpucudaDevicePrimaryCtxReset(cpucudaDevice_t dev);

cpucudaError_t cpucudaDevicePrimaryCtxSetFlags(cpucudaDevice_t dev, unsigned int flags);

cpucudaError_t cpucudaMemGetAddressRange(cpucudaDeviceptr_t* pbase, size_t* psize,
                                               cpucudaDeviceptr_t dptr);

cpucudaError_t cpucudaMemcpyPeer(void* dst, int dstDevice, const void* src, int srcDevice,
                                       size_t count);

cpucudaError_t cpucudaMemcpyPeerAsync(void* dst, int dstDevice, const void* src,
                                            int srcDevice, size_t count,
                                            cpucudaStream_t stream = 0);

// Profile APIs:
cpucudaError_t cpucudaProfilerStart();
cpucudaError_t cpucudaProfilerStop();

cpucudaError_t cpucudaSetDeviceFlags(unsigned int flags);

cpucudaError_t cpucudaEventCreateWithFlags(cpucudaEvent_t* event, unsigned int flags);

inline
cpucudaError_t cpucudaEventQuery(cpucudaEvent_t event)
{
  if(!_cpucuda_runtime.events().is_valid(event))
    return cpucudaErrorInvalidValue;

  bool is_ready = _cpucuda_runtime.events().get(event)->is_complete();

  if(!is_ready)
    return cpucudaErrorNotReady;
  return cpucudaSuccess;
}

/*
cpucudaError_t cpucudaCtxCreate(cpucudaCtx_t* ctx, unsigned int flags, cpucudaDevice_t device);

cpucudaError_t cpucudaCtxDestroy(cpucudaCtx_t ctx);

cpucudaError_t cpucudaCtxPopCurrent(cpucudaCtx_t* ctx);

cpucudaError_t cpucudaCtxPushCurrent(cpucudaCtx_t ctx);

cpucudaError_t cpucudaCtxSetCurrent(cpucudaCtx_t ctx);

cpucudaError_t cpucudaCtxGetCurrent(cpucudaCtx_t* ctx);

cpucudaError_t cpucudaCtxGetDevice(cpucudaDevice_t* device);

cpucudaError_t cpucudaCtxGetApiVersion(cpucudaCtx_t ctx, int* apiVersion);

cpucudaError_t cpucudaCtxGetCacheConfig(cpucudaFuncCache* cacheConfig);

cpucudaError_t cpucudaCtxSetCacheConfig(cpucudaFuncCache cacheConfig);

cpucudaError_t cpucudaCtxSetSharedMemConfig(cpucudaSharedMemConfig config);

cpucudaError_t cpucudaCtxGetSharedMemConfig(cpucudaSharedMemConfig* pConfig);

cpucudaError_t cpucudaCtxSynchronize(void);

cpucudaError_t cpucudaCtxGetFlags(unsigned int* flags);

cpucudaError_t cpucudaCtxDetach(cpucudaCtx_t ctx);

cpucudaError_t cpucudaDeviceGet(cpucudaDevice_t* device, int ordinal);

cpucudaError_t cpucudaDeviceComputeCapability(int* major, int* minor, cpucudaDevice_t device);

cpucudaError_t cpucudaDeviceGetName(char* name, int len, cpucudaDevice_t device);

cpucudaError_t cpucudaDeviceGetPCIBusId(char* pciBusId, int len, cpucudaDevice_t device);

cpucudaError_t cpucudaDeviceGetByPCIBusId(int* device, const char* pciBusId);

cpucudaError_t cpucudaDeviceGetSharedMemConfig(cpucudaSharedMemConfig* config);

cpucudaError_t cpucudaDeviceSetSharedMemConfig(cpucudaSharedMemConfig config);

cpucudaError_t cpucudaDeviceGetLimit(size_t* pValue, cpucudaLimit_t limit);

cpucudaError_t cpucudaDeviceTotalMem(size_t* bytes, cpucudaDevice_t device);

cpucudaError_t cpucudaModuleLoad(cpucudaModule_t* module, const char* fname);

cpucudaError_t cpucudaModuleUnload(cpucudaModule_t hmod);

cpucudaError_t cpucudaModuleGetFunction(cpucudaFunction_t* function, cpucudaModule_t module,
                                              const char* kname);

cpucudaError_t cpucudaFuncGetAttributes(cpucudaFuncAttributes* attr, const void* func);

cpucudaError_t cpucudaModuleGetGlobal(cpucudaDeviceptr_t* dptr, size_t* bytes, cpucudaModule_t hmod,
                                            const char* name);

cpucudaError_t cpucudaModuleLoadData(cpucudaModule_t* module, const void* image);

cpucudaError_t cpucudaModuleLoadDataEx(cpucudaModule_t* module, const void* image,
                                             unsigned int numOptions, cpucudaJitOption* options,
                                             void** optionValues);

cpucudaError_t cpucudaModuleLaunchKernel(cpucudaFunction_t f, unsigned int gridDimX,
                                               unsigned int gridDimY, unsigned int gridDimZ,
                                               unsigned int blockDimX, unsigned int blockDimY,
                                               unsigned int blockDimZ, unsigned int sharedMemBytes,
                                               cpucudaStream_t stream, void** kernelParams,
                                               void** extra);


cpucudaError_t cpucudaFuncSetCacheConfig(const void* func, cpucudaFuncCache_t cacheConfig);
*/

template <class T>
cpucudaError_t cpucudaOccupancyMaxPotentialBlockSize(int* minGridSize, int* blockSize, T func,
                                                           size_t dynamicSMemSize = 0,
                                                           int blockSizeLimit = 0,
                                                           unsigned int flags = 0);

/*
template <class T, int dim, enum cpucudaTextureReadMode readMode>
cpucudaError_t cpucudaBindTexture(size_t* offset, const struct texture<T, dim, readMode>& tex,
                                        const void* devPtr, size_t size = UINT_MAX);

template <class T, int dim, enum cpucudaTextureReadMode readMode>
cpucudaError_t cpucudaBindTexture(size_t* offset, struct texture<T, dim, readMode>& tex,
                                        const void* devPtr, const struct cpucudaChannelFormatDesc& desc,
                                        size_t size = UINT_MAX);

template <class T, int dim, enum cpucudaTextureReadMode readMode>
cpucudaError_t cpucudaUnbindTexture(struct texture<T, dim, readMode>* tex);

cpucudaError_t cpucudaBindTexture(size_t* offset, textureReference* tex, const void* devPtr,
                                        const cpucudaChannelFormatDesc* desc, size_t size = UINT_MAX);

template <class T, int dim, enum cpucudaTextureReadMode readMode>
cpucudaError_t cpucudaBindTextureToArray(struct texture<T, dim, readMode>& tex,
                                               cpucudaArray_const_t array,
                                               const struct cpucudaChannelFormatDesc& desc);

template <class T, int dim, enum cpucudaTextureReadMode readMode>
cpucudaError_t cpucudaBindTextureToArray(struct texture<T, dim, readMode> *tex,
                                               cpucudaArray_const_t array,
                                               const struct cpucudaChannelFormatDesc* desc);

template <class T, int dim, enum cpucudaTextureReadMode readMode>
cpucudaError_t cpucudaBindTextureToArray(struct texture<T, dim, readMode>& tex,
                                               cpucudaArray_const_t array);

template <class T>
cpucudaChannelFormatDesc cpucudaCreateChannelDesc();

cpucudaChannelFormatDesc cpucudaCreateChannelDesc(int x, int y, int z, int w,
                                                        cpucudaChannelFormatKind f);

cpucudaError_t cpucudaCreateTextureObject(cpucudaTextureObject_t* pTexObject,
                                                const cpucudaResourceDesc* pResDesc,
                                                const cpucudaTextureDesc* pTexDesc,
                                                const cpucudaResourceViewDesc* pResViewDesc);

cpucudaError_t cpucudaDestroyTextureObject(cpucudaTextureObject_t textureObject);

cpucudaError_t cpucudaCreateSurfaceObject(cpucudaSurfaceObject_t* pSurfObject,
                                                const cpucudaResourceDesc* pResDesc);

cpucudaError_t cpucudaDestroySurfaceObject(cpucudaSurfaceObject_t surfaceObject);

cpucudaError_t cpucudaGetTextureObjectResourceDesc(cpucudaResourceDesc* pResDesc,
                                           cpucudaTextureObject_t textureObject);

cpucudaError_t cpucudaGetTextureAlignmentOffset(size_t* offset, const textureReference* texref);
cpucudaError_t cpucudaGetChannelDesc(cpucudaChannelFormatDesc* desc, cpucudaArray_const_t array);
*/

#define CPUCUDA_MAKE_VECTOR1(T, name) \
  struct name {\
    T x; \
  };


#define CPUCUDA_MAKE_VECTOR2(T, name) \
  struct name {\
    T x; \
    T y; \
  };


#define CPUCUDA_MAKE_VECTOR3(T, name) \
  struct name {\
    T x; \
    T y; \
    T z; \
  };


#define CPUCUDA_MAKE_VECTOR4(T, name) \
  struct name {\
    T x; \
    T y; \
    T z; \
    T w; \
  };

#define CPUCUDA_MAKE_VECTOR_TYPE(T, prefix) \
  CPUCUDA_MAKE_VECTOR1(T, prefix##1) \
  CPUCUDA_MAKE_VECTOR2(T, prefix##2) \
  CPUCUDA_MAKE_VECTOR3(T, prefix##3) \
  CPUCUDA_MAKE_VECTOR4(T, prefix##4)


CPUCUDA_MAKE_VECTOR_TYPE(signed char, char)
CPUCUDA_MAKE_VECTOR_TYPE(unsigned char, uchar)
CPUCUDA_MAKE_VECTOR_TYPE(short, short)
CPUCUDA_MAKE_VECTOR_TYPE(unsigned short, ushort)
CPUCUDA_MAKE_VECTOR_TYPE(int, int)
CPUCUDA_MAKE_VECTOR_TYPE(unsigned, uint)
CPUCUDA_MAKE_VECTOR_TYPE(long, long)
CPUCUDA_MAKE_VECTOR_TYPE(unsigned long, ulong)
CPUCUDA_MAKE_VECTOR_TYPE(long long, longlong)
CPUCUDA_MAKE_VECTOR_TYPE(unsigned long long, ulonglong)
CPUCUDA_MAKE_VECTOR_TYPE(float, float)
CPUCUDA_MAKE_VECTOR_TYPE(double, double)



__device__
inline
void __syncthreads()
{
  #pragma omp barrier
}

__device__
inline
float __fadd_rd(float x, float y)
{
  return x+y;
}

__device__
inline
float __fadd_rn(float x, float y)
{
  return x+y;
}

__device__
inline
float __fadd_ru(float x, float y)
{
  return x+y;
}

__device__
inline
float __fadd_rz(float x, float y)
{
  return x+y;
}

__device__
inline
float __fdiv_rd(float x, float y)
{
  return x/y;
}

__device__
inline
float __fdiv_rn(float x, float y)
{
  return x/y;
}

__device__
inline
float __fdiv_ru(float x, float y)
{
  return x/y;
}

__device__
inline
float __fdiv_rz(float x, float y)
{
  return x/y;
}

__device__
inline
float __fdividef(float x, float y)
{
  return x/y;
}

__device__
inline
float __fmaf_rd(float x, float y, float z)
{
  return std::fma(x,y,z);
}

__device__
inline
float __fmaf_rn(float x, float y, float z)
{
  return std::fma(x,y,z);
}

__device__
inline
float __fmaf_ru(float x, float y, float z)
{
  return std::fma(x,y,z);
}

__device__
inline
float __fmaf_rz(float x, float y, float z)
{
  return std::fma(x,y,z);
}

__device__
inline
float __fmul_rd(float x, float y)
{
  return x*y;
}

__device__
inline
float __fmul_rn(float x, float y)
{
  return x*y;
}

__device__
inline
float __fmul_ru(float x, float y)
{
  return x*y;
}

__device__
inline
float __fmul_rz(float x, float y)
{
  return x*y;
}

__device__
inline
float __frcp_rd(float x)
{
  return 1.f/x;
}

__device__
inline
float __frcp_rn(float x)
{
  return 1.f/x;
}

__device__
inline
float __frcp_ru(float x)
{
  return 1.f/x;
}

__device__
inline
float __frcp_rz(float x)
{
  return 1.f/x;
}

__device__
inline
float __frsqrt_rn(float x)
{
  return 1.f/std::sqrt(x);
}

__device__
inline
float __fsqrt_rd(float x)
{
  return std::sqrt(x);
}

__device__
inline
float __fsqrt_rn(float x)
{
  return std::sqrt(x);
}

__device__
inline
float __fsqrt_ru(float x)
{
  return std::sqrt(x);
}

__device__
inline
float __fsqrt_rz(float x)
{
  return std::sqrt(x);
}

__device__
inline
float __fsub_rd(float x, float y)
{
  return x-y;
}

__device__
inline
float __fsub_rn(float x, float y)
{
  return x-y;
}

__device__
inline
float __fsub_ru(float x, float y)
{
  return x-y;
}

__device__
inline
float __fsub_rz(float x, float y)
{
  return x-y;
}

__device__
inline
double __dadd_rd(double x, double y)
{
  return x+y;
}

__device__
inline
double __dadd_rn(double x, double y)
{
  return x+y;
}

__device__
inline
double __dadd_ru(double x, double y)
{
  return x+y;
}

__device__
inline
double __dadd_rz(double x, double y)
{
  return x+y;
}

__device__
inline
double __ddiv_rd(double x, double y)
{
  return x/y;
}

__device__
inline
double __ddiv_rn(double x, double y)
{
  return x/y;
}

__device__
inline
double __ddiv_ru(double x, double y)
{
  return x/y;
}

__device__
inline
double __ddiv_rz(double x, double y)
{
  return x/y;
}

__device__
inline
double __dmul_rd(double x, double y)
{
  return x*y;
}

__device__
inline
double __dmul_rn(double x, double y)
{
  return x*y;
}

__device__
inline
double __dmul_ru(double x, double y)
{
  return x*y;
}

__device__
inline
double __dmul_rz(double x, double y)
{
  return x*y;
}

__device__
inline
double __drcp_rd(double x)
{
  return 1./x;
}

__device__
inline
double __drcp_rn(double x)
{
  return 1./x;
}

__device__
inline
double __drcp_ru(double x)
{
  return 1./x;
}

__device__
inline
double __drcp_rz(double x)
{
  return 1./x;
}

__device__
inline
double __dsqrt_rd(double x)
{
  return std::sqrt(x);
}

__device__
inline
double __dsqrt_rn(double x)
{
  return std::sqrt(x);
}

__device__
inline
double __dsqrt_ru(double x)
{
  return std::sqrt(x);
}

__device__
inline
double __dsqrt_rz(double x)
{
  return std::sqrt(x);
}

__device__
inline
double __dsub_rd(double x, double y)
{
  return x - y;
}

__device__
inline
double __dsub_rn(double x, double y)
{
  return x - y;
}

__device__
inline
double __dsub_ru(double x, double y)
{
  return x - y;
}

__device__
inline
double __dsub_rz(double x, double y)
{
  return x - y;
}

__device__
inline
double __fma_rd(double x, double y, double z)
{
  return std::fma(x,y,z);
}

__device__
inline
double __fma_rn(double x, double y, double z)
{
  return std::fma(x,y,z);
}

__device__
inline
double __fma_ru(double x, double y, double z)
{
  return std::fma(x,y,z);
}

__device__
inline
double __fma_rz(double x, double y, double z)
{
  return std::fma(x,y,z);
}


#endif // CPUCUDA_RUNTIME_H
