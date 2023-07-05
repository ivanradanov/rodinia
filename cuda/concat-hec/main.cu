#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <cuda.h>

const int max_seq_len = 1024;
const int max_batch_tokens = 9216;

/* Convert 2-dim tensor index into vector index */
__forceinline__ __host__ __device__
int flat_2dim(int id1, int id2, int dim2) {
  return id1 * dim2 + id2;
}

/* Convert 3-dim tensor index into vector index */
__forceinline__ __host__ __device__
int flat_3dim(int id1, int id2, int id3, int dim2, int dim3) {
  return id1 * dim2 * dim3 + id2 * dim3 + id3;
}

template <typename T>
__global__
void concat (const T *__restrict__ inp1,
             const T *__restrict__ inp2,
                   T *output,
             int sz0, int sz2, int sz1_1, int sz1_2)
{
  int nele = sz0 * sz2 * (sz1_1 + sz1_2);
  int idx = flat_2dim(blockIdx.x, threadIdx.x, blockDim.x);
  if (idx >= nele) return;

  float *dst_ptr = (float *)output + idx;
  int idx2 = idx % sz2;
  idx = idx / sz2;
  int idx1 = idx % (sz1_1 + sz1_2);
  int idx0 = idx / (sz1_1 + sz1_2);
  float *src_ptr = nullptr;
  int sz1 = 0;
  if (idx1 < sz1_1) {
    sz1 = sz1_1;
    src_ptr = (float *)inp1;
  } else {
    idx1 -= sz1_1;
    sz1 = sz1_2;
    src_ptr = (float *)inp2;
  }
  src_ptr += flat_3dim(idx0, idx1, idx2, sz1, sz2);
  *dst_ptr = *src_ptr;
}

int main(int argc, char* argv[])
{
  if (argc != 2) {
    printf("Usage: %s <repeat>\n", argv[0]);
    return 1;
  }
  const int repeat = atoi(argv[1]);

  for (int nhead = 4; nhead <= 16; nhead += 4) { // a multiple of 4
    srand(nhead);

    int seq_len = rand() % max_seq_len + 1;
    while (seq_len <= 1) {
      seq_len = rand() % max_seq_len + 1;
    }

    const int max_batch_size = max_batch_tokens / seq_len;
    const int batch_size = rand() % max_batch_size + 1;
    const int upbound = 1024 / nhead + 1;
    const int hidden_dim = (rand() % upbound + 1) * nhead * 4;
    const int head_dim = hidden_dim / nhead;

    const int sl1 = rand() % (seq_len - 1) + 1;
    const int sl2 = seq_len - sl1;
    const int beam_size = rand() % 8 + 1;

    printf("num_head = %d\t", nhead);
    printf("seq_len = %d\t", seq_len);
    printf("batch size = %d\t", batch_size);
    printf("hidden dimension = %d\t", hidden_dim);
    printf("beam size = %d\n", beam_size);

    const size_t inp1_size = batch_size * beam_size * nhead * sl1 * head_dim;
    const size_t inp2_size = batch_size * beam_size * nhead * sl2 * head_dim;
    const size_t outp_size = batch_size * beam_size * nhead * seq_len * head_dim;

    const size_t inp1_size_bytes = inp1_size * sizeof(float);
    const size_t inp2_size_bytes = inp2_size * sizeof(float);
    const size_t outp_size_bytes = outp_size * sizeof(float);

    float *inp1 = (float*) malloc (inp1_size_bytes);
    float *inp2 = (float*) malloc (inp2_size_bytes);
    float *outp = (float*) malloc (outp_size_bytes);

    for (size_t i = 0; i < inp1_size; i++) {
      inp1[i] = -1.f;
    }

    for (size_t i = 0; i < inp2_size; i++) {
      inp2[i] = 1.f;
    }

    float *d_inp1, *d_inp2, *d_outp;

    cudaMalloc ((void**)&d_inp1, inp1_size_bytes);
    cudaMalloc ((void**)&d_inp2, inp2_size_bytes);
    cudaMalloc ((void**)&d_outp, outp_size_bytes);
    cudaMemcpy (d_inp1, inp1, inp1_size_bytes, cudaMemcpyHostToDevice);
    cudaMemcpy (d_inp2, inp2, inp2_size_bytes, cudaMemcpyHostToDevice);

    const size_t n = batch_size * beam_size * nhead * head_dim * (sl1 + sl2);
    const size_t nblock = (n + 255) / 256;

    // warmup
    concat <<<nblock, 256>>>(
      d_inp1, d_inp2, d_outp, batch_size * beam_size * nhead, head_dim, sl1, sl2);

    cudaDeviceSynchronize();
    auto start = std::chrono::steady_clock::now();

    for (int i = 0; i < repeat; i++) {
      concat <<<nblock, 256>>>(
          d_inp1, d_inp2, d_outp, batch_size * beam_size * nhead, head_dim, sl1, sl2);
    }

    cudaDeviceSynchronize();
    auto end = std::chrono::steady_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    printf("Average kernel execution time: %f (us)\n", (time * 1e-3f) / repeat);

    cudaMemcpy (outp, d_outp, outp_size_bytes, cudaMemcpyDeviceToHost);

    double checksum = 0;
    for (size_t i = 0; i < outp_size; i++) {
      checksum += outp[i];
    }
    printf("Checksum = %lf\n\n", checksum);

    cudaFree(d_inp1);
    cudaFree(d_inp2);
    cudaFree(d_outp);
    free(inp1);
    free(inp2);
    free(outp);
  }
}
