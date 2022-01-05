include ../../common/make.config

LOCAL_CC = $(CC)
CC := $(NVCC)

all : nn hurricane_gen

clean :
	rm -rf *.o nn hurricane_gen

#nn : nn_cuda.cu
#	$(CC) -cuda nn_cuda.cu
#	$(CC) -o nn nn_cuda.cu

nn : nn_cuda.cu
	$(CC) -o nn nn_cuda.cu $(NVCC_FLAGS) $(LINKER_FLAGS)

clang: $(SRC)
	clang++ nn_cuda.cu -o nn -I../util --cuda-gpu-arch=sm_20 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

hurricane_gen : hurricane_gen.c
	$(LOCAL_CC) -o $@ $< -lm $(CC_FLAGS)

#data :
#	mkdir data
#	./gen_dataset.sh
