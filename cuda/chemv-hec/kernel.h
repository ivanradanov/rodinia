#ifndef KERNEL_H
#define KERNEL_H

#include <cuda.h>

struct ComplexFloat {
    float Re;
    float Im;
};

__global__ void kernel0(struct ComplexFloat *AT, struct ComplexFloat *X, struct ComplexFloat *Y, float alpha_im, float alpha_re, float beta_im, float beta_re);
__global__ void kernel1(struct ComplexFloat *AT, struct ComplexFloat *X, struct ComplexFloat *Y, float alpha_im, float alpha_re);

#endif
