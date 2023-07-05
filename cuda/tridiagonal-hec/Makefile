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

source = main.cu shrUtils.cu cmd_arg_reader.cu 

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -DUNIX -DBENCH_ITERATIONS=100 -std=c++14 -Xcompiler -Wall

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
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LINKER_FLAGS)

main.o : main.cu \
         tridiagonal.h\
         shrUtils.h\
         file_read_write.h\
         test_gen_result_check.h\
         cpu_solvers.h\
         pcr_small_systems.h\
         cyclic_small_systems.h\
         sweep_small_systems.h\
         pcr_kernels.cu\
         cyclic_kernels.cu\
         sweep_kernels.cu
	$(CC) $(NVCC_FLAGS) -c $< -o $@

shrUtils.o: shrUtils.cu shrUtils.h cmd_arg_reader.h exception.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

cmd_arg_reader.o: cmd_arg_reader.cu cmd_arg_reader.h exception.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) *.dat *.timing *.txt *.csv

run: $(program)
	./$(program) -num_systems=524288
	./$(program) --lmem -num_systems=524288
	./$(program) --vec4 -num_systems=524288 
