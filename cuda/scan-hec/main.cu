#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <chrono>
#include <cuda.h>

template<typename T>
void verify(const T* cpu_out, const T* gpu_out, int n)
{
  int error = memcmp(cpu_out, gpu_out, n * sizeof(T));
  printf("%s\n", error ? "FAIL" : "PASS");
}

// bank conflict aware optimization

#define LOG_MEM_BANKS 5
#define OFFSET(n) ((n) >> LOG_MEM_BANKS)

// N is the number of elements to scan in a thread block
template<typename T, int N>
__global__ void scan_bcao (
        T *__restrict__ g_odata,
  const T *__restrict__ g_idata)
{
  __shared__ T temp[2*N];

  int bid = blockIdx.x;
  g_idata += bid * N;
  g_odata += bid * N;

  int thid = threadIdx.x; 
  int a = thid;
  int b = a + (N/2);
  int oa = OFFSET(a);
  int ob = OFFSET(b);

  temp[a + oa] = g_idata[a];
  temp[b + ob] = g_idata[b];

  int offset = 1;
  for (int d = N >> 1; d > 0; d >>= 1) 
  {
    __syncthreads();
    if (thid < d) 
    {
      int ai = offset*(2*thid+1)-1;
      int bi = offset*(2*thid+2)-1;
      ai += OFFSET(ai);
      bi += OFFSET(bi);
      temp[bi] += temp[ai];
    }
    offset *= 2;
  }

  if (thid == 0) temp[N-1+OFFSET(N-1)] = 0; // clear the last elem
  for (int d = 1; d < N; d *= 2) // traverse down
  {
    offset >>= 1;
    __syncthreads();
    if (thid < d)
    {
      int ai = offset*(2*thid+1)-1;
      int bi = offset*(2*thid+2)-1;
      ai += OFFSET(ai);
      bi += OFFSET(bi);
      T t = temp[ai];
      temp[ai] = temp[bi];
      temp[bi] += t;
    }
  }
  __syncthreads(); // required

  g_odata[a] = temp[a + oa];
  g_odata[b] = temp[b + ob];
}

template<typename T, int N>
__global__ void scan(
        T *__restrict__ g_odata,
  const T *__restrict__ g_idata)
{
  __shared__ T temp[N];

  int bid = blockIdx.x;
  g_idata += bid * N;
  g_odata += bid * N;

  int thid = threadIdx.x; 
  int offset = 1;
  temp[2*thid]   = g_idata[2*thid];
  temp[2*thid+1] = g_idata[2*thid+1];
  for (int d = N >> 1; d > 0; d >>= 1) 
  {
    __syncthreads();
    if (thid < d)
    {
      int ai = offset*(2*thid+1)-1;
      int bi = offset*(2*thid+2)-1;
      temp[bi] += temp[ai];
    }
    offset *= 2;
  }

  if (thid == 0) temp[N-1] = 0; // clear the last elem
  for (int d = 1; d < N; d *= 2) // traverse down
  {
    offset >>= 1;
    __syncthreads();      
    if (thid < d)
    {
      int ai = offset*(2*thid+1)-1;
      int bi = offset*(2*thid+2)-1;
      float t = temp[ai];
      temp[ai] = temp[bi];
      temp[bi] += t;
    }
  }
  g_odata[2*thid] = temp[2*thid];
  g_odata[2*thid+1] = temp[2*thid+1];
}

template <typename T, int N>
void runTest (const size_t n, const int repeat, bool timing = false) 
{
  const size_t num_blocks = (n + N - 1) / N;

  const size_t nelems = num_blocks * N; // actual total number of elements

  size_t bytes = nelems * sizeof(T);

  T *in = (T*) malloc (bytes);
  T *cpu_out = (T*) malloc (bytes);
  T *gpu_out = (T*) malloc (bytes);

  srand(123);
  for (size_t n = 0; n < nelems; n++) in[n] = rand() % 5 + 1;

  T *t_in = in;
  T *t_out = cpu_out;
  for (size_t n = 0; n < num_blocks; n++) { 
    t_out[0] = 0;
    for (int i = 1; i < N; i++) 
      t_out[i] = t_out[i-1] + t_in[i-1];
    t_out += N;
    t_in += N;
  }

  T *d_in, *d_out;

  cudaMalloc((void**)&d_in, bytes);
  cudaMemcpy(d_in, in, bytes, cudaMemcpyHostToDevice); 

  cudaMalloc((void**)&d_out, bytes);

  dim3 grids (num_blocks);
  dim3 blocks (N/2);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for (int i = 0; i < repeat; i++) {
    scan<T, N><<<grids, blocks>>>(d_out, d_in);
  }

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  if (timing) {
    printf("Element size in bytes is %zu. Average execution time of scan (w/  bank conflicts): %f (us)\n",
           sizeof(T), (time * 1e-3f) / repeat);
  }
  cudaMemcpy(gpu_out, d_out, bytes, cudaMemcpyDeviceToHost);
  if (!timing) verify(cpu_out, gpu_out, nelems);

  // bcao
  start = std::chrono::steady_clock::now();

  for (int i = 0; i < repeat; i++) {
    scan_bcao<T, N><<<grids, blocks>>>(d_out, d_in);
  }

  cudaDeviceSynchronize();
  end = std::chrono::steady_clock::now();
  auto bcao_time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  if (timing) {
    printf("Element size in bytes is %zu. Average execution time of scan (w/o bank conflicts): %f (us). ",
           sizeof(T), (bcao_time * 1e-3f) / repeat);
    printf("Reduce the time by %.1f%%\n", (time - bcao_time) * 1.0 / time * 100);
  }
  cudaMemcpy(gpu_out, d_out, bytes, cudaMemcpyDeviceToHost);
  if (!timing) verify(cpu_out, gpu_out, nelems);

  cudaFree(d_in);
  cudaFree(d_out);
  free(in);
  free(cpu_out);
  free(gpu_out);
}

template<int N>
void run (const int n, const int repeat) {
  for (int i = 0; i < 2; i++) {
    bool report_timing = i > 0;
    printf("\nThe number of elements to scan in a thread block: %d\n", N);
    runTest< char, N>(n, repeat, report_timing);
    runTest<short, N>(n, repeat, report_timing);
    runTest<  int, N>(n, repeat, report_timing);
    runTest< long, N>(n, repeat, report_timing);
  }
}

int main(int argc, char* argv[])
{
  if (argc != 3) {
    printf("Usage: %s <number of elements> <repeat>\n", argv[0]);
    return 1;
  }
  const int n = atoi(argv[1]);
  const int repeat = atoi(argv[2]);

  run< 128>(n, repeat);  
  run< 256>(n, repeat);  
  run< 512>(n, repeat);  
  run<1024>(n, repeat);  
  run<2048>(n, repeat);  

  return 0; 
}
