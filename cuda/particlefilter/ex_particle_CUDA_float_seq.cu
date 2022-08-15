#include <stdio.h>
#include <stdlib.h>

#define NN 200

#define STRINGIZE_NX(A) #A
#define STRINGIZE(A) STRINGIZE_NX(A)

#define NNS STRINGIZE(NN)
#define threads_per_block 2

#define check_error(X) X

__global__ void normalize_weights_kernel1(double * weights, int Nparticles) {
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

int main() {

    int Nparticles = atoi(NNS);
    
    int x, y;
    //initial weights are all equal (1/Nparticles)
    double * weights = (double *) malloc(sizeof (double) *Nparticles);
    for (x = 0; x < Nparticles; x++) {
        weights[x] = 1 / ((double) (Nparticles));
    }

    //GPU copies of arrays
    double * weights_GPU;

    double * u_GPU;

    //CUDA memory allocation
    check_error(cudaMalloc((void **) &u_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &weights_GPU, sizeof (double) *Nparticles));


    int indX, indY;
    //start send
    check_error(cudaMemcpy(weights_GPU, weights, sizeof (double) *Nparticles, cudaMemcpyHostToDevice));
    int num_blocks = ( Nparticles + threads_per_block - 1) / threads_per_block;
    printf("nb=%d nn=%d\n", num_blocks, num_blocks * threads_per_block);

    {
      normalize_weights_kernel1 <<< num_blocks, threads_per_block >>> (weights_GPU, Nparticles);
        
      normalize_weights_kernel2 <<< num_blocks, threads_per_block >>> (u_GPU, Nparticles);

      for (int i=0; i<Nparticles; i++) {
        int index = -1;
        int x;

        for (x = 0; x < Nparticles; x++) {
            if (weights_GPU[x] >= u_GPU[i]) {
                index = x;
            }
        }

        printf("idx=%d\n", index);
      }
      
    }


    //block till kernels are finished

    cudaFree(u_GPU);

    //CUDA freeing of memory
    cudaFree(weights_GPU);
    free(weights);
    return 0;
}
