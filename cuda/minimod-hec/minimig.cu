#include <stdio.h>
#include <float.h>
#include <math.h>
#include <time.h>
#include <cuda.h>
#include "constants.h"

#define R 4
#define NDIM 8

__global__ void target_inner_3d_kernel(
    llint nx, llint ny, llint nz,
    llint x3, llint x4, llint y3, llint y4, llint z3, llint z4,
    llint lx, llint ly, llint lz,
    float hdx_2, float hdy_2, float hdz_2,
    float coef0,
    float coefx_1, float coefx_2, float coefx_3, float coefx_4,
    float coefy_1, float coefy_2, float coefy_3, float coefy_4,
    float coefz_1, float coefz_2, float coefz_3, float coefz_4,
    const float *__restrict__ u, float *__restrict__ v, const float *__restrict__ vp,
    const float *__restrict__ phi, const float *__restrict__ eta
) {
    __shared__ float s_u[NDIM+2*R][NDIM+2*R][NDIM+2*R];

    const llint i0 = x3 + blockIdx.z * blockDim.z;
    const llint j0 = y3 + blockIdx.y * blockDim.y;
    const llint k0 = z3 + blockIdx.x * blockDim.x;
    
    const int ti = threadIdx.z;
    const int tj = threadIdx.y;
    const int tk = threadIdx.x;

    const llint i = i0 + ti;
    const llint j = j0 + tj;
    const llint k = k0 + tk;

    s_u[ti][tj][tk] = 0.f;

    if (ti < 2*R && tj < 2*R && tk< 2*R)
      s_u[NDIM+ti][NDIM+tj][NDIM+tk] = 0.f;

    __syncthreads();

    const llint sui = ti + R;
    const llint suj = tj + R;
    const llint suk = tk + R;

    const int z_side = ti / R;
    s_u[ti+z_side*NDIM][suj][suk] = u[IDX3_l(i+(z_side*2-1)*R,j,k)];
    const int y_side = tj / R;
    s_u[sui][tj+y_side*NDIM][suk] = u[IDX3_l(i,j+(y_side*2-1)*R,k)];
    s_u[sui][suj][tk] = u[IDX3_l(i,j,k-R)];
    s_u[sui][suj][tk+NDIM] = u[IDX3_l(i,j,k+R)];

    __syncthreads();

    if (i > x4-1 || j > y4-1 || k > z4-1) { return; }

    float lap = coef0 * s_u[sui][suj][suk] + 
              coefx_1 * (s_u[sui+1][suj][suk] + s_u[sui-1][suj][suk]) +
              coefy_1 * (s_u[sui][suj+1][suk] + s_u[sui][suj-1][suk]) +
              coefz_1 * (s_u[sui][suj][suk+1] + s_u[sui][suj][suk-1]) +
              coefx_2 * (s_u[sui+2][suj][suk] + s_u[sui-2][suj][suk]) +
              coefy_2 * (s_u[sui][suj+2][suk] + s_u[sui][suj-2][suk]) +
              coefz_2 * (s_u[sui][suj][suk+2] + s_u[sui][suj][suk-2]) +
              coefx_3 * (s_u[sui+3][suj][suk] + s_u[sui-3][suj][suk]) +
              coefy_3 * (s_u[sui][suj+3][suk] + s_u[sui][suj-3][suk]) +
              coefz_3 * (s_u[sui][suj][suk+3] + s_u[sui][suj][suk-3]) +
              coefx_4 * (s_u[sui+4][suj][suk] + s_u[sui-4][suj][suk]) +
              coefy_4 * (s_u[sui][suj+4][suk] + s_u[sui][suj-4][suk]) +
              coefz_4 * (s_u[sui][suj][suk+4] + s_u[sui][suj][suk-4]);
    v[IDX3_l(i,j,k)] = 2.f * s_u[sui][suj][suk] + vp[IDX3(i,j,k)] * lap - v[IDX3_l(i,j,k)];
}

__global__ void target_pml_3d_kernel(
    llint nx, llint ny, llint nz,
    llint x3, llint x4, llint y3, llint y4, llint z3, llint z4,
    llint lx, llint ly, llint lz,
    float hdx_2, float hdy_2, float hdz_2,
    float coef0,
    float coefx_1, float coefx_2, float coefx_3, float coefx_4,
    float coefy_1, float coefy_2, float coefy_3, float coefy_4,
    float coefz_1, float coefz_2, float coefz_3, float coefz_4,
    const float *__restrict__ u, float *__restrict__ v, const float *__restrict__ vp,
    float *__restrict__ phi, const float *__restrict__ eta
) {
    __shared__ float s_u[NDIM+2*R][NDIM+2*R][NDIM+2*R];

    const llint i0 = x3 + blockIdx.z * blockDim.z;
    const llint j0 = y3 + blockIdx.y * blockDim.y;
    const llint k0 = z3 + blockIdx.x * blockDim.x;

    const int ti = threadIdx.z;
    const int tj = threadIdx.y;
    const int tk = threadIdx.x;

    const llint i = i0 + ti;
    const llint j = j0 + tj;
    const llint k = k0 + tk;

    s_u[ti][tj][tk] = 0.f;

    if (ti < 2*R && tj < 2*R && tk< 2*R)
      s_u[NDIM+ti][NDIM+tj][NDIM+tk] = 0.f;

    __syncthreads();

    const llint sui = ti + R;
    const llint suj = tj + R;
    const llint suk = tk + R;

    const int z_side = ti / R;
    s_u[ti+z_side*NDIM][suj][suk] = u[IDX3_l(i+(z_side*2-1)*R,j,k)];
    const int y_side = tj / R;
    s_u[sui][tj+y_side*NDIM][suk] = u[IDX3_l(i,j+(y_side*2-1)*R,k)];
    s_u[sui][suj][tk] = u[IDX3_l(i,j,k-R)];
    s_u[sui][suj][tk+NDIM] = u[IDX3_l(i,j,k+R)];

    __syncthreads();

    if (i > x4-1 || j > y4-1 || k > z4-1) { return; }

    float lap = coef0 * s_u[sui][suj][suk] + 
              coefx_1 * (s_u[sui+1][suj][suk] + s_u[sui-1][suj][suk]) +
              coefy_1 * (s_u[sui][suj+1][suk] + s_u[sui][suj-1][suk]) +
              coefz_1 * (s_u[sui][suj][suk+1] + s_u[sui][suj][suk-1]) +
              coefx_2 * (s_u[sui+2][suj][suk] + s_u[sui-2][suj][suk]) +
              coefy_2 * (s_u[sui][suj+2][suk] + s_u[sui][suj-2][suk]) +
              coefz_2 * (s_u[sui][suj][suk+2] + s_u[sui][suj][suk-2]) +
              coefx_3 * (s_u[sui+3][suj][suk] + s_u[sui-3][suj][suk]) +
              coefy_3 * (s_u[sui][suj+3][suk] + s_u[sui][suj-3][suk]) +
              coefz_3 * (s_u[sui][suj][suk+3] + s_u[sui][suj][suk-3]) +
              coefx_4 * (s_u[sui+4][suj][suk] + s_u[sui-4][suj][suk]) +
              coefy_4 * (s_u[sui][suj+4][suk] + s_u[sui][suj-4][suk]) +
              coefz_4 * (s_u[sui][suj][suk+4] + s_u[sui][suj][suk-4]);

    const float s_eta_c = eta[IDX3_eta1(i,j,k)];

    v[IDX3_l(i,j,k)] = ((2.f*s_eta_c + 2.f - s_eta_c*s_eta_c)*s_u[sui][suj][suk] + 
		    (vp[IDX3(i,j,k)] * (lap + phi[IDX3(i,j,k)]) - v[IDX3_l(i,j,k)])) / 
	    (2.f*s_eta_c+1.f);

    phi[IDX3(i,j,k)] = 
     (phi[IDX3(i,j,k)] - 
     ((eta[IDX3_eta1(i+1,j,k)]-eta[IDX3_eta1(i-1,j,k)]) * 
     (s_u[sui+1][suj][suk]-s_u[sui-1][suj][suk]) * hdx_2 + 
     (eta[IDX3_eta1(i,j+1,k)]-eta[IDX3_eta1(i,j-1,k)]) *
     (s_u[sui][suj+1][suk]-s_u[sui][suj-1][suk]) * hdy_2 +
     (eta[IDX3_eta1(i,j,k+1)]-eta[IDX3_eta1(i,j,k-1)]) *
     (s_u[sui][suj][suk+1]-s_u[sui][suj][suk-1]) * hdz_2)) / (1.f + s_eta_c);
}

__global__ void kernel_add_source_kernel(float *g_u, llint idx, float source) {
    g_u[idx] += source;
}

void target(
    uint nsteps, double *time_kernel,
    llint nx, llint ny, llint nz,
    llint x1, llint x2, llint x3, llint x4, llint x5, llint x6,
    llint y1, llint y2, llint y3, llint y4, llint y5, llint y6,
    llint z1, llint z2, llint z3, llint z4, llint z5, llint z6,
    llint lx, llint ly, llint lz,
    llint sx, llint sy, llint sz,
    float hdx_2, float hdy_2, float hdz_2,
    const float *__restrict__ coefx, const float *__restrict__ coefy, const float *__restrict__ coefz,
    float *__restrict__ u, const float *__restrict__ v, const float *__restrict__ vp,
    const float *__restrict__ phi, const float *__restrict__ eta, const float *__restrict__ source
) {
    struct timespec start, end;

    const llint size_u = (nx + 2 * lx) * (ny + 2 * ly) * (nz + 2 * lz);
    const llint size_v = size_u;
    const llint size_phi = nx*ny*nz;
    const llint size_vp = size_phi;
    const llint size_eta = (nx+2)*(ny+2)*(nz+2);

    const llint size_u_ext = ((((nx+NDIM-1) / NDIM + 1) * NDIM) + 2 * lx)
                           * ((((ny+NDIM-1) / NDIM + 1) * NDIM) + 2 * ly)
                           * ((((nz+NDIM-1) / NDIM + 1) * NDIM) + 2 * lz);

    float *d_u, *d_v, *d_vp, *d_phi, *d_eta;
    cudaMalloc(&d_u, sizeof(float) * size_u);
    cudaMalloc(&d_v, sizeof(float) * size_u);
    cudaMalloc(&d_vp, sizeof(float) * size_vp);
    cudaMalloc(&d_phi, sizeof(float) * size_phi);
    cudaMalloc(&d_eta, sizeof(float) * size_eta);

    cudaMemcpy(d_u, u, sizeof(float) * size_u, cudaMemcpyHostToDevice);
    cudaMemcpy(d_v, v, sizeof(float) * size_v, cudaMemcpyHostToDevice);
    cudaMemcpy(d_vp, vp, sizeof(float) * size_vp, cudaMemcpyHostToDevice);
    cudaMemcpy(d_phi, phi, sizeof(float) * size_phi, cudaMemcpyHostToDevice);
    cudaMemcpy(d_eta, eta, sizeof(float) * size_eta, cudaMemcpyHostToDevice);

    const llint xmin = 0; const llint xmax = nx;
    const llint ymin = 0; const llint ymax = ny;

    dim3 threadsPerBlock(NDIM, NDIM, NDIM);

    #ifdef DEBUG
    const uint npo = 100;
    #endif

    cudaDeviceSynchronize();
    clock_gettime(CLOCK_REALTIME, &start);

    for (uint istep = 1; istep <= nsteps; ++istep) {

        dim3 n_block_front(
            (z2-z1+NDIM-1) / NDIM,
            (ny+NDIM-1) / NDIM,
            (nx+NDIM-1) / NDIM);
        target_pml_3d_kernel<<<n_block_front, threadsPerBlock>>>(nx,ny,nz,
            xmin,xmax,ymin,ymax,z1,z2,
            lx,ly,lz,
            hdx_2, hdy_2, hdz_2,
            coefx[0]+coefy[0]+coefz[0],
            coefx[1], coefx[2], coefx[3], coefx[4],
            coefy[1], coefy[2], coefy[3], coefy[4],
            coefz[1], coefz[2], coefz[3], coefz[4],
            d_u, d_v, d_vp,
            d_phi, d_eta);

        dim3 n_block_top(
            (z4-z3+NDIM-1) / NDIM,
            (y2-y1+NDIM-1) / NDIM,
            (nx+NDIM-1) / NDIM);
        target_pml_3d_kernel<<<n_block_top, threadsPerBlock>>>(nx,ny,nz,
            xmin,xmax,y1,y2,z3,z4,
            lx,ly,lz,
            hdx_2, hdy_2, hdz_2,
            coefx[0]+coefy[0]+coefz[0],
            coefx[1], coefx[2], coefx[3], coefx[4],
            coefy[1], coefy[2], coefy[3], coefy[4],
            coefz[1], coefz[2], coefz[3], coefz[4],
            d_u, d_v, d_vp,
            d_phi, d_eta);

        dim3 n_block_left(
            (z4-z3+NDIM-1) / NDIM,
            (y4-y3+NDIM-1) / NDIM,
            (x2-x1+NDIM-1) / NDIM);
        target_pml_3d_kernel<<<n_block_left, threadsPerBlock>>>(nx,ny,nz,
            x1,x2,y3,y4,z3,z4,
            lx,ly,lz,
            hdx_2, hdy_2, hdz_2,
            coefx[0]+coefy[0]+coefz[0],
            coefx[1], coefx[2], coefx[3], coefx[4],
            coefy[1], coefy[2], coefy[3], coefy[4],
            coefz[1], coefz[2], coefz[3], coefz[4],
            d_u, d_v, d_vp,
            d_phi, d_eta);

        dim3 n_block_center(
            (z4-z3+NDIM-1) / NDIM,
            (y4-y3+NDIM-1) / NDIM,
            (x4-x3+NDIM-1) / NDIM);
        target_inner_3d_kernel<<<n_block_center, threadsPerBlock>>>(nx,ny,nz,
            x3,x4,y3,y4,z3,z4,
            lx,ly,lz,
            hdx_2, hdy_2, hdz_2,
            coefx[0]+coefy[0]+coefz[0],
            coefx[1], coefx[2], coefx[3], coefx[4],
            coefy[1], coefy[2], coefy[3], coefy[4],
            coefz[1], coefz[2], coefz[3], coefz[4],
            d_u, d_v, d_vp,
            d_phi, d_eta);

        dim3 n_block_right(
            (z4-z3+NDIM-1) / NDIM,
            (y4-y3+NDIM-1) / NDIM,
            (x6-x5+NDIM-1) / NDIM);
        target_pml_3d_kernel<<<n_block_right, threadsPerBlock>>>(nx,ny,nz,
            x5,x6,y3,y4,z3,z4,
            lx,ly,lz,
            hdx_2, hdy_2, hdz_2,
            coefx[0]+coefy[0]+coefz[0],
            coefx[1], coefx[2], coefx[3], coefx[4],
            coefy[1], coefy[2], coefy[3], coefy[4],
            coefz[1], coefz[2], coefz[3], coefz[4],
            d_u, d_v, d_vp,
            d_phi, d_eta);

        dim3 n_block_bottom(
            (z4-z3+NDIM-1) / NDIM,
            (y6-y5+NDIM-1) / NDIM,
            (nx+NDIM-1) / NDIM);
        target_pml_3d_kernel<<<n_block_bottom, threadsPerBlock>>>(nx,ny,nz,
            xmin,xmax,y5,y6,z3,z4,
            lx,ly,lz,
            hdx_2, hdy_2, hdz_2,
            coefx[0]+coefy[0]+coefz[0],
            coefx[1], coefx[2], coefx[3], coefx[4],
            coefy[1], coefy[2], coefy[3], coefy[4],
            coefz[1], coefz[2], coefz[3], coefz[4],
            d_u, d_v, d_vp,
            d_phi, d_eta);

        dim3 n_block_back(
            (z6-z5+NDIM-1) / NDIM,
            (ny+NDIM-1) / NDIM,
            (nx+NDIM-1) / NDIM);
        target_pml_3d_kernel<<<n_block_back, threadsPerBlock>>>(nx,ny,nz,
            xmin,xmax,ymin,ymax,z5,z6,
            lx,ly,lz,
            hdx_2, hdy_2, hdz_2,
            coefx[0]+coefy[0]+coefz[0],
            coefx[1], coefx[2], coefx[3], coefx[4],
            coefy[1], coefy[2], coefy[3], coefy[4],
            coefz[1], coefz[2], coefz[3], coefz[4],
            d_u, d_v, d_vp,
            d_phi, d_eta);

        kernel_add_source_kernel<<<1, 1>>>(d_v, IDX3_l(sx,sy,sz), source[istep]);

        float *t = d_u;
        d_u = d_v;
        d_v = t;

        // Print out
        #ifdef DEBUG
        if (istep % npo == 0) printf("time step %u / %u\n", istep, nsteps);
        #endif
    }

    cudaDeviceSynchronize();
    clock_gettime(CLOCK_REALTIME, &end);
    *time_kernel = (end.tv_sec  - start.tv_sec) +
                   (double)(end.tv_nsec - start.tv_nsec) / 1.0e9;

    cudaMemcpy(u, d_u, sizeof(float) * size_u, cudaMemcpyDeviceToHost);
    cudaFree(d_u);
    cudaFree(d_v);
    cudaFree(d_vp);
    cudaFree(d_phi);
    cudaFree(d_eta);
}
