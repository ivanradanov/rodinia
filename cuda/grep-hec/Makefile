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
program = nfa

source = main.cu nfautil.cu regex.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14

# Linker Flags
LINKER_FLAGS = 

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

%.o: %.cu pnfa.cu cycleTimer.h nfautil.h pnfa.h regex.h
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) RESULTS

run: $(program)
	./runtests.sh
