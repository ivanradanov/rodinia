include ../../common/make.config
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
PROFILE   = yes


# Standard flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

# Linker flags
LINKER_FLAGS += -lm

ifeq ($(PROFILE),yes)
  HEC_NVCC_FLAGS += -DPROFILE_TMP
endif

# Enable checksum and output file
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g 
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif

SRC = streamcluster.cu
EXE = streamcluster

$(EXE):$(SRC) kernel.h streamcluster.h  streamcluster_cl.h
	$(LINKER) $(SRC) -o $(EXE) $(LINKER_FLAGS)	

run: $(EXE)
	./$(EXE) 10 20 256 65536 65536 1000 none output.txt 1 
run_no_build:
	./$(EXE) 10 20 256 65536 65536 1000 none output.txt 1 

clean: 
	rm -f $(EXE) output.txt result*
