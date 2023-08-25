include ../../common/make.config

#CUDA_SDK_PATH := $(SDK_DIR)
#
## Determine the correct version of the cutil library
#CUTIL_LIB = # -lcutil
#ifeq ($(shell uname -m), x86_64)
#     ifeq ($(shell if test -e $(SDK_DIR)/lib/libcutil_x86_64.a; then echo T; else echo F; fi), T)
#        CUTIL_LIB = #-lcutil_x86_64
#     endif
#endif


CUTIL_LIB = $(NVCC_FLAGS)

CUDA_SDK_PATH = $(CUDA_SAMPLES_PATH)

all: euler3d # euler3d_double  pre_euler3d  pre_euler3d_double 

euler3d: euler3d.o
	$(LINKER) euler3d.o -o euler3d $(LINKER_FLAGS)


euler3d.o: euler3d.cu
	$(NVCC) $(KERNEL_DIM) -c euler3d.cu -o euler3d.o -I$(CUDA_SDK_PATH)/common/inc  -L$(CUDA_SDK_PATH)/lib $(CUTIL_LIB) -lstdc++ -I ../hybridsort

euler3d_double: euler3d_double.cu
	$(NVCC) -Xptxas -v euler3d_double.cu -o euler3d_double -I$(CUDA_SDK_PATH)/common/inc  -L$(CUDA_SDK_PATH)/lib $(CUTIL_LIB) -I ../hybridsort


pre_euler3d: pre_euler3d.cu
	$(NVCC) -Xptxas -v pre_euler3d.cu -o pre_euler3d -I$(CUDA_SDK_PATH)/common/inc  -L$(CUDA_SDK_PATH)/lib $(CUTIL_LIB) -I ../hybridsort

pre_euler3d_double: pre_euler3d_double.cu
	$(NVCC) -Xptxas -v pre_euler3d_double.cu -o pre_euler3d_double -I$(CUDA_SDK_PATH)/common/inc  -L$(CUDA_SDK_PATH)/lib $(CUTIL_LIB) -I ../hybridsort


clean:
	rm -f euler3d euler3d_double pre_euler3d pre_euler3d_double *.linkinfo *.o
