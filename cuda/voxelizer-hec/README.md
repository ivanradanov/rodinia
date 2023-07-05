# cuda_voxelizer v0.4.11
A command-line tool to convert polygon meshes to (annotated) voxel grids.
 * Supported input formats: .ply, .off, .obj, .3DS, .SM and RAY
 * Supported output formats: .binvox, .obj, morton ordered grid
 * Requires a CUDA-compatible video card. Compute Capability 2.0 or higher (Nvidia Fermi or better).
   * Since v0.4.4, the voxelizer reverts to a (slower) CPU voxelization method when no GPU device is found

## Usage
Program options:
 * `-f <path to model file>`: **(required)** A path to a polygon-based 3D model file. 
 * `-s <voxel grid length>`: The length of the cubical voxel grid. Default: 256, resulting in a 256 x 256 x 256 voxelization grid.  The tool will automatically select the tightest cubical bounding box around the model.
 * `-o <output format>`: The output format for voxelized models, default: *binvox*. Output files are saved in the same folder as the input file.
   * `binvox`: A [binvox](http://www.patrickmin.com/binvox/binvox.html) file (default). Can be viewed using [viewvox](http://www.patrickmin.com/viewvox/).
   * `obj`: A mesh containing actual cubes (made up of triangle faces) for each voxel.
   * `obj_points`: A mesh containing a point cloud, with a vertex for each voxel. Can be viewed using any compatible viewer that can just display vertices, like [Blender](https://www.blender.org/) or [Meshlab](https://www.meshlab.net/).
   * `morton`: a binary file containing a Morton-ordered grid. This is a format I personally use for other tools.
 * `-cpu`: Force voxelization on the CPU instead of GPU. For when a CUDA device is not detected/compatible, or for very small models where GPU call overhead is not worth it. This is done multi-threaded, but will be slower for large models / grid sizes.
 * `-solid` : (Experimental) Use solid voxelization instead of voxelizing the mesh faces. Needs a watertight input mesh.

  
## Examples

`cuda_voxelizer -f bunny.ply -s 256` generates a 256 x 256 x 256 binvox-based voxel model which will be stored in `bunny_256.binvox`. 

`cuda_voxelizer -f torus.ply -s 64 -o obj -solid` generates a solid (filled) 64 x 64 x 64 .obj voxel model which will be stored in `torus_64.obj`.

![output_examples](https://raw.githubusercontent.com/Forceflow/cuda_voxelizer/main/img/output_examples.jpg)

## Building
The build process is aimed at 64-bit executables. It might be possible to build for 32-bit as well, but I'm not actively testing/supporting this.
You can build using CMake, or using the provided Visual Studio project. Since November 2019, cuda_voxelizer also builds on [Travis CI](https://travis-ci.org/Forceflow/cuda_voxelizer), so check out the [yaml config file](https://github.com/Forceflow/cuda_voxelizer/blob/main/.travis.yml) for more Linux build support.

### Dependencies
The project has the following build dependencies:
 * [Nvidia Cuda 8.0 Toolkit (or higher)](https://developer.nvidia.com/cuda-toolkit) for CUDA + Thrust libraries (standard included)
 * [Trimesh2](https://github.com/Forceflow/trimesh2) for model importing. Latest version recommended.
 * [GLM](http://glm.g-truc.net/0.9.8/index.html) for vector math. Any recent version will do.
 * [OpenMP](https://www.openmp.org/)

## Details
`cuda_voxelizer` implements an optimized version of the method described in M. Schwarz and HP Seidel's 2010 paper [*Fast Parallel Surface and Solid Voxelization on GPU's*](http://research.michael-schwarz.com/publ/2010/vox/). The morton-encoded table was based on my 2013 HPG paper [*Out-Of-Core construction of Sparse Voxel Octrees*](http://graphics.cs.kuleuven.be/publications/BLD14OCCSVO/)  and the work in [*libmorton*](https://github.com/Forceflow/libmorton).

`cuda_voxelizer` is built with a focus on performance. Usage of the routine as a per-frame voxelization step for real-time applications is viable. The test dataset can be downloaded from https://graphics.stanford.edu/data/3Dscanrep/.

 * GPU voxelization time does not include I/O (from disk or to GPU).
 * CPU voxelization time is heavily dependent on how many cores your CPU has - OpenMP allocates 1 thread per core.

## Notes / See Also
 * The [.binvox file format](https://www.patrickmin.com/binvox/binvox.html) was created by Michael Kazhdan. 
   * [Patrick Min](https://www.patrickmin.com/binvox/) wrote some interesting tools to work with it:
     * [viewvox](https://www.patrickmin.com/viewvox/): Visualization of voxel grids (a copy of this tool is included in cuda_voxelizer releases)
     * [thinvox](https://www.patrickmin.com/thinvox/): Thinning of voxel grids
   * [binvox-rw-py](https://github.com/dimatura/binvox-rw-py) is a Python module to interact with .binvox files
 * Thanks to [conceptclear](https://github.com/conceptclear) for implementing solid voxelization
 * [Zarbuz](https://github.com/zarbuz)'s [FileToVox](https://github.com/Zarbuz/FileToVox) looks interesting as well
 * If you want a good customizable CPU-based voxelizer, I can recommend [VoxSurf](https://github.com/sylefeb/VoxSurf).
 * Another hackable voxel viewer is Sean Barrett's excellent [stb_voxel_render.h](https://github.com/nothings/stb/blob/master/stb_voxel_render.h).
 * Nvidia also has a voxel library called [GVDB](https://developer.nvidia.com/gvdb), that does a lot more than just voxelizing.

## Todo / Possible future work
This is on my list of nice things to add. Don't hesistate to crack one of these yourself and make a PR!

 * Noncubic grid support
 * Memory limits test
 * Output to more popular voxel formats like MagicaVoxel, Minecraft
 * Implement partitioning for larger models
 * Do a pre-pass to categorize triangles
 * Implement capture of normals / color / texture data
 
## Citation
If you use cuda_voxelizer in your published paper or other software, please reference it, for example as follows:
<pre>
@Misc{cudavoxelizer17,
author = "Jeroen Baert",
title = "Cuda Voxelizer: A GPU-accelerated Mesh Voxelizer",
howpublished = "\url{https://github.com/Forceflow/cuda_voxelizer}",
year = "2017"}
</pre>
If you end up using cuda_voxelizer in something cool, drop me an e-mail: **mail (at) jeroen-baert.be**
