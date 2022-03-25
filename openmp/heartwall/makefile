include ../../common/openmp.make.config

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

# link objects(binaries) together
heartwall: main.o ./AVI/avilib.o ./AVI/avimod.o
	$(SYSTEM_LINKER) main.o ./AVI/avilib.o ./AVI/avimod.o -lm -o heartwall $(SYSTEM_LINKER_FLAGS)

# compile main function file into object (binary)
main.o: main.c define.c kernel.c
	$(CC) $(OUTPUT) main.c -o main.o -I./AVI -c -fopenmp $(CC_FLAGS) $(POLYGEIST_LLVM_ABI)

./AVI/avilib.o ./AVI/avimod.o:
	cd AVI; make;

# delete all object files
clean:
	rm -f *.o AVI/*.o heartwall
