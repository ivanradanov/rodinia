include ../../common/openmp.make.config

backprop: backprop.o facetrain.o imagenet.o backprop_kernel.o
	$(LINKER) $(LINKER_FLAGS) backprop.o facetrain.o imagenet.o backprop_kernel.o -o backprop -lm

%.o: %.[ch]
	$(CC) $(CC_FLAGS) $< -c -o $@

facetrain.o: facetrain.c backprop.h
	$(CC) $(CC_FLAGS) facetrain.c -c -o facetrain.o

backprop.o: backprop.c backprop.h
	$(CC) $(CC_FLAGS) backprop.c -c -o backprop.o

backprop_kernel.o: backprop_kernel.c backprop.h
	$(CC) $(CC_FLAGS) backprop_kernel.c -c -o backprop_kernel.o

imagenet.o: imagenet.c backprop.h
	$(CC) $(CC_FLAGS) imagenet.c -c -o imagenet.o


clean:
	rm -f *.o *~ backprop backprop_cuda.linkinfo
