// Copyright 2004-present Facebook. All Rights Reserved.
#pragma once

#include "cuda/Pair.cuh"

#include <cuda.h>

namespace facebook { namespace cuda {

/** @file

    Templated warp shuffles that work for basic and pair types
*/

template <typename T>
__device__ __forceinline__ T
shfl(const T val, int srcLane, int width = WARP_SIZE) {
  return __shfl_sync(0xffffffff, val, srcLane, width);
}

template <typename T>
__device__ __forceinline__ T
shfl_up(const T val, int delta, int width = WARP_SIZE) {
  return __shfl_up_sync(0xffffffff, val, delta, width);
}

template <typename T>
__device__ __forceinline__ T
shfl_down(const T val, int delta, int width = WARP_SIZE) {
  return __shfl_down_sync(0xffffffff, val, delta, width);
}

template <typename T>
__device__ __forceinline__ T
shfl_xor(const T val, int laneMask, int width = WARP_SIZE) {
  return __shfl_xor_sync(0xffffffff, val, laneMask, width);
}

template <typename K, typename V>
__device__ __forceinline__ Pair<K, V>
shfl(const Pair<K, V>& p, int srcLane, int width = WARP_SIZE) {
  return Pair<K, V>(__shfl_sync(0xffffffff, p.k, srcLane, width),
                    __shfl_sync(0xffffffff, p.v, srcLane, width));
}

template <typename K, typename V>
__device__ __forceinline__ Pair<K, V>
shfl_up(const Pair<K, V>& p, int delta, int width = WARP_SIZE) {
  return Pair<K, V>(__shfl_up_sync(0xffffffff, p.k, delta, width),
                    __shfl_up_sync(0xffffffff, p.v, delta, width));
}

template <typename K, typename V>
__device__ __forceinline__ Pair<K, V>
shfl_down(const Pair<K, V>& p, int delta, int width = WARP_SIZE) {
  return Pair<K, V>(__shfl_down_sync(0xffffffff, p.k, delta, width),
                    __shfl_down_sync(0xffffffff, p.v, delta, width));
}

template <typename K, typename V>
__device__ __forceinline__ Pair<K, V>
shfl_xor(const Pair<K, V>& p, int laneMask, int width = WARP_SIZE) {
  return Pair<K, V>(__shfl_xor_sync(0xffffffff, p.k, laneMask, width),
                    __shfl_xor_sync(0xffffffff, p.v, laneMask, width));
}

} } // namespace
