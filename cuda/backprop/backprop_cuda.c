

// includes, system
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdio.h>

float *alloc_1d_dbl(int n)
{
  float *newv;

  newv = (float *) malloc ((unsigned) (n * sizeof (float)));
  return (newv);
}
void bpnn_randomize_row(float* w, int m)
{
	int i;
	for (i = 0; i <= m; i++) {
	 w[i] = 0.1;
    }
}

typedef struct {
  int input_n;                  /* number of input units */

  float *target;               /* storage for target vector */
} BPNN;

////////////////////////////////////////////////////////////////////////////////
// Program main
////////////////////////////////////////////////////////////////////////////////
int
main( int argc, char** argv) 
{
  
  int n_out = 1;

  BPNN net;

  net.target = alloc_1d_dbl(n_out + 1);

  bpnn_randomize_row(net.target, n_out);
  
  printf("Starting training kernel\n");
  return 0;
}
