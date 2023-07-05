#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall 

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
# Program name & source code list
#===============================================================================
program = multimat multimat_FL multimat_F

all: $(program)

source=compact.cu full_matrix.cu multimat.cu

multimat: $(source)
	$(CC) $(NVCC_FLAGS) $^ -o $@ $(LDFLAGS)
multimat_F: $(source)
	$(CC) $(NVCC_FLAGS) -DFUSED $^ -o $@ $(LDFLAGS)
multimat_FL: $(source)
	$(CC) $(NVCC_FLAGS) -DFUSED -DLINKED $^ -o $@ $(LDFLAGS)

clean: 
	rm -rf $(program)

run: $(program)
	./multimat_FL 2000 2000
	./multimat_F 2000 2000
	./multimat 2000 2000
	./multimat_FL 2000 2000 0.3 0.05 0.05
	./multimat_F 2000 2000 0.3 0.05 0.05
	./multimat 2000 2000 0.3 0.05 0.05
