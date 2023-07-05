include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
GSL_INC   =-I/path/to/gsl/include
GSL_LIB   =-L/path/to/gsl/lib -lgsl -lgslcblas 


#===============================================================================
# Program name & source code list
#===============================================================================

program = main

obj=basis.o scf.o main.o crys.o cints.o cuda_rys_sp.o cuda_rys_dp.o


#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 $(GSL_INC)

# Linker Flags
LINKER_FLAGS = $(GSL_LIB)

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g
  LINKER_FLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu cuda_rys_dp.h cuda_rys_sp.h
	$(NVCC) -dc -o $@ $< $(NVCC_FLAGS)

scf.o: scf.cc
	$(NVCC) -c -o $@ $< $(NVCC_FLAGS)

basis.o: basis.cc
	$(NVCC) -c -o $@ $< $(NVCC_FLAGS)

crys.o: ./int_lib/crys.cc
	$(NVCC) -c -o $@ $< $(NVCC_FLAGS)

cints.o: ./int_lib/cints.cc
	$(NVCC) -c -o $@ $< $(NVCC_FLAGS)

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) sp
	./$(program) dp
