include ../../common/make.config
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
DUMP      = yes


# Standard flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

# Linker flags
LINKER_FLAGS += -lm

# Enable checksum and output file
ifeq ($(DEBUG),yes)
	HEC_NVCC_FLAGS += -g  
	TEST_ON = -DTEST_CHECKSUM 
endif

ifeq ($(DUMP),yes)
	OUTPUT  = -DOUTPUT
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
	HEC_NVCC_FLAGS += 
endif


heartwall:	./main.o \
	./kernel/kernel.o \
	./util/avi/avilib.o \
	./util/avi/avimod.o \
	./util/file/file.o \
	./util/timer/timer.o 
	$(NVCC)	$(HEC_NVCC_FLAGS) ./main.o \
		./kernel/kernel.o \
		./util/avi/avilib.o \
		./util/avi/avimod.o \
		./util/file/file.o \
		./util/timer/timer.o \
		$(LINKER_FLAGS) -o heartwall

# ======================================================================================================================================================150
#	MAIN FUNCTION
# ======================================================================================================================================================150

./main.o:	./main.h \
	./main.cu
	$(NVCC)	$(OUTPUT) $(KERNEL_DIM) ./main.cu \
		-I./util/timer/ \
		-I./util/file/ \
		-c \
		-o ./main.o 

# ======================================================================================================================================================150
#	KERNELS
# ======================================================================================================================================================150

./kernel/kernel.o:./kernel/kernel.h ./kernel/kernel.cu
	$(NVCC) $(HEC_NVCC_FLAGS) $(TEST_ON) $(KERNEL_DIM) ./kernel/kernel.cu \
		-c \
		-o ./kernel/kernel.o 

# ======================================================================================================================================================150
#	UTILITIES
# ======================================================================================================================================================150

./util/avi/avilib.o:./util/avi/avilib.h \
	./util/avi/avilib.c
	$(NVCC)	$(HEC_NVCC_FLAGS) ./util/avi/avilib.c \
		-I./util/avi \
		-c \
		-o ./util/avi/avilib.o 

./util/avi/avimod.o:./util/avi/avilib.h \
	./util/avi/avimod.c
	$(NVCC)	$(HEC_NVCC_FLAGS) ./util/avi/avimod.c \
		-I./util/avi \
		-c \
		-o ./util/avi/avimod.o 

./util/file/file.o:	./util/file/file.h \
	./util/file/file.c
	$(NVCC)	$(HEC_NVCC_FLAGS) ./util/file/file.c \
		-I./util/file \
		-I./util/timer \
		-c \
		-o ./util/file/file.o 

./util/timer/timer.o:	./util/timer/timer.h \
	./util/timer/timer.c
	$(NVCC)	$(HEC_NVCC_FLAGS) ./util/timer/timer.c \
		-I./util/timer \
		-c \
		-o ./util/timer/timer.o 

run: heartwall
	./heartwall 104
run_no_build:
	./heartwall 104

clean:
	rm	-rf *.o heartwall \
		./kernel/*.o \
		./util/avi/*.o \
		./util/file/*.o \
		./util/timer/*.o 
