#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <iostream>
#include <chrono>
#include <cuda.h>
#include "reference.h"

__global__ void kernel(
  const unsigned int rows,
  const unsigned int cols,
  const int cRows,
  const int contRows,
  const unsigned char *__restrict__ snpdata,
  float *__restrict__ results)
{
  unsigned char y;
  int m, n;
  unsigned int p = 0;
  int cases[3];
  int controls[3];
  int tot_cases = 1;
  int tot_controls= 1;
  int total = 1;
  float chisquare = 0.0f;
  float exp[3];        
  float Conexpected[3];        
  float Cexpected[3];
  float numerator1;
  float numerator2;

  int tid = threadIdx.x + blockIdx.x * blockDim.x;
  if (tid >= cols) return;

  cases[0]=1;cases[1]=1;cases[2]=1;
  controls[0]=1;controls[1]=1;controls[2]=1;

  // read cases: each thread reads a column of snpdata matrix
  for ( m = 0 ; m < cRows ; m++ ) {
    y = snpdata[m * cols + tid];
    if ( y == '0') { cases[0]++; }
    else if ( y == '1') { cases[1]++; }
    else if ( y == '2') { cases[2]++; }
  }

  // read controls: each thread reads a column of snpdata matrix
  for ( n = cRows ; n < cRows + contRows ; n++ ) {
    y = snpdata[n * cols + tid];
    if ( y == '0' ) { controls[0]++; }
    else if ( y == '1') { controls[1]++; }
    else if ( y == '2') { controls[2]++; }
  }

  tot_cases = cases[0]+cases[1]+cases[2];
  tot_controls = controls[0]+controls[1]+controls[2];
  total = tot_cases + tot_controls;

  for( p = 0 ; p < 3; p++) {
    exp[p] = (float)cases[p] + controls[p]; 
    Cexpected[p] = tot_cases * exp[p] / total;
    Conexpected[p] = tot_controls * exp[p] / total;
    numerator1 = (float)cases[p] - Cexpected[p];
    numerator2 = (float)controls[p] - Conexpected[p];
    chisquare += numerator1 * numerator1 / Cexpected[p] +  numerator2 * numerator2 / Conexpected[p];
  }
  results[tid] = chisquare;
}

int main(int argc, char* argv[]) {

  if (argc != 8) {
    printf("Usage: %s <filename> <rows> <cols> <cases> <controls> "
           "<threads> <repeat>\n", argv[0]);
    return 1;
  }

  // check if the data file is readable
  FILE *fp = fopen(argv[1], "r");
  if (fp == NULL) {
    printf("Cannot open the file %s\n", argv[1]);
    return 1;
  }

  unsigned int rows = atoi(argv[2]);
  unsigned int cols = atoi(argv[3]);
  int ncases = atoi(argv[4]);
  int ncontrols = atoi(argv[5]);
  int nthreads = atoi(argv[6]);
  int repeat = atoi(argv[7]);

  printf("Individuals=%d SNPs=%d cases=%d controls=%d nthreads=%d\n",
         rows,cols,ncases,ncontrols,nthreads);

  size_t size = (size_t)rows * (size_t)cols;
  printf("Size of the data = %lu\n",size);

  // allocate SNP host data 
  size_t snpdata_size = sizeof(unsigned char) * size;
  size_t result_size = sizeof(float) * cols;

  unsigned char *dataT = (unsigned char*)malloc(snpdata_size);
  float* h_results = (float*) malloc(result_size);
  float* cpu_results = (float*) malloc(result_size);

  if(dataT == NULL || h_results == NULL || cpu_results == NULL) {
    printf("ERROR: Memory for data not allocated.\n");
    if (dataT) free(dataT);
    if (h_results) free(h_results);
    return 1;
  }

  // transfer the SNP Data from the file to CPU Memory
  unsigned long i=0;
  char *line = NULL; size_t len = 0;
  char *token, *saveptr;
  while (getline(&line, &len, fp) != -1) {
    token = strtok_r(line, " ", &saveptr);
    while (token != NULL) {
      dataT[i] = *token;
      i++;
      token = strtok_r(NULL, " ", &saveptr);
    }
  }
  fclose(fp);
  fflush(stdout);

  // allocate SNP device data
  unsigned char *d_data;
  float *d_results;
  cudaMalloc((void**) &d_data, snpdata_size);
  cudaMalloc((void**) &d_results, result_size);

  cudaMemcpy(d_data, dataT, snpdata_size, cudaMemcpyHostToDevice);

  unsigned jobs = cols;
  int nblocks = (jobs + nthreads - 1)/nthreads;

  cudaDeviceSynchronize();
MY_START_CLOCK(chi2-cuda chi2.cu,0);

  for (int i = 0; i < repeat; i++) {
    kernel <<< dim3(nblocks), dim3(nthreads) >>> (rows,cols,ncases,ncontrols,d_data,d_results);
  }

  cudaDeviceSynchronize();
  auto end = std::chrono::high_resolution_clock::now();
MY_STOP_CLOCK(chi2-cuda chi2.cu,0);
  printf("Average kernel execution time = %f (s)\n", time * 1e-9f / repeat);

  cudaMemcpy(h_results, d_results, result_size, cudaMemcpyDeviceToHost);

  cudaFree(d_data);
  cudaFree(d_results);

MY_START_CLOCK(chi2-cuda chi2.cu,1);

  cpu_kernel(rows,cols,ncases,ncontrols,dataT,cpu_results);

  end = std::chrono::high_resolution_clock::now();
MY_STOP_CLOCK(chi2-cuda chi2.cu,1);
  printf("Host execution time = %f (s)\n", time * 1e-9f);

  // verify
  int error = 0;
  for(unsigned int k = 0; k < jobs; k++) {
    if (fabs(cpu_results[k] - h_results[k]) > 1e-4) error++;
  }
  printf("%s\n", error ? "FAIL" : "PASS");

  free(dataT);
  free(h_results);
  free(cpu_results);

  return 0;
}
