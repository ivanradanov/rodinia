include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14 

# Linker Flags
LINKER_FLAGS += 

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g
  LINKER_FLAGS  += -g
endif


# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif

#===============================================================================
# Program name & source code list
#===============================================================================
program = multimat multimat_FL multimat_F

all: $(program)

source=compact.cu full_matrix.cu multimat.cu

multimat: $(source)
	$(LINKER) $^ -o $@ $(LINKER_FLAGS)
multimat_F: $(source)
	$(LINKER) -DFUSED $^ -o $@ $(LINKER_FLAGS)
multimat_FL: $(source)
	$(LINKER) -DFUSED -DLINKED $^ -o $@ $(LINKER_FLAGS)

clean: 
	rm -rf $(program)

run: $(program)
	./multimat_FL 2000 2000
run_no_build:
	./multimat_FL 2000 2000
	./multimat_F 2000 2000
	./multimat 2000 2000
	./multimat_FL 2000 2000 0.3 0.05 0.05
	./multimat_F 2000 2000 0.3 0.05 0.05
	./multimat 2000 2000 0.3 0.05 0.05
