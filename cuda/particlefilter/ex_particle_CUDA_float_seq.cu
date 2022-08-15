#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <math.h>
#include <unistd.h>
#include <fcntl.h>
#include <float.h>
#include <sys/time.h>
#include <time.h>
#define BLOCK_X 16
#define BLOCK_Y 16
#define PI 3.1415926535897932

// when doing verification
#if 1
#define malloc(X) calloc((X), 1)
#endif

const int threads_per_block = 512;

#define check_error(X) X

__device__ double calcLikelihoodSum(unsigned char * I, int * ind, int numOnes, int index) {
    double likelihoodSum = 0.0;
    int x;
    for (x = 0; x < numOnes; x++) {
        likelihoodSum += I[ind[index * numOnes + x]];
    }
    return likelihoodSum;
}

__device__ double d_randu(int * seed, int index) {
  return (1000 + index) / 5000000;

    int M = INT_MAX;
    int A = 1103515245;
    int C = 12345;
    int num = A * seed[index] + C;
    seed[index] = num % M;

    return fabs(seed[index] / ((double) M));
}

__device__ double d_randn(int * seed, int index) {
  return (1000 + index) / 5000000;
    //Box-Muller algortihm
    double pi = 3.14159265358979323846;
    double u = d_randu(seed, index);
    double v = d_randu(seed, index);
    double cosine = cos(2 * pi * v);
    double rt = -2 * log(u);
    return sqrt(rt) * cosine;
}

__device__ double dev_round_double(double value) {
    int newValue = (int) (value);
    if (value - newValue < .5f)
        return newValue;
    else
        return newValue++;
}

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

__global__ void normalize_weights_kernel1(double * weights, int Nparticles, double* partial_sums, double * CDF, double * u, int * seed) {
    int block_id = blockIdx.x;
    int i = blockDim.x * block_id + threadIdx.x;
    __shared__ double sumWeights;
    
    if(0 == threadIdx.x) {
        sumWeights = partial_sums[0];
    }
    
    __syncthreads();
    
    if (i < Nparticles) {
        weights[i] = weights[i] / sumWeights;
    }
}


__global__ void normalize_weights_kernel2(double* weights, double * CDF, double * u, int * seed, int Nparticles) {
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

__global__ void likelihood_kernel(double * arrayX, double * arrayY, double * xj, double * yj, double * CDF, int * ind, int * objxy, double * likelihood, unsigned char * I, double * u, double * weights, int Nparticles, int countOnes, int max_size, int k, int IszY, int Nfr, int *seed, double* partial_sums) {
    int block_id = blockIdx.x;
    int i = blockDim.x * block_id + threadIdx.x;
    int y;
    
    int indX, indY; 

    if (threadIdx.x == 0) {
        partial_sums[blockIdx.x] = weights[0];
    }

}

/** 
 * Takes in a double and returns an integer that approximates to that double
 * @return if the mantissa < .5 => return value < input value; else return value > input value
 */
double roundDouble(double value) {
    int newValue = (int) (value);
    if (value - newValue < .5)
        return newValue;
    else
        return newValue++;
}

/**
 * Fills a radius x radius matrix representing the disk
 * @param disk The pointer to the disk to be made
 * @param radius  The radius of the disk to be made
 */
void strelDisk(int * disk, int radius) {
    int diameter = radius * 2 - 1;
    int x, y;
    for (x = 0; x < diameter; x++) {
        for (y = 0; y < diameter; y++) {
            double distance = sqrt(pow((double) (x - radius + 1), 2) + pow((double) (y - radius + 1), 2));
            if (distance < radius)
                disk[x * diameter + y] = 1;
        }
    }
}

/**
 * Fills a 2D array describing the offsets of the disk object
 * @param se The disk object
 * @param numOnes The number of ones in the disk
 * @param neighbors The array that will contain the offsets
 * @param radius The radius used for dilation
 */
void getneighbors(int * se, int numOnes, int * neighbors, int radius) {
    int x, y;
    int neighY = 0;
    int center = radius - 1;
    int diameter = radius * 2 - 1;
    for (x = 0; x < diameter; x++) {
        for (y = 0; y < diameter; y++) {
            if (se[x * diameter + y]) {
                neighbors[neighY * 2] = (int) (y - center);
                neighbors[neighY * 2 + 1] = (int) (x - center);
                neighY++;
            }
        }
    }
}

/**
 * The implementation of the particle filter using OpenMP for many frames
 * @see http://openmp.org/wp/
 * @note This function is designed to work with a video of several frames. In addition, it references a provided MATLAB function which takes the video, the objxy matrix and the x and y arrays as arguments and returns the likelihoods
 * @param I The video to be run
 * @param IszX The x dimension of the video
 * @param IszY The y dimension of the video
 * @param Nfr The number of frames
 * @param seed The seed array used for random number generation
 * @param Nparticles The number of particles to be used
 */
void particleFilter(unsigned char * I, int IszX, int IszY, int Nfr, int * seed, int Nparticles) {
    int max_size = IszX * IszY*Nfr;
    //original particle centroid
    double xe = roundDouble(IszY / 2.0);
    double ye = roundDouble(IszX / 2.0);

    //expected object locations, compared to center
    int radius = 5;
    int diameter = radius * 2 - 1;
    int * disk = (int*) malloc(diameter * diameter * sizeof (int));
    strelDisk(disk, radius);
    int countOnes = 0;
    int x, y;
    for (x = 0; x < diameter; x++) {
        for (y = 0; y < diameter; y++) {
            if (disk[x * diameter + y] == 1)
                countOnes++;
        }
    }
    int * objxy = (int *) malloc(countOnes * 2 * sizeof (int));
    getneighbors(disk, countOnes, objxy, radius);
    //initial weights are all equal (1/Nparticles)
    double * weights = (double *) malloc(sizeof (double) *Nparticles);
    for (x = 0; x < Nparticles; x++) {
        weights[x] = 1 / ((double) (Nparticles));
    }

    //initial likelihood to 0.0
    double * likelihood = (double *) malloc(sizeof (double) *Nparticles);
    double * arrayX = (double *) malloc(sizeof (double) *Nparticles);
    double * arrayY = (double *) malloc(sizeof (double) *Nparticles);
    double * xj = (double *) malloc(sizeof (double) *Nparticles);
    double * yj = (double *) malloc(sizeof (double) *Nparticles);
    double * CDF = (double *) malloc(sizeof (double) *Nparticles);

    //GPU copies of arrays
    double * arrayX_GPU;
    double * arrayY_GPU;
    double * xj_GPU;
    double * yj_GPU;
    double * CDF_GPU;
    double * likelihood_GPU;
    unsigned char * I_GPU;
    double * weights_GPU;
    int * objxy_GPU;

    int * ind = (int*) malloc(sizeof (int) *countOnes * Nparticles);
    int * ind_GPU;
    double * u = (double *) malloc(sizeof (double) *Nparticles);
    double * u_GPU;
    int * seed_GPU;
    double* partial_sums;

    //CUDA memory allocation
    check_error(cudaMalloc((void **) &arrayX_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &arrayY_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &xj_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &yj_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &CDF_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &u_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &likelihood_GPU, sizeof (double) *Nparticles));
    //set likelihood to zero
    check_error(cudaMemset((void *) likelihood_GPU, 0, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &weights_GPU, sizeof (double) *Nparticles));
    check_error(cudaMalloc((void **) &I_GPU, sizeof (unsigned char) *IszX * IszY * Nfr));
    check_error(cudaMalloc((void **) &objxy_GPU, sizeof (int) *2 * countOnes));
    check_error(cudaMalloc((void **) &ind_GPU, sizeof (int) *countOnes * Nparticles));
    check_error(cudaMalloc((void **) &seed_GPU, sizeof (int) *Nparticles));
    check_error(cudaMalloc((void **) &partial_sums, sizeof (double) *Nparticles));


    //Donnie - this loop is different because in this kernel, arrayX and arrayY
    //  are set equal to xj before every iteration, so effectively, arrayX and 
    //  arrayY will be set to xe and ye before the first iteration.
    for (x = 0; x < Nparticles; x++) {

        xj[x] = xe;
        yj[x] = ye;

    }

    int indX, indY;
    //start send
    check_error(cudaMemcpy(I_GPU, I, sizeof (unsigned char) *IszX * IszY*Nfr, cudaMemcpyHostToDevice));
    check_error(cudaMemcpy(objxy_GPU, objxy, sizeof (int) *2 * countOnes, cudaMemcpyHostToDevice));
    check_error(cudaMemcpy(weights_GPU, weights, sizeof (double) *Nparticles, cudaMemcpyHostToDevice));
    check_error(cudaMemcpy(xj_GPU, xj, sizeof (double) *Nparticles, cudaMemcpyHostToDevice));
    check_error(cudaMemcpy(yj_GPU, yj, sizeof (double) *Nparticles, cudaMemcpyHostToDevice));
    check_error(cudaMemcpy(seed_GPU, seed, sizeof (int) *Nparticles, cudaMemcpyHostToDevice));
    int num_blocks = ceil((double) Nparticles / (double) threads_per_block);


    Nfr = 2;

    {
        int k = 1;
      likelihood_kernel <<< num_blocks, threads_per_block >>> (arrayX_GPU, arrayY_GPU, xj_GPU, yj_GPU, CDF_GPU, ind_GPU, objxy_GPU, likelihood_GPU, I_GPU, u_GPU, weights_GPU, Nparticles, countOnes, max_size, k, IszY, Nfr, seed_GPU, partial_sums);

        int x;
        double sum = 0.0;
        int num_blocks = ceil((double) Nparticles / (double) threads_per_block);
        for (x = 0; x < num_blocks; x++) {
            sum += partial_sums[x];
        }
        partial_sums[0] = sum;

      normalize_weights_kernel1 <<< num_blocks, threads_per_block >>> (weights_GPU, Nparticles, partial_sums, CDF_GPU, u_GPU, seed_GPU);
        
        CDF_GPU[0] = weights_GPU[0];
        for (int x = 1; x < Nparticles; x++) {
            CDF_GPU[x] = weights_GPU[x] + CDF_GPU[x - 1];
        }
      normalize_weights_kernel2 <<< num_blocks, threads_per_block >>> (weights_GPU, CDF_GPU, u_GPU, seed_GPU, Nparticles);

      find_index_kernel <<< num_blocks, threads_per_block >>> (CDF_GPU, u_GPU, Nparticles);
      
    }


    //block till kernels are finished

    cudaFree(xj_GPU);
    cudaFree(yj_GPU);
    cudaFree(CDF_GPU);
    cudaFree(u_GPU);
    cudaFree(likelihood_GPU);
    cudaFree(I_GPU);
    cudaFree(objxy_GPU);
    cudaFree(ind_GPU);
    cudaFree(seed_GPU);
    cudaFree(partial_sums);

    //CUDA freeing of memory
    cudaFree(weights_GPU);
    cudaFree(arrayY_GPU);
    cudaFree(arrayX_GPU);

    //free regular memory
    free(likelihood);
    free(arrayX);
    free(arrayY);
    free(xj);
    free(yj);
    free(CDF);
    free(ind);
    free(u);
}

int main(int argc, char * argv[]) {

    int IszX = 4096, IszY = 4096, Nfr = 2, Nparticles = 50000;

    //converting a string to a integer
    if (sscanf(argv[8], "%d", &Nparticles) == EOF) {
    }
    
    //establish seed
    int * seed = (int *) malloc(sizeof (int) *Nparticles);
    int i;
    for (i = 0; i < Nparticles; i++)
	    seed[i] = i;
    //malloc matrix
    unsigned char * I = (unsigned char *) malloc(sizeof (unsigned char) *IszX * IszY * Nfr);
    //call video sequence
    //videoSequence(I, IszX, IszY, Nfr, seed);
    //call particle filter
    particleFilter(I, IszX, IszY, Nfr, seed, Nparticles);

    free(seed);
    free(I);
    return 0;
}
