include ../../common/openmp.make.config

CUDA_SDK_PATH = /af10/sc5nf/NVIDIA_CUDA_SDK

OMP_NUM_THREADS = 8
MIC_OMP_NUM_THREADS = 216

all: euler3d_cpu #euler3d_cpu_double pre_euler3d_cpu pre_euler3d_cpu_double euler3d_cpu_offload

euler3d_cpu: euler3d_cpu.o
	$(LINKER) euler3d_cpu.o -o euler3d_cpu $(LINKER_FLAGS) -lstdc++

euler3d_cpu.o: euler3d_cpu.cpp
	$(CXX) -Dblock_length=$(OMP_NUM_THREADS) -c euler3d_cpu.cpp -o euler3d_cpu.o $(CXX_FLAGS)

euler3d_cpu_offload:
	icc -g -DOMP_OFFLOAD -Dblock_length=$(MIC_OMP_NUM_THREADS) -fopenmp -offload-option,mic,compiler,"-no-opt-prefetch" euler3d_cpu.cpp -o euler3d_cpu_offload

euler3d_cpu_double: euler3d_cpu_double.cpp
	g++ -Dblock_length=$(OMP_NUM_THREADS) -fopenmp euler3d_cpu_double.cpp -o euler3d_cpu_double

#pre_euler3d: pre_euler3d.cu
#	nvcc -Xptxas -v --gpu-architecture=compute_13 --gpu-code=compute_13 pre_euler3d.cu -o pre_euler3d -I$(CUDA_SDK_PATH)/common/inc  -L$(CUDA_SDK_PATH)/lib  -lcutil

#pre_euler3d_double: pre_euler3d_double.cu
#	nvcc -Xptxas -v --gpu-architecture=compute_13 --gpu-code=compute_13 pre_euler3d_double.cu -o pre_euler3d_double -I$(CUDA_SDK_PATH)/common/inc  -L$(CUDA_SDK_PATH)/lib  -lcutil

pre_euler3d_cpu: pre_euler3d_cpu.cpp
	g++ -Dblock_length=$(OMP_NUM_THREADS) -fopenmp pre_euler3d_cpu.cpp -o pre_euler3d_cpu

pre_euler3d_cpu_double: pre_euler3d_cpu_double.cpp
	g++ -Dblock_length=$(OMP_NUM_THREADS) -fopenmp pre_euler3d_cpu_double.cpp -o pre_euler3d_cpu_double


clean:
#	rm -f euler3d
	rm -f euler3d_cpu
	rm -f euler3d_cpu_offload
#	rm -f euler3d_double
	rm -f euler3d_cpu_double

#	rm -f pre_euler3d
	rm -f pre_euler3d_cpu
#	rm -f pre_euler3d_double
	rm -f pre_euler3d_cpu_double
