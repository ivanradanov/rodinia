#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <sycl/sycl.hpp>

using namespace sycl;

#include "util.h"
#include "image.h"
#include "kernel.h"

int main(int argc, char* argv[]) 
{
  if (argc != 4) {
    printf("Usage: %s <width> <height> <repeat>\n", argv[0]);
    return 1;
  }

  const int width = atoi(argv[1]);
  const int height = atoi(argv[2]);
  const int repeat = atoi(argv[3]);

  const int input_image_pitch = width;
  const int output_image_pitch = width * 4;
  const int numPix = width * height;
  const int input_image_size = numPix * sizeof(uchar);
  const int output_image_size = numPix * 4 * sizeof(uchar);

  uchar *input = (uchar*) malloc (input_image_size);
  uchar *output = (uchar*) malloc (output_image_size);

  // RGGB, GRBG, GBRG, BGGR
  const int bayer_pattern = RGGB;

  // input image with random values
  srand(123);
  for (int i = 0; i < numPix; i++) {
    input[i] = rand() % 256;
  }

#ifdef USE_GPU
  queue q(gpu_selector_v, property::queue::in_order());
#else
  queue q(cpu_selector_v, property::queue::in_order());
#endif

  uchar *d_input = malloc_device<uchar>(numPix, q);
  q.memcpy(d_input, input, input_image_size);

  uchar *d_output = malloc_device<uchar>(numPix * 4, q);

  range<2> gws ((height + tile_rows - 1) / tile_rows * tile_rows, 
                      (width + tile_cols - 1) / tile_cols * tile_cols);
  range<2> lws (tile_rows, tile_cols);

  q.wait();
  auto start = std::chrono::steady_clock::now();

  //this version takes a tile (z=1) and each tile job does 4 line median sorts
  for (int i = 0; i < repeat; i++) {
    q.memset(d_output, 0, output_image_size);

    q.submit([&] (handler &cgh) {
      local_accessor<LDSPixelT, 1> apron(range<1>(apron_rows * apron_cols), cgh);
      cgh.parallel_for<class debayer>(
        nd_range<2>(gws, lws), [=] (nd_item<2> item) {
        malvar_he_cutler_demosaic (
          item, apron.get_pointer(), height, width, 
          d_input, input_image_pitch,
          d_output, output_image_pitch,
          bayer_pattern );
      });
    });
  }

  q.wait();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average kernel execution time %f (s)\n", time * 1e-9f / repeat);

  q.memcpy(output, d_output, output_image_size);

  long sum = 0;
  for (int i = 0; i < numPix; i++) sum += output[i];
  printf("Checksum: %ld\n", sum);

  free(input);
  free(output);
  free(d_input, q);
  free(d_output, q);
  return 0;
}
