#pragma once

#include <stdint.h>
#include <string>
#include <fstream>
#include <cuda.h>

#include "TriMesh.h"

// To make GLM compatible with CUDA, GLM_FORCE_CUDA requires to be define before any inclusion of <glm/glm.hpp>
#ifdef USE_GPU
#define GLM_FORCE_CUDA
#endif

// #define GLM_FORCE_PURE (not needed anymore with recent GLM versions)
#include <glm/glm.hpp>

// Converting builtin TriMesh vectors to GLM vectors
// as the builtin Vector math of TriMesh not CUDA-compatible
template<typename trimeshtype>
inline glm::vec3 trimesh_to_glm(trimeshtype a) {
  return glm::vec3(a[0], a[1], a[2]);
}

// Converting GLM vectors to builtin TriMesh vectors
template<typename trimeshtype>
inline trimeshtype glm_to_trimesh(glm::vec3 a) {
  return trimeshtype(a[0], a[1], a[2]);
}

// Check if a voxel in the voxel table is set
__host__  __device__ 
inline bool checkVoxel(size_t x, size_t y, size_t z, const glm::uvec3 gridsize, const unsigned int* vtable) {
  size_t location = x + (y*gridsize.y) + (z*gridsize.y*gridsize.z);
  size_t int_location = location / size_t(32);
  unsigned int bit_pos = size_t(31) - (location % size_t(32)); // we count bit positions RtL, but array indices LtR
  if ((vtable[int_location]) & (1 << bit_pos)){
    return true;
  }
  return false;
}

// An Axis Aligned box
template <typename T>
struct AABox {
  T min;
  T max;
  __host__ __device__ AABox() : min(T()), max(T()) {}
  __host__ __device__ AABox(T min, T max) : min(min), max(max) {}
};

// Voxelisation info (global parameters for the voxelization process)
struct voxinfo {
  AABox<glm::vec3> bbox;
  glm::uvec3 gridsize;
  size_t n_triangles;
  glm::vec3 unit;

  voxinfo(AABox<glm::vec3> bbox, glm::uvec3 gridsize, size_t n_triangles)
    : gridsize(gridsize), bbox(bbox), n_triangles(n_triangles) {
      unit.x = (bbox.max.x - bbox.min.x) / float(gridsize.x);
      unit.y = (bbox.max.y - bbox.min.y) / float(gridsize.y);
      unit.z = (bbox.max.z - bbox.min.z) / float(gridsize.z);
    }

  void print() {
    printf("[Voxelization] Bounding Box: (%f,%f,%f)-(%f,%f,%f) \n", 
            bbox.min.x, bbox.min.y, bbox.min.z, bbox.max.x, bbox.max.y, bbox.max.z);
    printf("[Voxelization] Grid size: %i %i %i \n", gridsize.x, gridsize.y, gridsize.z);
    printf("[Voxelization] Triangles: %zu \n", n_triangles);
    printf("[Voxelization] Unit length: x: %f y: %f z: %f\n", unit.x, unit.y, unit.z);
  }
};

// Create mesh BBOX _cube_, using the maximum length between bbox min and bbox max
// We want to end up with a cube that is this max length.
// So we pad the directions in which this length is not reached
//
// Example: (1,2,3) to (4,4,4) becomes:
// Max distance is 3
//
// (1, 1.5, 2) to (4,4.5,5), which is a cube with side 3
//
template <typename T>
inline AABox<T> createMeshBBCube(AABox<T> box) {
  AABox<T> answer(box.min, box.max); // initialize answer
  glm::vec3 lengths = box.max - box.min; // check length of given bbox in every direction
  float max_length = glm::max(lengths.x, glm::max(lengths.y, lengths.z)); // find max length
  for (unsigned int i = 0; i < 3; i++) { // for every direction (X,Y,Z)
    if (max_length == lengths[i]){
      continue;
    } else {
      float delta = max_length - lengths[i]; // compute difference between largest length and current (X,Y or Z) length
      answer.min[i] = box.min[i] - (delta / 2.0f); // pad with half the difference before current min
      answer.max[i] = box.max[i] + (delta / 2.0f); // pad with half the difference behind current max
    }
  }

  // Next snippet adresses the problem reported here: https://github.com/Forceflow/cuda_voxelizer/issues/7
  // Suspected cause: If a triangle is axis-aligned and lies perfectly on a voxel edge, it sometimes gets counted / not counted
  // Probably due to a numerical instability (division by zero?)
  // Ugly fix: we pad the bounding box on all sides by 1/10001th of its total length, bringing all triangles ever so slightly off-grid
  glm::vec3 epsilon = (answer.max - answer.min) / 10001.0f;
  answer.min -= epsilon;
  answer.max += epsilon;
  return answer;
}

// Helper method to print bits
void inline printBits(size_t const size, void const * const ptr) {
  unsigned char *b = (unsigned char*)ptr;
  unsigned char byte;
  int i, j;
  for (i = static_cast<int>(size) - 1; i >= 0; i--) {
    for (j = 7; j >= 0; j--) {
      byte = b[i] & (1 << j);
      byte >>= j;
      if (byte) {
        printf("X");
      }
      else {
        printf(".");
      }
      //printf("%u", byte);
    }
  }
  puts("");
}

// readablesizestrings
inline std::string readableSize(size_t bytes) {
  double bytes_d = static_cast<double>(bytes);
  std::string r;
  if (bytes_d <= 0) r = "0 Bytes";
  else if (bytes_d >= 1099511627776.0) r = std::to_string(static_cast<size_t>(bytes_d / 1099511627776.0)) + " TB";
  else if (bytes_d >= 1073741824.0) r = std::to_string(static_cast<size_t>(bytes_d / 1073741824.0)) + " GB";
  else if (bytes_d >= 1048576.0) r = std::to_string(static_cast<size_t>(bytes_d / 1048576.0)) + " MB";
  else if (bytes_d >= 1024.0) r = std::to_string(static_cast<size_t>(bytes_d / 1024.0)) + " KB";
  else r = std::to_string(static_cast<size_t>(bytes_d)) + " bytes";
  return r;
};

// check if file exists
inline bool file_exists(const std::string& name) {
  std::ifstream f(name.c_str());
  return f.good();
}

// check CUDA errors
template <typename T>
void check(T result, char const* const func, const char* const file,
    int const line) {
    if (result) {
        fprintf(stderr, "CUDA error at %s:%d code=%d(%s) \"%s\" \n", file, line,
            static_cast<unsigned int>(result), cudaGetErrorName(result), func);
        exit(EXIT_FAILURE);
    }
}

#define checkCudaErrors(val) check((val), #val, __FILE__, __LINE__)
