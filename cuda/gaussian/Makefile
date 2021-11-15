include ../../common/make.config

# CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

SRC = gaussian.cu
EXE = gaussian

release: $(EXE)

$(EXE): $(SRC)
	$(NVCC) $(KERNEL_DIM) $(SRC) -o $(EXE) $(NVCC_FLAGS)

clang: $(SRC)
	clang++ $(SRC) -o $(EXE) -I../util --cuda-gpu-arch=sm_20 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

clean:
	rm gaussian
