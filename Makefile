include common/make.config

RODINIA_BASE_DIR := $(shell pwd)

CUDA_BIN_DIR := $(RODINIA_BASE_DIR)/bin/linux/cuda
OMP_BIN_DIR := $(RODINIA_BASE_DIR)/bin/linux/omp
OPENCL_BIN_DIR := $(RODINIA_BASE_DIR)/bin/linux/opencl

TIMED_CUDA_DIRS := $(shell $(RODINIA_BASE_DIR)/scripts/cuda_apps.sh)
TIMED_CUDA_DIRS := $(addprefix cuda/,$(TIMED_CUDA_DIRS))

HIP_DIRS := $(shell $(RODINIA_BASE_DIR)/scripts/hip_apps.sh)
HIP_DIRS := $(addprefix hip/,$(HIP_DIRS))

TIMED_OPENMP_DIRS := backprop \
       bfs \
       b+tree \
       cfd \
       hotspot \
       hotspot3D \
       lud \
       myocyte \
       nw \
       particlefilter \
       pathfinder \
       streamcluster \
       srad/srad_v1 \
       srad/srad_v2
# not included:
#      heartwall \
#      nn \
#      lavaMD \
#      kmeans \
#      leukocyte \
#      mummergpu \

CUDA_DIRS := backprop bfs cfd gaussian heartwall hotspot kmeans lavaMD leukocyte lud nn	nw srad streamcluster particlefilter pathfinder mummergpu
OMP_DIRS  := backprop bfs cfd		   heartwall hotspot kmeans lavaMD leukocyte lud nn nw srad streamcluster particlefilter pathfinder mummergpu
OCL_DIRS  := backprop bfs cfd gaussian heartwall hotspot kmeans lavaMD leukocyte lud nn	nw srad streamcluster particlefilter pathfinder

#all: CUDA OMP OPENCL
#all: CUDA OMP
all: TIMED_CUDA TIMED_OPENMP

OPENMP: TIMED_OPENMP
CUDA: TIMED_CUDA
omp: TIMED_OPENMP
openmp: TIMED_OPENMP
cuda: TIMED_CUDA

TIMED_OPENMP:
	for dir in $(TIMED_OPENMP_DIRS) ; do cd openmp/$$dir ; make ; cd - ; done

$(TIMED_CUDA_DIRS)::
	$(MAKE) -C $@
$(HIP_DIRS)::
	$(MAKE) -C $@

TIMED_CUDA: $(TIMED_CUDA_DIRS)
hip: $(HIP_DIRS)


# commented out benchmarks that use opengl headers of cuda textures
CUDA:
	cd cuda/backprop;		make;	cp backprop $(CUDA_BIN_DIR)
	cd cuda/bfs;			make;	cp bfs.out $(CUDA_BIN_DIR)
	cd cuda/cfd;			make;	cp euler3d euler3d_double pre_euler3d pre_euler3d_double $(CUDA_BIN_DIR)
	cd cuda/gaussian;		make;	cp gaussian $(CUDA_BIN_DIR)
	cd cuda/heartwall;		make;	cp heartwall $(CUDA_BIN_DIR)
	cd cuda/hotspot;		make;	cp hotspot $(CUDA_BIN_DIR)
	cd cuda/hotspot3D;		make;	cp 3D $(CUDA_BIN_DIR)
	#cd cuda/kmeans;			make;	cp kmeans $(CUDA_BIN_DIR)
	cd cuda/lavaMD;			make;	cp lavaMD $(CUDA_BIN_DIR)
	#cd cuda/leukocyte;		make;	cp CUDA/leukocyte $(CUDA_BIN_DIR)
	cd cuda/lud;			make;	cp cuda/lud_cuda $(CUDA_BIN_DIR)
	cd cuda/nn;				make;	cp nn $(CUDA_BIN_DIR)
	cd cuda/nw;			make;	cp needle $(CUDA_BIN_DIR)
	cd cuda/srad/srad_v1;		make;	cp srad $(CUDA_BIN_DIR)/srad_v1
	cd cuda/srad/srad_v2;		make;   cp srad $(CUDA_BIN_DIR)/srad_v2
	cd cuda/streamcluster;		make;	cp sc_gpu $(CUDA_BIN_DIR)
	cd cuda/particlefilter;		make;	cp particlefilter_naive particlefilter_float $(CUDA_BIN_DIR)
	cd cuda/pathfinder;		make;	cp pathfinder $(CUDA_BIN_DIR)
	#cd cuda/mummergpu;		make;	cp bin/mummergpu $(CUDA_BIN_DIR)
	#cd cuda/hybridsort;              make;   cp hybridsort $(CUDA_BIN_DIR)
	cd cuda/dwt2d;                   make;   cp dwt2d  $(CUDA_BIN_DIR)

OMP:
	cd openmp/backprop;				make;	cp backprop $(OMP_BIN_DIR)
	cd openmp/bfs;					make;	cp bfs $(OMP_BIN_DIR)
	cd openmp/cfd;					make;	cp euler3d_cpu euler3d_cpu_double pre_euler3d_cpu pre_euler3d_cpu_double $(OMP_BIN_DIR)
	cd openmp/heartwall;				make;	cp heartwall $(OMP_BIN_DIR)
	cd openmp/hotspot;				make;	cp hotspot $(OMP_BIN_DIR)
	cd openmp/kmeans/kmeans_openmp;			make;	cp kmeans $(OMP_BIN_DIR)
	cd openmp/lavaMD;				make;	cp lavaMD $(OMP_BIN_DIR)
	cd openmp/leukocyte;				make;	cp OpenMP/leukocyte $(OMP_BIN_DIR)
	cd openmp/lud;					make;	cp omp/lud_omp $(OMP_BIN_DIR)
	cd openmp/nn;					make;	cp nn $(OMP_BIN_DIR)
	cd openmp/nw;					make;	cp needle $(OMP_BIN_DIR)
	cd openmp/srad/srad_v1;				make;	cp srad $(OMP_BIN_DIR)/srad_v1
	cd openmp/srad/srad_v2;				make;   cp srad $(OMP_BIN_DIR)/srad_v2
	cd openmp/streamcluster;			make;	cp sc_omp $(OMP_BIN_DIR)
	cd openmp/particlefilter;			make;	cp particle_filter $(OMP_BIN_DIR)
	cd openmp/pathfinder;				make;	cp pathfinder $(OMP_BIN_DIR)
	cd openmp/mummergpu;				make;	cp bin/mummergpu $(OMP_BIN_DIR)

OPENCL:
	cd opencl/backprop;			make;	cp backprop     $(OPENCL_BIN_DIR)
	cd opencl/bfs;				make;	cp bfs		$(OPENCL_BIN_DIR)
	cd opencl/b+tree;			make;	cp b+tree	$(OPENCL_BIN_DIR)
	cd opencl/cfd;				make;	cp euler3d	$(OPENCL_BIN_DIR)
	cd opencl/hotspot;			make;	cp hotspot	$(OPENCL_BIN_DIR)
	cd opencl/kmeans;			make;	cp kmeans	$(OPENCL_BIN_DIR)
	cd opencl/lavaMD;			make;	cp lavaMD	$(OPENCL_BIN_DIR)
	cd opencl/leukocyte;			make;	cp OpenCL/leukocyte	$(OPENCL_BIN_DIR)
	cd opencl/lud/ocl;			make;	cp lud		$(OPENCL_BIN_DIR)
	cd opencl/myocyte;			make;	cp myocyte	$(OPENCL_BIN_DIR)
	cd opencl/nw;				make;	cp nw		$(OPENCL_BIN_DIR)
	cd opencl/srad;				make;	cp srad		$(OPENCL_BIN_DIR)
	cd opencl/streamcluster;		make;	cp streamcluster	$(OPENCL_BIN_DIR)
	cd opencl/pathfinder;			make;	cp pathfinder	$(OPENCL_BIN_DIR)
	cd opencl/particlefilter;		make;	cp OCL_particlefilter_naive OCL_particlefilter_single OCL_particlefilter_double $(OPENCL_BIN_DIR)
	cd opencl/gaussian;			make;	cp gaussian	$(OPENCL_BIN_DIR)
	cd opencl/nn;				make;	cp nn	$(OPENCL_BIN_DIR)
	cd opencl/heartwall;		        make;	cp heartwall	$(OPENCL_BIN_DIR)
	cd opencl/hybridsort;              	make;   cp hybridsort $(CUDA_BIN_DIR)
	cd opencl/dwt2d;                   	make;   cp dwt2d  $(CUDA_BIN_DIR)

clean: TIMED_CUDA_clean TIMED_OPENMP_clean hip_clean

CUDA_clean: TIMED_CUDA_clean
OPENMP_clean: TIMED_OPENMP_clean
cuda_clean: TIMED_CUDA_clean
omp_clean: TIMED_OPENMP_clean
openmp_clean: TIMED_OPENMP_clean

TIMED_OPENMP_clean:
	for dir in $(TIMED_OPENMP_DIRS) ; do cd openmp/$$dir ; make clean ; cd - ; done

TIMED_CUDA_clean: #$(TIMED_CUDA_DIRS_CLEAN)
	for dir in $(TIMED_CUDA_DIRS) ; do cd $$dir ; make clean ; cd - ; done

hip_clean: #$(TIMED_CUDA_DIRS_CLEAN)
	for dir in $(HIP_DIRS) ; do cd $$dir ; make clean ; cd - ; done

OCL_clean:
	cd $(OPENCL_BIN_DIR); rm -f *
	for dir in $(OCL_DIRS) ; do cd opencl/$$dir ; make clean ; cd ../.. ; done
