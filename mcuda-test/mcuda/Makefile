include ../../common/make.config

a.out: matrixMul.cpp $(CPUCUDA_BUILD_DIR)/src/libcpucudart.a
	$(POLYGEIST_LLVM_DIR)/bin/clang++ -I$(POLYGEIST_LLVM_DIR)/projects/openmp/runtime/src/ -O2 -fopenmp matrixMul.cpp -I./cpucuda/include $(CPUCUDA_BUILD_DIR)/src/libcpucudart.a

clean:
	rm a.out

