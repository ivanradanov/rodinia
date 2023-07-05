// Standard libs
#include <string>
#include <cstdio>

// GLM for maths
// #define GLM_FORCE_PURE GLM_FORCE_PURE (not needed anymore with recent GLM versions)
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

// Trimesh for model importing
#include "TriMesh.h"

// Util
#include "util.h"
#include "util_io.h"
#include "timer.h"

#ifndef USE_GPU
  #include "cpu_voxelizer.h" // CPU voxelizer
#endif

// Forward declaration of functions
void voxelize(const voxinfo& v, float* triangle_data, unsigned int* vtable, bool morton_code);
void voxelize_solid(const voxinfo& v, float* triangle_data, unsigned int* vtable, bool morton_code);

// Output formats
enum class OutputFormat { output_binvox = 0, output_morton = 1, output_obj_points = 2, output_obj_cubes = 3};
const char *OutputFormats[] = {"binvox file", "morton encoded blob", "obj file (pointcloud)", "obj file (cubes)"};

// Default options
std::string filename = "";
std::string filename_base = "";
OutputFormat outputformat = OutputFormat::output_binvox;
unsigned int gridsize = 256;
bool solidVoxelization = false;

void printHeader(){
  printf("CPU/GPU Voxelizer\n");
}

void printExample() {
  printf("Example: voxelizer -f bunny.ply -s 512\n");
}

void printHelp(){
  printf("\n## HELP  \n");
  printf("Program options:\n\n");
  printf(" -f <path to model file: .ply, .obj, .3ds> (required)\n");
  printf(" -s <voxelization grid size, power of 2: 8 -> 512, 1024, ... (default: 256)>\n");
  printf(" -o <output format: binvox, obj, obj_points or morton (default: binvox)>\n");
  printf(" -solid : Force solid voxelization (experimental, needs watertight model)\n\n");
  printExample();
  printf("\n");
}

// Parse the program parameters and set them as global variables
void parseProgramParameters(int argc, char* argv[]){
  if(argc<2){ // not enough arguments
    printf("Not enough program parameters.\n\n");
    printHelp();
    exit(0);
  } 
  bool filegiven = false;
  for (int i = 1; i < argc; i++) {
    if (std::string(argv[i]) == "-f") {
      filename = argv[i + 1];
      filename_base = filename.substr(0, filename.find_last_of("."));
      filegiven = true;
      if (!file_exists(filename)) {
        printf("[Err] File does not exist / cannot access: %s \n", filename.c_str());
        exit(1);
      }
      i++;
    }
    else if (std::string(argv[i]) == "-s") {
      gridsize = atoi(argv[i + 1]);
      i++;
    } else if (std::string(argv[i]) == "-h") {
      printHelp();
      exit(0);
    } else if (std::string(argv[i]) == "-o") {
      std::string output = (argv[i + 1]);
      transform(output.begin(), output.end(), output.begin(), ::tolower); // to lowercase
      if (output == "binvox"){outputformat = OutputFormat::output_binvox;}
      else if (output == "morton"){outputformat = OutputFormat::output_morton;}
      else if (output == "obj"){outputformat = OutputFormat::output_obj_cubes;}
      else if (output == "obj_points") { outputformat = OutputFormat::output_obj_points; }
      else {
        printf("[Err] Unrecognized output format: %s, valid options are binvox (default), morton, obj or obj_points \n", output.c_str());
        exit(1);
      }
    }
    else if (std::string(argv[i])=="-solid"){
      solidVoxelization = true;
    }
  }
  if (!filegiven) {
    printf("[Err] You didn't specify a file using -f (path). This is required. Exiting. \n");
    printExample();
    exit(1);
  }
  printf("[Info] Filename: %s\n", filename.c_str());
  printf("[Info] Grid size: %i\n", gridsize);
  printf("[Info] Output format: %s\n", OutputFormats[int(outputformat)]);
#ifdef USE_GPU
  printf("[Info] Using GPU-based voxelization\n");
#else
  printf("[Info] Using CPU-based voxelization\n");
#endif
  printf("[Info] Using Solid Voxelization: %s (default: No)\n", solidVoxelization ? "Yes" : "No");
}

// Copy host data to a managed memory and return a pointer to the memory
float* meshToGPU_managed(const trimesh::TriMesh *mesh) {
  Timer t; t.start();
  size_t n_floats = sizeof(float) * 9 * (mesh->faces.size());
  float* device_triangles;
  printf("[Mesh] Allocating %s of CUDA-managed UNIFIED memory for triangle data \n", (readableSize(n_floats)).c_str());
  checkCudaErrors(cudaMallocManaged((void**) &device_triangles, n_floats));
  printf("[Mesh] Copy %zu triangles to CUDA-managed UNIFIED memory \n", (size_t)(mesh->faces.size()));
  for (size_t i = 0; i < mesh->faces.size(); i++) {
    glm::vec3 v0 = trimesh_to_glm<trimesh::point>(mesh->vertices[mesh->faces[i][0]]);
    glm::vec3 v1 = trimesh_to_glm<trimesh::point>(mesh->vertices[mesh->faces[i][1]]);
    glm::vec3 v2 = trimesh_to_glm<trimesh::point>(mesh->vertices[mesh->faces[i][2]]);
    size_t j = i * 9;
    memcpy((device_triangles)+j, glm::value_ptr(v0), sizeof(glm::vec3));
    memcpy((device_triangles)+j+3, glm::value_ptr(v1), sizeof(glm::vec3));
    memcpy((device_triangles)+j+6, glm::value_ptr(v2), sizeof(glm::vec3));
  }
  t.stop();printf("[Perf] Mesh transfer time to GPU: %.1f ms \n", t.elapsed_time_milliseconds);
  return device_triangles;
}



int main(int argc, char* argv[]) {
  Timer t; t.start();
  printHeader();
  printf("\n## PROGRAM PARAMETERS \n");
  parseProgramParameters(argc, argv);
  fflush(stdout);
  trimesh::TriMesh::set_verbose(false);

  // SECTION: Read the mesh from disk using the TriMesh library
  printf("\n## READ MESH \n");
#ifdef DEBUG
  trimesh::TriMesh::set_verbose(true);
#endif
  printf("[I/O] Reading mesh from %s \n", filename.c_str());
  trimesh::TriMesh* themesh = trimesh::TriMesh::read(filename.c_str());
  themesh->need_faces(); // Trimesh: Unpack (possible) triangle strips so we have faces for sure
  printf("[Mesh] Number of triangles: %zu \n", themesh->faces.size());
  printf("[Mesh] Number of vertices: %zu \n", themesh->vertices.size());
  printf("[Mesh] Computing bbox \n");
  themesh->need_bbox(); // Trimesh: Compute the bounding box (in model coordinates)

  // SECTION: Compute some information needed for voxelization (bounding box, unit vector, ...)
  printf("\n## VOXELISATION SETUP \n");
  // Initialize our own AABox
  AABox<glm::vec3> bbox_mesh(trimesh_to_glm(themesh->bbox.min), trimesh_to_glm(themesh->bbox.max));
  // Transform that AABox to a cubical box (by padding directions if needed)
  // Create voxinfo struct, which handles all the rest
  voxinfo voxelization_info(createMeshBBCube<glm::vec3>(bbox_mesh), glm::uvec3(gridsize, gridsize, gridsize), themesh->faces.size());
  voxelization_info.print();

  // Compute space needed to hold voxel table (1 voxel / bit)
  size_t vtable_size = static_cast<size_t>(ceil(static_cast<size_t>(voxelization_info.gridsize.x) * 
                       static_cast<size_t>(voxelization_info.gridsize.y) * 
                       static_cast<size_t>(voxelization_info.gridsize.z)) / 8.0f);
  unsigned int* vtable; // Both voxelization paths (GPU and CPU) need this

#ifdef USE_GPU

  printf("\n## GPU VOXELISATION \n");

  // Adopt the unified memory model
  float* device_triangles = meshToGPU_managed(themesh);

  printf("[Voxel Grid] Allocating %s of CUDA-managed UNIFIED memory for Voxel Grid\n", readableSize(vtable_size).c_str());
  checkCudaErrors(cudaMallocManaged((void**)&vtable, vtable_size));

  if (solidVoxelization)
    voxelize_solid(voxelization_info, device_triangles, vtable, (outputformat == OutputFormat::output_morton));
  else
    voxelize(voxelization_info, device_triangles, vtable, (outputformat == OutputFormat::output_morton));

#else

  printf("\n## CPU VOXELISATION \n");
  // allocate zero-filled array
  vtable = (unsigned int*) calloc(1, vtable_size);
  if (!solidVoxelization)
    cpu_voxelizer::cpu_voxelize_mesh(voxelization_info, themesh, vtable, (outputformat == OutputFormat::output_morton));
  else
    cpu_voxelizer::cpu_voxelize_mesh_solid(voxelization_info, themesh, vtable, (outputformat == OutputFormat::output_morton));

#endif

  #ifdef DEBUG
  // print vtable
  for (int i = 0; i < vtable_size; i++) {
    char* vtable_p = (char*)vtable;
    printf("%d %d\n", i, (int) vtable_p[i]);
  }
  #endif

  printf("\n## FILE OUTPUT \n");
  if (outputformat == OutputFormat::output_morton){
    write_binary(vtable, vtable_size, filename);
  } else if (outputformat == OutputFormat::output_binvox){
    write_binvox(vtable, voxelization_info, filename);
  }
  else if (outputformat == OutputFormat::output_obj_points) {
    write_obj_pointcloud(vtable, voxelization_info, filename);
  }
  else if (outputformat == OutputFormat::output_obj_cubes) {
    write_obj_cubes(vtable, voxelization_info, filename);
  }

#ifdef USE_GPU
  cudaFree(vtable);
  cudaFree(device_triangles);
#else
  free(vtable);
#endif

  printf("\n## STATS \n");
  t.stop(); printf("[Perf] Total runtime: %.1f ms \n", t.elapsed_time_milliseconds);
}
