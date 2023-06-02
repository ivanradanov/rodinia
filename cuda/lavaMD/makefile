include ../../common/make.config

# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n
ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

#C_C = gcc
C_C = $(CC)
#OMP_LIB = -lgomp
#OMP_FLAG = -fopenmp
#
#CUD_C = $(CUDA_DIR)/bin/nvcc
CUD_C = $(NVCC)
## OMP_FLAG = 	-Xcompiler paste_one_here
CUDA_FLAG = $(NVCC_FLAGS)

# link objects (binaries) together
lavaMD:		main.o \
			./util/num/num.o \
			./util/timer/timer.o \
			./util/device/device.o
	$(LINKER)	$(KERNEL_DIM) main.o \
			./util/num/num.o \
			./util/timer/timer.o \
			./util/device/device.o \
			-lm \
			$(LINKER_FLAGS) \
			-o lavaMD 

# compile function files into objects (binaries)
main.o:		main.h \
			main.cu \
			./kernel/kernel_gpu_cuda_wrapper.h \
			./kernel/kernel_gpu_cuda_wrapper.cu \
			./util/num/num.h \
			./util/num/num.c \
			./util/timer/timer.h \
			./util/timer/timer.c \
			./util/device/device.h \
			./util/device/device.cu
	$(NVCC)	$(KERNEL_DIM) $(OUTPUT) main.cu \
			-c \
			-o main.o \
			$(NVCC_FLAGS) $(POLYGEIST_LLVM_STRUCT_ABI_0)


#./kernel/kernel_gpu_cuda_wrapper.o:	./kernel/kernel_gpu_cuda_wrapper.h \
#									./kernel/kernel_gpu_cuda_wrapper.cu
#	$(CUD_C) $(KERNEL_DIM)						./kernel/kernel_gpu_cuda_wrapper.cu \
#									-c \
#									-o ./kernel/kernel_gpu_cuda_wrapper.o \
#									\
#									$(CUDA_FLAG)


./util/num/num.o:	./util/num/num.h \
					./util/num/num.c
	$(C_C)			./util/num/num.c \
					-c \
					-o ./util/num/num.o \
					$(CC_FLAGS) 


./util/timer/timer.o:	./util/timer/timer.h \
						./util/timer/timer.c
	$(C_C)				./util/timer/timer.c \
						-c \
						-o ./util/timer/timer.o \
						$(CC_FLAGS) 


./util/device/device.o:	./util/device/device.h \
						./util/device/device.cu
	$(CUD_C)			./util/device/device.cu \
						-c \
						-o ./util/device/device.o \
						$(CUDA_FLAG) 

# delete all object and executable files
clean:
	rm	*.o \
		./kernel/*.o \
		./util/num/*.o \
		./util/timer/*.o \
		./util/device/*.o \
		lavaMD
