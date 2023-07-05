#include <xmmintrin.h>
#include "defs.h"

/*
 * Convert to super-site packed format
 */
void
to_supersite(supersite *ssarr, float *arr) {
  for(int y=0; y<Ly; y++)
    for(int x=0; x<Lx/4; x++) {
      int vv = x + (Lx/4)*y;
      int v = x + (Lx)*y;
      ssarr[vv].site4[0] = arr[v+0*Lx/4];
      ssarr[vv].site4[1] = arr[v+1*Lx/4];
      ssarr[vv].site4[2] = arr[v+2*Lx/4];
      ssarr[vv].site4[3] = arr[v+3*Lx/4];
    }
  return;
}

/*
 * Convert from super-site packed format
 */
void
from_supersite(float *arr, supersite *ssarr) {
  for(int y=0; y<Ly; y++)
    for(int x=0; x<Lx/4; x++) {
      int vv = x + (Lx/4)*y;
      int v = x + (Lx)*y;
      arr[v+0*Lx/4] = ssarr[vv].site4[0];
      arr[v+1*Lx/4] = ssarr[vv].site4[1];
      arr[v+2*Lx/4] = ssarr[vv].site4[2];
      arr[v+3*Lx/4] = ssarr[vv].site4[3];
    }
  return;
}

/*
 * Single iteration of lapl equation on super-site packed arrays
 * Super-site packing helps in vectorization
 */
void
lapl_iter_supersite(supersite *out, float sigma, supersite *in)
{
#pragma omp parallel firstprivate(out, in, sigma)
  {
    float delta = sigma / (1+4*sigma);
    float norm = 1./(1+4*sigma);
    __m128 register vnorm = _mm_load1_ps(&norm);
    __m128 register vdelta = _mm_load1_ps(&delta);
    /* Do lapl iteration on volume, ommiting boundaries in x-direction */
#pragma omp for nowait
    for(int y=0; y<Ly; y++)
      for(int x=1; x<Lx/4-1; x++) {
	int lx = Lx/4;
	int v00 = x+y*lx;
	int v0p = v00+1;
	int v0m = v00-1;
	int vp0 = x + ((y+1)%Ly)*lx;
	int vm0 = x + ((Ly+(y-1))%Ly)*lx;
	
	__m128 register in00 = _mm_load_ps(&in[v00].site4[0]);
	__m128 register in0p = _mm_load_ps(&in[v0p].site4[0]);
	__m128 register in0m = _mm_load_ps(&in[v0m].site4[0]);
	__m128 register inp0 = _mm_load_ps(&in[vp0].site4[0]);
	__m128 register inm0 = _mm_load_ps(&in[vm0].site4[0]);
	
	__m128 register hop = _mm_add_ps(inm0, inp0);
	hop = _mm_add_ps(hop, in0p);
	hop = _mm_add_ps(hop, in0m);
	hop = _mm_mul_ps(hop, vdelta);
	__m128 register dia = _mm_mul_ps(vnorm, in00);
	hop = _mm_add_ps(dia, hop);
	_mm_store_ps(&out[v00].site4[0], hop);
      }
    /* Do lapl iteration on x = 0 boundary sites */
#pragma omp for nowait
    for(int y=0; y<Ly; y++) {
      int lx = Lx/4;
      int x = 0;
      int v00 = x+y*lx;
      int v0p = v00+1;
      int v0m = lx-1+y*lx;
      int vp0 = x + ((y+1)%Ly)*lx;
      int vm0 = x + ((Ly+(y-1))%Ly)*lx;    
      
      __m128 register in00 = _mm_load_ps(&in[v00].site4[0]);
      __m128 register in0p = _mm_load_ps(&in[v0p].site4[0]);
      __m128 register in0m = _mm_load_ps(&in[v0m].site4[0]);
      in0m = _mm_shuffle_ps(in0m, in0m, _MM_SHUFFLE(2,1,0,3));
      __m128 register inp0 = _mm_load_ps(&in[vp0].site4[0]);
      __m128 register inm0 = _mm_load_ps(&in[vm0].site4[0]);
      
      __m128 register hop = _mm_add_ps(inm0, inp0);
      hop = _mm_add_ps(hop, in0p);
      hop = _mm_add_ps(hop, in0m);
      hop = _mm_mul_ps(hop, vdelta);
      __m128 register dia = _mm_mul_ps(vnorm, in00);
      hop = _mm_add_ps(dia, hop);
      _mm_store_ps(&out[v00].site4[0], hop);
    }
    /* Do lapl iteration on x = Lx-1 boundary sites */
#pragma omp for nowait
    for(int y=0; y<Ly; y++) {
      int lx = Lx/4;
      int x = lx-1;
      int v00 = x+y*lx;
      int v0p = y*lx;
      int v0m = v00-1;
      int vp0 = x + ((y+1)%Ly)*lx;
      int vm0 = x + ((Ly+(y-1))%Ly)*lx;    
      
      __m128 register in00 = _mm_load_ps(&in[v00].site4[0]);
      __m128 register in0p = _mm_load_ps(&in[v0p].site4[0]);
      in0p = _mm_shuffle_ps(in0p, in0p, _MM_SHUFFLE(0,3,2,1));
      __m128 register in0m = _mm_load_ps(&in[v0m].site4[0]);
      __m128 register inp0 = _mm_load_ps(&in[vp0].site4[0]);
      __m128 register inm0 = _mm_load_ps(&in[vm0].site4[0]);
      
      __m128 register hop = _mm_add_ps(inm0, inp0);
      hop = _mm_add_ps(hop, in0p);
      hop = _mm_add_ps(hop, in0m);
      hop = _mm_mul_ps(hop, vdelta);
      __m128 register dia = _mm_mul_ps(vnorm, in00);
      hop = _mm_add_ps(dia, hop);
      _mm_store_ps(&out[v00].site4[0], hop);
    }
  }
}
