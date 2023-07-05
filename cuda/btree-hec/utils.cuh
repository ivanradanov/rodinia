/*Copyright(c) 2020, The Regents of the University of California, Davis.            */
/*                                                                                  */
/*                                                                                  */
/*Redistribution and use in source and binary forms, with or without modification,  */
/*are permitted provided that the following conditions are met :                    */
/*                                                                                  */
/*1. Redistributions of source code must retain the above copyright notice, this    */
/*list of conditions and the following disclaimer.                                  */
/*2. Redistributions in binary form must reproduce the above copyright notice,      */
/*this list of conditions and the following disclaimer in the documentation         */
/*and / or other materials provided with the distribution.                          */
/*                                                                                  */
/*THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND   */
/*ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED     */
/*WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.*/
/*IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,  */
/*INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT */
/*NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR*/
/*PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, */
/*WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) */
/*ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE        */
/*POSSIBILITY OF SUCH DAMAGE.                                                       */
/************************************************************************************/
/************************************************************************************/

#pragma once

#include <iostream>

//#define DEBUG
namespace memoryUtil {
template<typename DataT>
cudaError_t cpyToHost(DataT*& src_data, DataT* dst_data, std::size_t count) {
  return cudaMemcpy(dst_data, src_data, sizeof(DataT) * count, cudaMemcpyDeviceToHost);
}

template<typename DataT>
cudaError_t cpyToDevice(DataT* src_data, DataT*& dst_data, std::size_t count) {
  return cudaMemcpy(dst_data, src_data, sizeof(DataT) * count, cudaMemcpyHostToDevice);
}

template<typename DataT>
cudaError_t deviceAlloc(DataT*& src_data, std::size_t count) {
  return cudaMalloc((void**)&src_data, sizeof(DataT) * count);
}

template<typename DataT, typename ByteT>
cudaError_t deviceSet(DataT*& src_data, std::size_t count, ByteT value) {
  return cudaMemset(src_data, value, sizeof(DataT) * count);
}

template<typename DataT>
cudaError_t deviceFree(DataT* src_data) {
  return cudaFree(src_data);
}
}  // namespace memoryUtil

#define CHECK_ERROR(call)                                                               \
  do {                                                                                  \
    cudaError_t err = call;                                                             \
    if (err != cudaSuccess) {                                                           \
      printf("CUDA error at %s %d: %s\n", __FILE__, __LINE__, cudaGetErrorString(err)); \
    }                                                                                   \
  } while (0)

#define LANEID_REVERSED(laneId) (31 - laneId)

__device__ __forceinline__ unsigned lane_id() {
  return threadIdx.x & 0x1F;
}
