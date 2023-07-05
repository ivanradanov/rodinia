// Copyright (c) 2016 Nicolas Weber and Sandra C. Amend / GCC / TU-Darmstadt.
// All rights reserved. 
// Use of this source code is governed by the BSD 3-Clause license that can be
// found in the LICENSE file.

#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstdint>
#include <cuda.h>

//-------------------------------------------------------------------
// SHARED
//-------------------------------------------------------------------
struct Params {
  uint32_t oWidth;
  uint32_t oHeight;
  uint32_t iWidth;
  uint32_t iHeight;
     float pWidth;
     float pHeight;
     float lambda;
  uint32_t repeat;
};

double LCG_random_double(uint64_t * seed)
{
  const uint64_t m = 9223372036854775808ULL; // 2^63
  const uint64_t a = 2806196910506780709ULL;
  const uint64_t c = 1ULL;
  *seed = (a * (*seed) + c) % m;
  return (double) (*seed) / (double) m;
}

void run(const Params& i, const void* hInput, void* hOutput);

int main(int argc, char** argv) {
  // generate a random image for testing
  if(argc != 5) {
    printf("Usage: %s <width> <height> <lambda> <repeat>\n", argv[0]);
    exit(1);
  }

  // read params
  Params p;
  p.oWidth = (uint32_t)std::atoi(argv[1]);
  p.oHeight = (uint32_t)std::atoi(argv[2]);
  p.lambda = (float)std::atof(argv[3]);
  p.repeat = (uint32_t)std::atoi(argv[4]);

  // check params
  if(p.oWidth == 0 && p.oHeight == 0) {
    printf("only one dimension (width or height) can be 0!\n");
    exit(1);
  }

  p.iWidth  = 8192;
  p.iHeight = 8192;

  // calc width/height according to aspect ratio
  if(p.oWidth == 0)
    p.oWidth = (uint32_t)std::round((p.oHeight / (double)p.iHeight) * p.iWidth);

  if(p.oHeight == 0)
    p.oHeight = (uint32_t)std::round((p.oWidth / (double)p.iWidth) * p.iHeight);

  // calc patch size
  p.pWidth  = p.iWidth  / (float)p.oWidth;
  p.pHeight  = p.iHeight / (float)p.oHeight;

  // set random values for an image
  uchar3 *hInput   = (uchar3*) malloc (sizeof(uchar3) * p.iWidth * p.iHeight);
  uchar3 *hOutput  = (uchar3*) malloc (sizeof(uchar3) * p.oWidth * p.oHeight);

  uint64_t seed = 123;
  for (uint32_t i = 0; i < p.iWidth * p.iHeight; i++) {
    hInput[i].x = (unsigned char)(256*LCG_random_double(&seed));
    hInput[i].y = (unsigned char)(256*LCG_random_double(&seed));
    hInput[i].z = (unsigned char)(256*LCG_random_double(&seed));
  }
  
  // run downsampling on a device
  run(p, hInput, hOutput);

  int x = 0, y = 0, z = 0;
  for (uint32_t i = 0; i < p.oWidth * p.oHeight; i++) {
    x += hOutput[i].x;
    y += hOutput[i].y;
    z += hOutput[i].z;
  }
  printf("Checksums %d %d %d\n", x, y, z);

  free(hInput);
  free(hOutput);
  return 0;
}
