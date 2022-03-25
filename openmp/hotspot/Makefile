include ../../common/openmp.make.config

# C compiler
ICC = icc
OFFLOAD_CC_FLAGS = -offload-option,mic,compiler,"-no-opt-prefetch"

all: hotspot #hotspot_offload


hotspot: hotspot_openmp.cpp Makefile
	$(CC) $(CC_FLAGS) hotspot_openmp.cpp -o hotspot $(LINKER_FLAGS)

hotspot_offload: hotspot_openmp.cpp Makefile
	$(ICC) $(CC_FLAGS) $(OFFLOAD_CC_FLAGS) -DOMP_OFFLOAD hotspot_openmp.cpp -o hotspot_offload $(MY_ADDITIONAL_FLAGS)

clean:
	rm -f hotspot hotspot_offload
