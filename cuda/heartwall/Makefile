include ../../common/make.config

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

# link objects(binaries) together
heartwall: main.o ./AVI/avilib.o ./AVI/avimod.o 
	$(LINKER) main.o ./AVI/avilib.o ./AVI/avimod.o -lm -o heartwall $(LINKER_FLAGS)

# compile main function file into object (binary)
main.o: main.cu kernel.cu define.c
	$(NVCC) $(OUTPUT) $(KERNEL_DIM) main.cu -I./AVI -c $(NVCC_FLAGS)

./AVI/avilib.o ./AVI/avimod.o:
	cd AVI; make;

# delete all object files
clean:
	rm -f *.o AVI/*.o heartwall *.linkinfo
