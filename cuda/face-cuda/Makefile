include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

#===============================================================================
# Program name & source code list
#===============================================================================

program = vj-cpu vj-gpu

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

# Linker Flags
LINKER_FLAGS += 

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g -G
  LINKER_FLAGS  += -g
endif


# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif

HEADERS := image.h haar.h stdio-wrapper.h

all: build

build: $(program)

image.o: image.cu $(HEADERS)
	$(NVCC) $(HEC_NVCC_FLAGS) -o $@ -c $<

stdio-wrapper.o: stdio-wrapper.cu $(HEADERS)
	$(NVCC) $(HEC_NVCC_FLAGS) -o $@ -c $<

main.o: main.cu $(HEADERS)
	$(NVCC) $(HEC_NVCC_FLAGS) -o $@ -c $<

haar-gpu.o: haar.cu $(HEADERS)
	$(NVCC) $(HEC_NVCC_FLAGS) -DGPU -o $@ -c $<

haar-cpu.o: haar.cu $(HEADERS)
	$(NVCC) $(HEC_NVCC_FLAGS) -o $@ -c $<

rectangles.o: rectangles.cu $(HEADERS)
	$(NVCC) $(HEC_NVCC_FLAGS) -o $@ -c $<

vj-cpu: main.o haar-cpu.o image.o stdio-wrapper.o rectangles.o
	$(LINKER) -o $@ $+ $(LINKER_FLAGS)

vj-gpu: main.o haar-gpu.o image.o stdio-wrapper.o rectangles.o
	$(LINKER) -o $@ $+ $(LINKER_FLAGS)

clean:
	rm -f $(program) *.o Output-cpu.pgm Output-gpu.pgm

run: build
	./vj-cpu Face.pgm info.txt class.txt Output-cpu.pgm
run_no_build:
	./vj-cpu Face.pgm info.txt class.txt Output-cpu.pgm
	./vj-gpu Face.pgm info.txt class.txt Output-gpu.pgm
