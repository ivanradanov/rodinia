include ../../common/openmp.make.config
# C compiler
#CC = g++
ICC = icc
CC_FLAGS = -g -fopenmp
OFFLOAD_CC_FLAGS = -offload-option,mic,compiler,"-no-opt-prefetch"

all: needle #needle_offload

needle:
	$(CXX) $(CXX_FLAGS) needle.cpp -o needle  $(LINKER_FLAGS)

needle_offload:
	$(ICC) $(CC_FLAGS) $(OFFLOAD_CC_FLAGS) -DOMP_OFFLOAD needle.cpp -o needle_offload

clean:
	rm -f needle needle_offload
