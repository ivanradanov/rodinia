include ../../common/openmp.make.config

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

# link objects(binaries) together
heartwall: main.o ./AVI/avilib.o ./AVI/avimod.o
	gcc main.o ./AVI/avilib.o ./AVI/avimod.o -lm -fopenmp -o heartwall $(MY_ADDITIONAL_FLAGS)

# compile main function file into object (binary)
main.o: main.c define.c kernel.c
	gcc $(OUTPUT) main.c -I./AVI -c -O3 -fopenmp $(MY_ADDITIONAL_FLAGS)

./AVI/avilib.o ./AVI/avimod.o:
	cd AVI; make;

# delete all object files
clean:
	rm -f *.o AVI/*.o heartwall
