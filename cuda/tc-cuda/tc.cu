#include <cuda.h>
#include "tc.h"

template <typename T, unsigned int blockSize, unsigned int dataLength>
__device__ void conditionalWarpReduce(volatile T *sharedData)
{
  if(blockSize >= dataLength)
  {
    if(threadIdx.x < (dataLength/2))
    {sharedData[threadIdx.x] += sharedData[threadIdx.x+(dataLength/2)];}
    __syncthreads();
  }
}

template <typename T, unsigned int blockSize>
__device__ void warpReduce(T* __restrict__ outDataPtr,
    volatile T* __restrict__ sharedData)
{
  conditionalWarpReduce<T, blockSize, 64>(sharedData);
  conditionalWarpReduce<T, blockSize, 32>(sharedData);
  conditionalWarpReduce<T, blockSize, 16>(sharedData);
  conditionalWarpReduce<T, blockSize, 8>(sharedData);
  conditionalWarpReduce<T, blockSize, 4>(sharedData);
  if(threadIdx.x == 0)
    *outDataPtr = sharedData[0] + sharedData[1];
}

template <typename T, unsigned int blockSize, unsigned int dataLength>
__device__ void conditionalReduce(volatile T* __restrict__ sharedData)
{
  if(blockSize >= dataLength)
  {
    if(threadIdx.x < (dataLength/2))
    {sharedData[threadIdx.x] += sharedData[threadIdx.x+(dataLength/2)];}
    __syncthreads();
  }

  if((blockSize < dataLength) && (blockSize > (dataLength/2)))
  {
    if(threadIdx.x+(dataLength/2) < blockSize)
    {sharedData[threadIdx.x] += sharedData[threadIdx.x+(dataLength/2)];}
    __syncthreads();
  }
}

template <typename T, unsigned int blockSize>
__device__ void blockReduce(T* __restrict__ outGlobalDataPtr,
    volatile T* __restrict__ sharedData)
{
  __syncthreads();
  conditionalReduce<T, blockSize, 256>(sharedData);
  conditionalReduce<T, blockSize, 128>(sharedData);

  warpReduce<T, blockSize>(outGlobalDataPtr, sharedData);
  __syncthreads();
}

// 
template <typename T>
__device__ void initialize(const T diag_id,
    const T u_len, T v_len,
    T* const __restrict__ u_min, T* const __restrict__ u_max,
    T* const __restrict__ v_min, T* const __restrict__ v_max,
    T* const __restrict__ found)
{
  if (diag_id == 0)
  {
    *u_min=*u_max=*v_min=*v_max=0;
    *found=1;
  }
  else if (diag_id < u_len)
  {
    *u_min=0; *u_max=diag_id;
    *v_max=diag_id;*v_min=0;
  }
  else if (diag_id < v_len)
  {
    *u_min=0; *u_max=u_len;
    *v_max=diag_id;*v_min=diag_id-u_len;
  }
  else
  {
    *u_min=diag_id-v_len; *u_max=u_len;
    *v_min=diag_id-u_len; *v_max=v_len;
  }
}

template <typename T>
__device__ void calcWorkPerThread(const T uLength,
    const T vLength, const T threadsPerIntersection,
    const T threadId,
    T * const __restrict__ outWorkPerThread,
    T * const __restrict__ outDiagonalId)
{
  T totalWork = uLength + vLength;
  T remainderWork = totalWork%threadsPerIntersection;
  T workPerThread = totalWork/threadsPerIntersection;

  T longDiagonals = (threadId > remainderWork) ? remainderWork:threadId;
  T shortDiagonals = (threadId > remainderWork) ? threadId - remainderWork:0;

  *outDiagonalId = ((workPerThread+1)*longDiagonals) + (workPerThread*shortDiagonals);
  *outWorkPerThread = workPerThread + (threadId < remainderWork);
}

template <typename T>
__device__ void bSearch(
    unsigned int found,
    const T diagonalId,
    T const * const __restrict__ uNodes,
    T const * const __restrict__ vNodes,
    T const * const __restrict__ uLength,
    T * const __restrict__ outUMin,
    T * const __restrict__ outUMax,
    T * const __restrict__ outVMin,
    T * const __restrict__ outVMax,
    T * const __restrict__ outUCurr,
    T * const __restrict__ outVCurr)
{
  T length;
  while(!found)
  {
    *outUCurr = (*outUMin + *outUMax)>>1;
    *outVCurr = diagonalId - *outUCurr;
    if(*outVCurr >= *outVMax)
    {
      length = *outUMax - *outUMin;
      if(length == 1)
      {
        found = 1;
        continue;
      }
    }

    unsigned int comp1 = uNodes[*outUCurr] > vNodes[*outVCurr-1];
    unsigned int comp2 = uNodes[*outUCurr-1] > vNodes[*outVCurr];
    if(comp1 && !comp2)
    {
      found = 1;
    }
    else if(comp1)
    {
      *outVMin = *outVCurr;
      *outUMax = *outUCurr;
    }
    else
    {
      *outVMax = *outVCurr;
      *outUMin = *outUCurr;
    }
  }

  if((*outVCurr >= *outVMax) && (length == 1) && (*outVCurr > 0) &&
      (*outUCurr > 0) && (*outUCurr < (*uLength - 1)))
  {
    unsigned int comp1 = uNodes[*outUCurr] > vNodes[*outVCurr - 1];
    unsigned int comp2 = uNodes[*outUCurr - 1] > vNodes[*outVCurr];
    if(!comp1 && !comp2){(*outUCurr)++; (*outVCurr)--;}
  }
}

template <typename T>
__device__ T fixThreadWorkEdges(const T uLength, const T vLength,
    T * const __restrict__ uCurr, T * const __restrict__ vCurr,
    T const * const __restrict__ uNodes, T const * const __restrict__ vNodes)
{
  unsigned int uBigger = (*uCurr > 0) && (*vCurr < vLength) &&
    (uNodes[*uCurr-1] == vNodes[*vCurr]);
  unsigned int vBigger = (*vCurr > 0) && (*uCurr < uLength) &&
    (vNodes[*vCurr-1] == uNodes[*uCurr]);
  *uCurr += vBigger;
  *vCurr += uBigger;

  return (uBigger + vBigger);
}

template <typename T>
__device__ void intersectCount(const T uLength, const T vLength,
    T const * const __restrict__ uNodes, T const * const __restrict__ vNodes,
    T * const __restrict__ uCurr, T * const __restrict__ vCurr,
    T * const __restrict__ workIndex, T * const __restrict__ workPerThread,
    T * const __restrict__ triangles, T found)
{
  if((*uCurr < uLength) && (*vCurr < vLength))
  {
    T comp;
    while(*workIndex < *workPerThread)
    {
      comp = uNodes[*uCurr] - vNodes[*vCurr];
      *triangles += (comp == 0);
      *uCurr += (comp <= 0);
      *vCurr += (comp >= 0);
      *workIndex += (comp == 0) + 1;

      if((*vCurr == vLength) || (*uCurr == uLength))
      {
        break;
      }
    }
    *triangles -= ((comp == 0) && (*workIndex > *workPerThread) && (found));
  }
}

// u_len < v_len
template <typename T>
__device__ T count_triangles(T u, T const * const __restrict__ u_nodes, T u_len,
    T v, T const * const __restrict__ v_nodes, T v_len, T threads_per_block,
    volatile T* __restrict__ firstFound, T tId)
{
  // Partitioning the work to the multiple thread of a single GPU processor. 
  // The threads should get a near equal number of the elements to Tersect - this number will be off by 1.
  T work_per_thread, diag_id;
  calcWorkPerThread(u_len, v_len, threads_per_block, tId, &work_per_thread, &diag_id);
  T triangles = 0;
  T work_index = 0,found=0;
  T u_min,u_max,v_min,v_max,u_curr,v_curr;

  firstFound[tId]=0;

  if(work_per_thread>0)
  {
    // For the binary search, we are figuring out the initial poT of search.
    initialize(diag_id, u_len, v_len,&u_min, &u_max,&v_min, &v_max,&found);
    u_curr = 0; v_curr = 0;

    bSearch(found, diag_id, u_nodes, v_nodes, &u_len, &u_min, &u_max, &v_min,
        &v_max, &u_curr, &v_curr);

    T sum = fixThreadWorkEdges(u_len, v_len, &u_curr, &v_curr, u_nodes, v_nodes);
    work_index += sum;
    if(tId > 0) firstFound[tId-1] = sum;
    triangles += sum;
    intersectCount(u_len, v_len, u_nodes, v_nodes, &u_curr, &v_curr,
        &work_index, &work_per_thread, &triangles, firstFound[tId]);
  }
  return triangles;
}

template <typename T>
__device__ void calcWorkPerBlock(const T numVertices,
    T * const __restrict__ outMpStart,
    T * const __restrict__ outMpEnd)
{
  T verticesPerMp = numVertices/gridDim.x;
  T remainderBlocks = numVertices % gridDim.x;
  T extraVertexBlocks = (blockIdx.x > remainderBlocks)?
    remainderBlocks:blockIdx.x;
  T regularVertexBlocks = (blockIdx.x > remainderBlocks)?
    blockIdx.x - remainderBlocks:0;

  T mpStart = ((verticesPerMp+1)*extraVertexBlocks)
    + (verticesPerMp*regularVertexBlocks);
  *outMpStart = mpStart;
  *outMpEnd = mpStart + verticesPerMp + (blockIdx.x < remainderBlocks);
}

template <typename T, unsigned int blockSize>
__global__ void count_all_trianglesGPU (
    const T nv,
    T const * const __restrict__ d_off,
    T const * const __restrict__ d_ind,
    T * const __restrict__ outPutTriangles,
    const T threads_per_block,
    const T number_blocks, const T shifter)
{
  T tx = threadIdx.x;
  T this_mp_start, this_mp_stop;
  calcWorkPerBlock(nv, &this_mp_start, &this_mp_stop);

  __shared__ T s_triangles[blockSize];
  __shared__ T firstFound[blockSize];

  T adj_offset=tx>>shifter;
  T* firstFoundPos=firstFound + (adj_offset<<shifter);
  for (T src = this_mp_start; src < this_mp_stop; src++)
  {
    T srcLen=d_off[src+1]-d_off[src];
    T tCount = 0;
    for(T iter=d_off[src]+adj_offset; iter<d_off[src+1]; iter+=number_blocks)
    {
      T dest = d_ind[iter];
      T destLen = d_off[dest+1]-d_off[dest];
      bool avoidCalc = (src == dest) || (destLen < 2) || (srcLen < 2);
      if(avoidCalc)
        continue;

      bool sourceSmaller = (srcLen<destLen);
      T small = sourceSmaller? src : dest;
      T large = sourceSmaller? dest : src;
      T small_len = sourceSmaller? srcLen : destLen;
      T large_len = sourceSmaller? destLen : srcLen;

      T const * const small_ptr = d_ind + d_off[small];
      T const * const large_ptr = d_ind + d_off[large];
      tCount += count_triangles(
          small, small_ptr, small_len,
          large, large_ptr, large_len,
          threads_per_block, firstFoundPos, tx%threads_per_block);
    }
    s_triangles[tx] = tCount;
    blockReduce<T, blockSize>(&outPutTriangles[src],s_triangles);
  }
}

// call triangle count kernel
template <typename T>
void kernelCall(
    unsigned int numberBlocks,
    unsigned int numberThreads,
    const T nv,
    T const * const __restrict__ d_off,
    T const * const __restrict__ d_ind,
    T * const __restrict__ outPutTriangles,
    const T threads_per_block,
    const T number_blocks,
    const T shifter)
{
  switch (numberThreads) {
    case 32: 
      count_all_trianglesGPU<T, 32> <<<numberBlocks, 32>>> (
       nv, d_off, d_ind, outPutTriangles, threads_per_block, number_blocks, shifter);
      break;
    case 64: 
      count_all_trianglesGPU<T, 64> <<<numberBlocks, 64>>> (
       nv, d_off, d_ind, outPutTriangles, threads_per_block, number_blocks, shifter);
      break;
    case 96: 
      count_all_trianglesGPU<T, 96> <<<numberBlocks, 96>>> (
       nv, d_off, d_ind, outPutTriangles, threads_per_block, number_blocks, shifter);
      break;
    case 128: 
      count_all_trianglesGPU<T, 128> <<<numberBlocks, 128>>> (
       nv, d_off, d_ind, outPutTriangles, threads_per_block, number_blocks, shifter);
      break;
    case 192: 
      count_all_trianglesGPU<T, 192> <<<numberBlocks, 192>>> (
       nv, d_off, d_ind, outPutTriangles, threads_per_block, number_blocks, shifter);
      break;
    case 256: 
      count_all_trianglesGPU<T, 256> <<<numberBlocks, 256>>> (
       nv, d_off, d_ind, outPutTriangles, threads_per_block, number_blocks, shifter);
      break;
    default: ;
  }
}

template <typename T>
void allParamTestGPURun(Param param)
{
  T* offsetVector;
  T* indexVector;
  T vertexCount;
  T edgeCount;

  bool ok = readGraph<T>(param.fileName, offsetVector, indexVector, vertexCount, edgeCount);
  if (!ok) return;

  cudaDeviceSynchronize();
  auto memAllocStart = std::chrono::system_clock::now();

  T *dOffset, *dIndex, *dTriangle;

  cudaMalloc((void**)&dOffset, (vertexCount + 1) * sizeof(T));
  cudaMemcpy(dOffset, offsetVector, (vertexCount + 1) * sizeof(T), cudaMemcpyHostToDevice);

  cudaMalloc((void**)&dIndex, edgeCount * sizeof(T));
  cudaMemcpy(dIndex, indexVector, edgeCount * sizeof(T), cudaMemcpyHostToDevice);

  T *triangle = new T[vertexCount];

  cudaMalloc((void**)&dTriangle, vertexCount * sizeof(T));

  auto memAllocEnd = std::chrono::system_clock::now();
  std::chrono::duration<float, std::milli> memAllocDuration = memAllocEnd - memAllocStart;

  // output file name 
  std::string separator = std::string(".o.");
  std::string fileOutName = param.fileName + separator + std::to_string(param.blocks);
  std::ofstream writeFile(fileOutName);

  writeFile<<"paramBlockSize"<<"\t"
           <<"paramThreadsPerIntsctn"<<"\t"
           <<"memAllocDuration(ms)"<<"\t"
           <<"execDuration(ms)"<<"\t"
           <<"kernelDuration(ms)"<<"\t"
           <<"execDuration+memAllocDuration(ms)"<<"\t"
           <<"sumTriangles"<<"\n";

  for(auto paramBlockSize : globalParam::blockSizeParam)
  {
    for(auto paramThreadsPerIntsctn : globalParam::threadPerIntersectionParam)
    {
      cudaMemset(dTriangle, (T)0, vertexCount * sizeof(T));
      
      // timing data transfer and kernel execution on a device
      auto execStart = std::chrono::system_clock::now();
      unsigned int blocks = param.blocks;
      unsigned int blockSize = paramBlockSize;
      T threadsPerIntsctn = paramThreadsPerIntsctn;
      T intsctnPerBlock = paramBlockSize/paramThreadsPerIntsctn;
      T threadShift = std::log2(paramThreadsPerIntsctn);

      // timing kernel execution on a device
      auto krnlStart = std::chrono::system_clock::now();
      kernelCall<T>(blocks, blockSize, vertexCount, dOffset,
          dIndex, dTriangle, threadsPerIntsctn, intsctnPerBlock, threadShift);
      cudaDeviceSynchronize();
      auto krnlEnd = std::chrono::system_clock::now();
      std::chrono::duration<float, std::milli> krnlDuration = krnlEnd - krnlStart;

      cudaMemcpy(triangle, dTriangle, vertexCount * sizeof(T), cudaMemcpyDeviceToHost);

      auto execEnd = std::chrono::system_clock::now();
      std::chrono::duration<float, std::milli> execDuration = execEnd - execStart;
      
      T sumTriangles = 0;
      for (int i = 0; i < vertexCount; i++)
        sumTriangles += triangle[i];

      writeFile<<paramBlockSize<<"\t"
               <<paramThreadsPerIntsctn<<"\t"
               <<memAllocDuration.count()<<"\t"
               <<execDuration.count()<<"\t"
               <<krnlDuration.count()<<"\t"
               <<execDuration.count()+memAllocDuration.count()<<"\t"
               <<sumTriangles<<"\n";
    }
  }
  writeFile.close();
    
  delete[] offsetVector;
  delete[] indexVector;
  delete[] triangle;
  cudaFree(dOffset);
  cudaFree(dIndex);
  cudaFree(dTriangle);
}

template void allParamTestGPURun<int>(Param param);
template void allParamTestGPURun<long>(Param param);
