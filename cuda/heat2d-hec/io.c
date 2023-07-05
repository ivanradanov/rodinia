#include <stdio.h>
#include "defs.h"

void
read_from_file(float *arr, char fname[]) {
  FILE *fp = fopen(fname, "r");
  fread(arr, 4, Lx*Ly, fp);
  fclose(fp);
  return;
}

void
write_to_file(char fname[], float *arr) {
  FILE *fp = fopen(fname, "w");
  fwrite(arr, 4, Lx*Ly, fp);
  fclose(fp);
  return;
}
