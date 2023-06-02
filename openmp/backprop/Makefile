include ../../common/openmp.make.config

backprop: backprop.o facetrain.o imagenet.o backprop_kernel.o
	$(LINKER) backprop.o facetrain.o imagenet.o backprop_kernel.o -o backprop -lm $(LINKER_FLAGS)

%.o: %.[ch]
	$(CC) $(CC_FLAGS) $< -c -o $@

facetrain.o: facetrain.c backprop.h
	$(CC) $(CC_FLAGS) facetrain.c -c -o facetrain.o -std=gnu89

backprop.o: backprop.c backprop.h
	$(CC) $(CC_FLAGS) backprop.c -c -o backprop.o -std=gnu89

backprop_kernel.o: backprop_kernel.c backprop.h
	$(CC) $(CC_FLAGS) backprop_kernel.c -c -o backprop_kernel.o -std=gnu89

imagenet.o: imagenet.c backprop.h
	$(CC) $(CC_FLAGS) imagenet.c -c -o imagenet.o -std=gnu89


clean:
	rm -f *.o *~ backprop backprop_cuda.linkinfo
