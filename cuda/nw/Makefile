include ../../common/make.config

CC := $(NVCC)

#INCLUDE := $(CUDA_DIR)/include
INCLUDE :=

SRC = needle.cu
OBJ = needle.o
EXE = needle

$(EXE): $(OBJ)
	$(LINKER) $(OBJ) -o $(EXE) $(LINKER_FLAGS)

$(OBJ): $(SRC)
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@ -I../util

clang: $(SRC)
	clang++ $(SRC) -o $(EXE) -I../util --cuda-gpu-arch=sm_20 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

enum: $(SRC)
	$(CC) ${KERNEL_DIM} -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(CC) ${KERNEL_DIM} -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(CC) ${KERNEL_DIM} -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo result.txt *.o
