// statistical kernel
__global__ void reduce(	long d_Ne,											// number of elements in array
                        int d_no,											// number of sums to reduce
                        int d_mul,											// increment
                        fp *d_sums,										// pointer to partial sums variable (DEVICE GLOBAL MEMORY)
                        fp *d_sums2){

    // indexes
    int bx = blockIdx.x;													// get current horizontal block index
    int tx = threadIdx.x;													// get current horizontal thread index
    int ei = (bx*NUMBER_THREADS)+tx;										// unique thread id, more threads than actual elements !!!
    int nf = NUMBER_THREADS-(gridDim.x*NUMBER_THREADS-d_no);				// number of elements assigned to last block
    int df = 0;																// divisibility factor for the last block

    // statistical
    __shared__ fp d_psum[NUMBER_THREADS];								// data for block calculations allocated by every block in its shared memory
    __shared__ fp d_psum2[NUMBER_THREADS];

    // counters
    int i;

    // copy data to shared memory
    if(ei<d_no){															// do only for the number of elements, omit extra threads

        d_psum[tx] = d_sums[ei*d_mul];
        d_psum2[tx] = d_sums2[ei*d_mul];

    }

    __syncthreads();
    if(bx != (gridDim.x - 1)){											//
        for(i=2; i<=NUMBER_THREADS; i=2*i){								//
            if((tx+1) % i == 0){										// every ith
                d_psum[tx] = d_psum[tx] + d_psum[tx-i/2];
                d_psum2[tx] = d_psum2[tx] + d_psum2[tx-i/2];
            }
            __syncthreads();											//
        }
        if(tx==(NUMBER_THREADS-1)){										// block result stored in global memory
            d_sums[bx*d_mul*NUMBER_THREADS] = d_psum[tx];
            d_sums2[bx*d_mul*NUMBER_THREADS] = d_psum2[tx];
        }
    }

}
