include ../../common/make.config

all: a.inner-serialize.out a.out

a.inner-serialize.out: matrixMul.cu
	$(POLYGEIST_DIR)/bin/mlir-clang --function=* -O2 --cuda-lower matrixMul.cu -resource-dir=$(POLYGEIST_LLVM_DIR)/lib/clang/15.0.0/ --cuda-path=$(CUDA_PATH) -I$(CUDA_SAMPLES_PATH)/common/inc/ --cpuify=distribute.mincut --raise-scf-to-affine -scal-rep=0 -o matrixMul.o -fopenmp --inner-serialize=1 -c
	$(POLYGEIST_LLVM_DIR)/bin/clang -O2 matrixMul.o -resource-dir=$(POLYGEIST_LLVM_DIR)/lib/clang/15.0.0/ --cuda-path=$(CUDA_PATH) -o a.inner-serialize.out -fopenmp
a.out: matrixMul.cu
	$(POLYGEIST_DIR)/bin/mlir-clang --function=* -O2 --cuda-lower matrixMul.cu -resource-dir=$(POLYGEIST_LLVM_DIR)/lib/clang/15.0.0/ --cuda-path=$(CUDA_PATH) -I$(CUDA_SAMPLES_PATH)/common/inc/ --cpuify=distribute.mincut --raise-scf-to-affine -scal-rep=0 -o matrixMul.o -fopenmp -c
	$(POLYGEIST_LLVM_DIR)/bin/clang -O2 matrixMul.o -resource-dir=$(POLYGEIST_LLVM_DIR)/lib/clang/15.0.0/ --cuda-path=$(CUDA_PATH) -o a.out -fopenmp

clean:
	rm a.out a.inner-serialize.out

