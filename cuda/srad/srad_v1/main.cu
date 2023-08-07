//====================================================================================================100
//		UPDATE
//====================================================================================================100

//    2006.03   Rob Janiczek
//        --creation of prototype version
//    2006.03   Drew Gilliam
//        --rewriting of prototype version into current version
//        --got rid of multiple function calls, all code in a  
//         single function (for speed)
//        --code cleanup & commenting
//        --code optimization efforts   
//    2006.04   Drew Gilliam
//        --added diffusion coefficent saturation on [0,1]
//		2009.12 Lukasz G. Szafaryn
//		-- reading from image, command line inputs
//		2010.01 Lukasz G. Szafaryn
//		--comments

//====================================================================================================100
//	DEFINE / INCLUDE
//====================================================================================================100

#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <cuda.h>

#include "define.c"
#include "extract_kernel.cu"
#include "prepare_kernel.cu"
#include "reduce_kernel.cu"
#include "srad_kernel.cu"
#include "srad2_kernel.cu"
#include "compress_kernel.cu"
#include "graphics.c"
#include "resize.c"
#include "timer.c"

#include "device.c"				// (in library path specified to compiler)	needed by for device functions

//====================================================================================================100
//	MAIN FUNCTION
//====================================================================================================100

int main(int argc, char *argv []){

    //================================================================================80
    // 	VARIABLES
    //================================================================================80

    // time
    long long time0;
    long long time1;
    long long time2;
    long long time3;
    long long time4;
    long long time5;
    long long time6;
    long long time7;
    long long time8;
    long long time9;
    long long time10;
    long long time11;
    long long time12;

    time0 = get_time();

    // inputs image, input paramenters
    fp* image_ori;																// originalinput image
    int image_ori_rows;
    int image_ori_cols;
    long image_ori_elem;

    // inputs image, input paramenters
    fp* image;															// input image
    int Nr,Nc;													// IMAGE nbr of rows/cols/elements
    long Ne;

    // algorithm parameters
    int niter;																// nbr of iterations
    fp lambda;															// update step size

    // size of IMAGE
    int r1,r2,c1,c2;												// row/col coordinates of uniform ROI
    long NeROI;														// ROI nbr of elements

    // surrounding pixel indicies
    int *iN,*iS,*jE,*jW;    

    // counters
    long i,j;    // image row/col

    // memory sizes
    int mem_size_i;
    int mem_size_j;
    int mem_size_single;

    //================================================================================80
    // 	GPU VARIABLES
    //================================================================================80

    // CUDA kernel execution parameters
    dim3 threads;
    int blocks_x;
    dim3 blocks;
    dim3 blocks2;
    dim3 blocks3;

    // memory sizes
    int mem_size;															// matrix memory size

    // HOST
    int no;
    int mul;
    fp total;
    fp total2;
    fp meanROI;
    fp meanROI2;
    fp varROI;
    fp q0sqr;

    // DEVICE
    fp* d_sums;															// partial sum
    fp* d_sums2;
    int* d_iN;
    int* d_iS;
    int* d_jE;
    int* d_jW;
    fp* d_dN;
    fp* d_dS;
    fp* d_dW;
    fp* d_dE;
    fp* d_I;																// input IMAGE on DEVICE
    fp* d_c;

    time1 = get_time();

    //================================================================================80
    // 	GET INPUT PARAMETERS
    //================================================================================80

    if(argc != 5){
        printf("ERROR: wrong number of arguments\n");
        return 0;
    }
    else{
        niter = atoi(argv[1]);
        lambda = atof(argv[2]);
        Nr = atoi(argv[3]);						// it is 502 in the original image
        Nc = atoi(argv[4]);						// it is 458 in the original image
    }

    time2 = get_time();

    //================================================================================80
    // 	READ IMAGE (SIZE OF IMAGE HAS TO BE KNOWN)
    //================================================================================80

    // read image
    image_ori_rows = 502;
    image_ori_cols = 458;
    image_ori_elem = image_ori_rows * image_ori_cols;

    image_ori = (fp*)malloc(sizeof(fp) * image_ori_elem);

    read_graphics(	"../../../data/srad/image.pgm",
                    image_ori,
                    image_ori_rows,
                    image_ori_cols,
                    1);

    time3 = get_time();

    //================================================================================80
    // 	RESIZE IMAGE (ASSUMING COLUMN MAJOR STORAGE OF image_orig)
    //================================================================================80

    Ne = Nr*Nc;

    image = (fp*)malloc(sizeof(fp) * Ne);

    resize(	image_ori,
            image_ori_rows,
            image_ori_cols,
            image,
            Nr,
            Nc,
            1);

    time4 = get_time();

    //================================================================================80
    // 	SETUP
    //================================================================================80

    r1     = 0;											// top row index of ROI
    r2     = Nr - 1;									// bottom row index of ROI
    c1     = 0;											// left column index of ROI
    c2     = Nc - 1;									// right column index of ROI

    // ROI image size
    NeROI = (r2-r1+1)*(c2-c1+1);											// number of elements in ROI, ROI size

    // allocate variables for surrounding pixels
    mem_size_i = sizeof(int) * Nr;											//
    iN = (int *)malloc(mem_size_i) ;										// north surrounding element
    iS = (int *)malloc(mem_size_i) ;										// south surrounding element
    mem_size_j = sizeof(int) * Nc;											//
    jW = (int *)malloc(mem_size_j) ;										// west surrounding element
    jE = (int *)malloc(mem_size_j) ;										// east surrounding element

    // N/S/W/E indices of surrounding pixels (every element of IMAGE)
    for (i=0; i<Nr; i++) {
        iN[i] = i-1;														// holds index of IMAGE row above
        iS[i] = i+1;														// holds index of IMAGE row below
    }
    for (j=0; j<Nc; j++) {
        jW[j] = j-1;														// holds index of IMAGE column on the left
        jE[j] = j+1;														// holds index of IMAGE column on the right
    }

    // N/S/W/E boundary conditions, fix surrounding indices outside boundary of image
    iN[0]    = 0;															// changes IMAGE top row index from -1 to 0
    iS[Nr-1] = Nr-1;														// changes IMAGE bottom row index from Nr to Nr-1
    jW[0]    = 0;															// changes IMAGE leftmost column index from -1 to 0
    jE[Nc-1] = Nc-1;														// changes IMAGE rightmost column index from Nc to Nc-1

    //================================================================================80
    // 	GPU SETUP
    //================================================================================80

    // allocate memory for entire IMAGE on DEVICE
    mem_size = sizeof(fp) * Ne;																		// get the size of float representation of input IMAGE
    cudaMalloc((void **)&d_I, mem_size);														//

    // allocate memory for coordinates on DEVICE
    cudaMalloc((void **)&d_iN, mem_size_i);													//
    cudaMemcpy(d_iN, iN, mem_size_i, cudaMemcpyHostToDevice);				//
    cudaMalloc((void **)&d_iS, mem_size_i);													//
    cudaMemcpy(d_iS, iS, mem_size_i, cudaMemcpyHostToDevice);				//
    cudaMalloc((void **)&d_jE, mem_size_j);													//
    cudaMemcpy(d_jE, jE, mem_size_j, cudaMemcpyHostToDevice);				//
    cudaMalloc((void **)&d_jW, mem_size_j);													//
    cudaMemcpy(d_jW, jW, mem_size_j, cudaMemcpyHostToDevice);			//

    // allocate memory for partial sums on DEVICE
    cudaMalloc((void **)&d_sums, mem_size);													//
    cudaMalloc((void **)&d_sums2, mem_size);												//

    // allocate memory for derivatives
    cudaMalloc((void **)&d_dN, mem_size);														//
    cudaMalloc((void **)&d_dS, mem_size);														//
    cudaMalloc((void **)&d_dW, mem_size);													//
    cudaMalloc((void **)&d_dE, mem_size);														//

    // allocate memory for coefficient on DEVICE
    cudaMalloc((void **)&d_c, mem_size);														//

    checkCUDAError("setup");

    //================================================================================80
    // 	KERNEL EXECUTION PARAMETERS
    //================================================================================80

    // all kernels operating on entire matrix
    threads.x = NUMBER_THREADS;												// define the number of threads in the block
    threads.y = 1;
    blocks_x = Ne/threads.x;
    if (Ne % threads.x != 0){												// compensate for division remainder above by adding one grid
        blocks_x = blocks_x + 1;
    }
    blocks.x = blocks_x;													// define the number of blocks in the grid
    blocks.y = 1;

    time5 = get_time();

    //================================================================================80
    // 	COPY INPUT TO CPU
    //================================================================================80

    cudaMemcpy(d_I, image, mem_size, cudaMemcpyHostToDevice);

    time6 = get_time();

    //================================================================================80
    // 	SCALE IMAGE DOWN FROM 0-255 TO 0-1 AND EXTRACT
    //================================================================================80

    extract<<<blocks, threads>>>(	Ne,
                                    d_I);

    checkCUDAError("extract");

    time7 = get_time();

    //================================================================================80
    // 	COMPUTATION
    //================================================================================80

    // printf("iterations: ");

    // execute main loop
    prepare<<<blocks, threads>>>(	Ne,
                                    d_I,
                                    d_sums,
                                    d_sums2);

    checkCUDAError("prepare");

    // performs subsequent reductions of sums
    blocks2.x = blocks.x;												// original number of blocks
    blocks2.y = blocks.y;
    no = Ne;														// original number of sum elements
    mul = 1;														// original multiplier
    MY_START_CLOCK(srad_v1, reduce);
    reduce<<<blocks2, threads>>>(	Ne,
                                    no,
                                    mul,
                                    d_sums,
                                    d_sums2);
    MY_STOP_CLOCK(srad_v1, reduce);
    //MY_DEVICE_VERIFY_FLOAT(d_sums, mem_size / sizeof(fp));
    return 0;
}

//====================================================================================================100
//	END OF FILE
//====================================================================================================100
