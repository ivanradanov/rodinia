#include <iostream>
#include <cstdlib>
#include <chrono>
#include <cuda.h>

#define p_IJWID 6
#define p_JID   4
#define p_JWID  5
#define p_Np    512
#define p_Nq    8
#define p_Nvgeo 12
#define p_RXID  0
#define p_RYID  1
#define p_RZID  7
#define p_SXID  2
#define p_SYID  3
#define p_SZID  8
#define p_TXID  9
#define p_TYID  10
#define p_TZID  11
#define p_cubNp 4096
#define p_cubNq 16

// kernel
#include "adv.cu"

dfloat *drandAlloc(int N){
  dfloat *v = (dfloat*) calloc(N, sizeof(dfloat));
  for(int n = 0; n < N; ++n) v[n] = drand48();
  return v;
}

int main(int argc, char **argv) {

  if (argc < 4) {
    printf("Usage: ./adv N cubN numElements [nRepetitions]\n");
    exit(-1);
  }

  const int N = atoi(argv[1]);
  const int cubN = atoi(argv[2]);
  const dlong Nelements = atoi(argv[3]);
  int Ntests = 1;

  if(argc >= 5) Ntests = atoi(argv[4]);

  const int Nq = N+1;
  const int cubNq = cubN+1;
  const int Np = Nq*Nq*Nq;
  const int cubNp = cubNq*cubNq*cubNq;
  const dlong offset = Nelements*Np;

  printf("Data type in bytes: %zu\n", sizeof(dfloat));

  srand48(123);
  dfloat *vgeo           = drandAlloc(Np*Nelements*p_Nvgeo);
  dfloat *cubvgeo        = drandAlloc(cubNp*Nelements*p_Nvgeo);
  dfloat *cubDiffInterpT = drandAlloc(3*cubNp*Nelements);
  dfloat *cubInterpT     = drandAlloc(Np*cubNp);
  dfloat *u              = drandAlloc(3*Np*Nelements);
  dfloat *adv            = drandAlloc(3*Np*Nelements);

  dfloat *d_vgeo, *d_cubvgeo, *d_cubDiffInterpT, *d_cubInterpT, *d_u, *d_adv;
  cudaMalloc((void**)&d_vgeo, Np*Nelements*p_Nvgeo*sizeof(dfloat));
  cudaMalloc((void**)&d_cubvgeo, cubNp*Nelements*p_Nvgeo*sizeof(dfloat));
  cudaMalloc((void**)&d_cubDiffInterpT,3*cubNp*Nelements*sizeof(dfloat));
  cudaMalloc((void**)&d_cubInterpT, Np*cubNp*sizeof(dfloat));
  cudaMalloc((void**)&d_u, 3*Np*Nelements*sizeof(dfloat));
  cudaMalloc((void**)&d_adv, 3*Np*Nelements*sizeof(dfloat));

  cudaMemcpy(d_vgeo, vgeo, Np*Nelements*p_Nvgeo*sizeof(dfloat), cudaMemcpyHostToDevice);
  cudaMemcpy(d_cubvgeo, cubvgeo, cubNp*Nelements*p_Nvgeo*sizeof(dfloat), cudaMemcpyHostToDevice);
  cudaMemcpy(d_cubDiffInterpT, cubDiffInterpT, 3*cubNp*Nelements*sizeof(dfloat), cudaMemcpyHostToDevice);
  cudaMemcpy(d_cubInterpT, cubInterpT, Np*cubNp*sizeof(dfloat), cudaMemcpyHostToDevice);
  cudaMemcpy(d_u, u, 3*Np*Nelements*sizeof(dfloat), cudaMemcpyHostToDevice);
  cudaMemcpy(d_adv, adv, 3*Np*Nelements*sizeof(dfloat), cudaMemcpyHostToDevice);

  cudaDeviceSynchronize();
  auto start = std::chrono::high_resolution_clock::now();

  // run kernel
  for(int test=0;test<Ntests;++test) 
    advCubatureHex3D<<<dim3(Nelements, 1), dim3(16, 16)>>>( 
        Nelements,
        d_vgeo,
        d_cubvgeo,
        d_cubDiffInterpT,
        d_cubInterpT,
        offset,
        d_u,
        d_adv);

  cudaDeviceSynchronize();
  auto end = std::chrono::high_resolution_clock::now();
  const double elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count() / Ntests;

  cudaMemcpy(adv, d_adv, 3*Np*Nelements*sizeof(dfloat), cudaMemcpyDeviceToHost);

  cudaFree(d_vgeo);
  cudaFree(d_cubvgeo);
  cudaFree(d_cubDiffInterpT);
  cudaFree(d_cubInterpT);
  cudaFree(d_u);
  cudaFree(d_adv);

  double checksum = 0;
  for (int i = 0; i < 3*Np*Nelements; i++) {
    checksum += adv[i];
    #ifdef OUTPUT
    std::cout << adv[i] << "\n";
    #endif
  }
  std::cout << "Checksum=" << checksum << "\n";

  // statistics
  const dfloat GDOFPerSecond = (N*N*N)*Nelements/elapsed;
  std::cout << " NRepetitions=" << Ntests
            << " N=" << N
            << " cubN=" << cubN
            << " Nelements=" << Nelements
            << " elapsed time=" << elapsed
            << " GDOF/s=" << GDOFPerSecond
            << "\n";

  free(vgeo          );
  free(cubvgeo       );
  free(cubDiffInterpT);
  free(cubInterpT    );
  free(u             );
  free(adv           );
  return 0;
}
