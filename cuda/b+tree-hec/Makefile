include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LINKER_FLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
endif


# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3

endif

b+tree.out:	./main.o \
		./kernel/kernel_wrapper.o \
		./kernel/kernel2_wrapper.o \
		./util/timer/timer.o \
		./util/num/num.o 
	$(CC)	$(NVCC_FLAGS) ./main.o \
			./kernel/kernel_wrapper.o \
			./kernel/kernel2_wrapper.o \
			./util/timer/timer.o \
			./util/num/num.o \
			-lm  -o b+tree.out



main.o:	./common.h \
		./main.h \
		./main.cu
	$(CC)	$(NVCC_FLAGS) $(KERNEL_DIM) ./main.cu \
			-c \
			-o ./main.o

# ======================================================================================================================================================150
#	KERNELS
# ======================================================================================================================================================150

./kernel/kernel_wrapper.o:	./common.h \
									./kernel/kernel_wrapper.h \
									./kernel/kernel_wrapper.cu
	$(CC) $(KERNEL_DIM) ./kernel/kernel_wrapper.cu \
				-c \
				-o ./kernel/kernel_wrapper.o \
				$(NVCC_FLAGS)

./kernel/kernel2_wrapper.o:	./common.h \
										./kernel/kernel2_wrapper.h \
										./kernel/kernel2_wrapper.cu
	$(CC) $(KERNEL_DIM) ./kernel/kernel2_wrapper.cu \
				-c \
				-o ./kernel/kernel2_wrapper.o \
				$(NVCC_FLAGS)

# ======================================================================================================================================================150
#	UTILITIES
# ======================================================================================================================================================150

./util/timer/timer.o:	./common.h \
						./util/timer/timer.h \
						./util/timer/timer.c
	$(CC)	./util/timer/timer.c \
			-c \
			-o ./util/timer/timer.o 

./util/num/num.o:	./common.h \
					./util/num/num.h \
					./util/num/num.c
	$(CC)	./util/num/num.c \
			-c \
			-o ./util/num/num.o 

run: b+tree.out
	        ./b+tree.out file ../data/b+tree/mil.txt command ../data/b+tree/command.txt

clean:
	rm	-rf *.o *.out \
		./kernel/*.o \
		./util/timer/*.o \
		./util/num/*.o \
    output.txt

