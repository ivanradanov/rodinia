#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

obj = main.o sptrsv_syncfree.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall \
          -DWARP_SIZE=32 -DWARP_PER_BLOCK=8 \
          -DVALUE_TYPE=double -I../sptrsv-sycl

# Linker Flags
LDFLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g
  LDFLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LDFLAGS)

main.o: ../sptrsv-sycl/main.cpp \
	../sptrsv-sycl/mmio.h \
	../sptrsv-sycl/read_mtx.h \
	../sptrsv-sycl/sptrsv.h \
	../sptrsv-sycl/tranpose.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

sptrsv_syncfree.o : sptrsv_syncfree.cu Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) ../sptrsv-sycl/lp1.mtx 2000
