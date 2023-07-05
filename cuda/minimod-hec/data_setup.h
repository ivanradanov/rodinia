#ifndef DATA_SETUP_H
#define DATA_SETUP_H

#include "constants.h"
#include "grid.h"

void target_init(struct grid_t grid, uint nsteps,
                 const float *__restrict__ u, const float *__restrict__ v, const float *__restrict__ phi,
                 const float *__restrict__ eta, const float *__restrict__ coefx, const float *__restrict__ coefy,
                 const float *__restrict__ coefz, const float *__restrict__ vp, const float *__restrict__ source);

void target(uint nsteps, double *time_kernel,
            llint nx, llint ny, llint nz,
            llint x1, llint x2, llint x3, llint x4, llint x5, llint x6,
            llint y1, llint y2, llint y3, llint y4, llint y5, llint y6,
            llint z1, llint z2, llint z3, llint z4, llint z5, llint z6,
            llint lx, llint ly, llint lz,
            llint sx, llint sy, llint sz,
            float hdx_2, float hdy_2, float hdz_2,
            const float *__restrict__ coefx, const float *__restrict__ coefy, const float *__restrict__ coefz,
            float *__restrict__ u, const float *__restrict__ v, const float *__restrict__ vp,
            const float *__restrict__ phi, const float *__restrict__ eta, const float *__restrict__ source);

void target_finalize(struct grid_t grid, uint nsteps,
                     const float *__restrict__ u, const float *__restrict__ v, const float *__restrict__ phi,
                     const float *__restrict__ eta, const float *__restrict__ coefx, const float *__restrict__ coefy,
                     const float *__restrict__ coefz, const float *__restrict__ vp, const float *__restrict__ source);

void kernel_add_source(struct grid_t grid,
                       float *__restrict__ u, const float *__restrict__ source, llint istep,
                       llint sx, llint sy, llint sz);

void find_min_max_u(struct grid_t grid,
                    const float *__restrict__ u, float *__restrict__ min_u, float *__restrict__ max_u);

#endif
