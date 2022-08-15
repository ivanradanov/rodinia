#include <stdio.h>
#include <stdlib.h>

#define BLOCK_X 16
#define BLOCK_Y 16

#define threads_per_block 512

#define check_error(X) X

__global__ void find_index_kernel(double * CDF, double * u, int Nparticles) {
    int block_id = blockIdx.x;
    int i = blockDim.x * block_id + threadIdx.x;

    if (i < Nparticles) {

        int index = -1;
        int x;

        for (x = 0; x < Nparticles; x++) {
            if (CDF[x] >= u[i]) {
                index = x;
                //break;
            }
        }

        printf("idx=%d\n", index);

    }
    __syncthreads();
}

__global__ void normalize_weights_kernel1(double * weights, int Nparticles, double* partial_sums) {
    int block_id = blockIdx.x;
    int i = blockDim.x * block_id + threadIdx.x;
    __shared__ double sumWeights;
    
    if(0 == threadIdx.x) {
        sumWeights = 1 / ((double) (Nparticles));
    }
    
    __syncthreads();
    
    if (i < Nparticles) {
        weights[i] = 1 / ((double) (Nparticles)) / sumWeights;
    }
}


__global__ void normalize_weights_kernel2(double * u, int Nparticles) {
    int block_id = blockIdx.x;
    int i = blockDim.x * block_id + threadIdx.x;
    __shared__ double u1;
    
    if (i == 0) {
        u[0] = 0;
    }
    
    __syncthreads();
    
    if(0 == threadIdx.x) 
        u1 = u[0];
    
    __syncthreads();
        
    if (i < Nparticles) {
        u[i] = u1 + i / ((double) (Nparticles));
    }
}

int main(int argc, char * argv[]) {

    int Nparticles = 50000;

    //converting a string to a integer
    if (sscanf(argv[8], "%d", &Nparticles) == EOF) {
    }
    
    int x, y;
    //initial weights are all equal (1/Nparticles)
    double * weights = (double *) malloc(sizeof (double) *Nparticles);
    for (x = 0; x < Nparticles; x++) {
        weights[x] = 1 / ((double) (Nparticles));
    }

    //GPU copies of arrays
    double * CDF_GPU;
    double * weights_GPU;

    double * u_GPU;
    double* partial_sums;

    //CUDA memory allocation
    check_error(cudaMalloc((void **) &CDF_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &u_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &weights_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &partial_sums, sizeof (double) *Nparticles));


    int indX, indY;
    //start send
    check_error(cudaMemcpy(weights_GPU, weights, sizeof (double) *Nparticles, cudaMemcpyHostToDevice));
    int num_blocks = ceil((double) Nparticles / (double) threads_per_block);

    {
        for (int i=0; i<Nparticles; i++)
            partial_sums[i] = 1 / ((double) (Nparticles));

        int x;
        double sum = 0.0;
        int num_blocks = ceil((double) Nparticles / (double) threads_per_block);
        for (x = 0; x < num_blocks; x++) {
            sum += partial_sums[x];
        }
        partial_sums[0] = sum;

      normalize_weights_kernel1 <<< num_blocks, threads_per_block >>> (weights_GPU, Nparticles, partial_sums);
        
        CDF_GPU[0] = weights_GPU[0];
        for (int x = 1; x < Nparticles; x++) {
            CDF_GPU[x] = weights_GPU[x] + CDF_GPU[x - 1];
        }
      normalize_weights_kernel2 <<< num_blocks, threads_per_block >>> (u_GPU, Nparticles);

      find_index_kernel <<< num_blocks, threads_per_block >>> (CDF_GPU, u_GPU, Nparticles);
      
    }


    //block till kernels are finished

    cudaFree(CDF_GPU);
    cudaFree(u_GPU);
    cudaFree(partial_sums);

    //CUDA freeing of memory
    cudaFree(weights_GPU);
    free(weights);
    return 0;
}
