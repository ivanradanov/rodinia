include ../../common/make.config
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60


# Standard flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

# Linker flags
LINKER_FLAGS += -lm

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g -G -O0#-DDEBUG
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif


ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

ifdef TIMER
override TIMER = -DTIMER
endif

hybridsort: hybridsort.o bucketsort.o mergesort.o
	$(NVCC) $(HEC_NVCC_FLAGS) -o hybridsort $(VERIFY) $(OUTPUT) $(TIMER) \
		hybridsort.o bucketsort.o mergesort.o $(LINKER_FLAGS)

hybridsort.o: hybridsort.cu bucketsort.h mergesort.h
	$(NVCC) $(HEC_NVCC_FLAGS) -o hybridsort.o -c hybridsort.cu

bucketsort.o: bucketsort.cu \
	kernel_bucketprefix.h \
	kernel_histogram.h \
	kernel_bucketcount.h \
       	kernel_bucketsort.h  
	$(NVCC) $(HEC_NVCC_FLAGS) -o bucketsort.o -c bucketsort.cu

mergesort.o: mergesort.cu mergesort.h kernel_mergeSortPass.h
	$(NVCC) $(HEC_NVCC_FLAGS) -o mergesort.o -c mergesort.cu

run: hybridsort
	./hybridsort r
run_no_build:
	./hybridsort r

clean:
	rm -f *.o hybridsort
