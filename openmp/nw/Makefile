include ../../common/openmp.make.config
# C compiler
CC = g++
ICC = icc
CC_FLAGS = -g -O3 -fopenmp
OFFLOAD_CC_FLAGS = -offload-option,mic,compiler,"-no-opt-prefetch"

all: needle #needle_offload

needle:
	$(CC) $(CC_FLAGS) needle.cpp -o needle  $(MY_ADDITIONAL_FLAGS)

needle_offload:
	$(ICC) $(CC_FLAGS) $(OFFLOAD_CC_FLAGS) -DOMP_OFFLOAD needle.cpp -o needle_offload

clean:
	rm -f needle needle_offload
