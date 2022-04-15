include ../../common/make.config

a.out: matrixMul.cpp ./libcpucuda.a
	$(POLYGEIST_LLVM_DIR)/bin/clang++ -I$(POLYGEIST_LLVM_DIR)/projects/openmp/runtime/src/ -O2 -fopenmp matrixMul.cpp -I./cpucuda/include ./libcpucuda.a 

clean:
	rm a.out

