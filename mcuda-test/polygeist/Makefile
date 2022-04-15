include ../../common/make.config

all: a.inner-serialize.out a.out

a.inner-serialize.out: matrixMul.cu
	$(POLYGEIST_DIR)/bin/mlir-clang -O2 --cuda-lower matrixMul.cu -resource-dir=$(POLYGEIST_LLVM_DIR)/lib/clang/15.0.0/ --cuda-path=$(CUDA_PATH) -I$(CUDA_SAMPLES_PATH)/common/inc/ --cpuify=distribute.mincut --raise-scf-to-affine -scal-rep=0 -o a.inner-serialize.out -L$(CUDA_PATH)/lib64 -lcudart -lcuda -fopenmp --inner-serialize=1
a.out: matrixMul.cu
	$(POLYGEIST_DIR)/bin/mlir-clang -O2 --cuda-lower matrixMul.cu -resource-dir=$(POLYGEIST_LLVM_DIR)/lib/clang/15.0.0/ --cuda-path=$(CUDA_PATH) -I$(CUDA_SAMPLES_PATH)/common/inc/ --cpuify=distribute.mincut --raise-scf-to-affine -scal-rep=0 -o a.out -L$(CUDA_PATH)/lib64 -lcudart -lcuda -fopenmp

clean:
	rm a.out a.inner-serialize.out

