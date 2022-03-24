include ../../common/make.config

LOCAL_CC = $(CC)
CC := $(NVCC)

all : nn hurricane_gen

clean :
	rm -rf *.o nn hurricane_gen

#nn : nn_cuda.cu
#	$(CC) -cuda nn_cuda.cu
#	$(CC) -o nn nn_cuda.cu

SRC = nn_cuda.cu
OBJ = nn_cuda.o
EXE = nn

$(EXE): $(OBJ)
	$(SYSTEM_LINKER) $(OBJ) -o $(EXE) $(SYSTEM_LINKER_FLAGS)

$(OBJ): $(SRC)
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@ $(POLYGEIST_LLVM_ABI)

clang: $(SRC)
	clang++ nn_cuda.cu -o nn -I../util --cuda-gpu-arch=sm_20 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

hurricane_gen : hurricane_gen.c
	$(LOCAL_CC) -o $@ $< -lm $(CC_FLAGS)

#data :
#	mkdir data
#	./gen_dataset.sh
