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

program = main

source = main.cu shrUtils.cu cmd_arg_reader.cu 

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -DUNIX -DBENCH_ITERATIONS=100 -std=c++14

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
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

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
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

shrUtils.o: shrUtils.cu shrUtils.h cmd_arg_reader.h exception.h
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

cmd_arg_reader.o: cmd_arg_reader.cu cmd_arg_reader.h exception.h
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) *.dat *.timing *.txt *.csv

run: $(program)
	./$(program) -num_systems=524288
	./$(program) --lmem -num_systems=524288
	./$(program) --vec4 -num_systems=524288
run_no_build:
	./$(program) -num_systems=524288
	./$(program) --lmem -num_systems=524288
	./$(program) --vec4 -num_systems=524288 
