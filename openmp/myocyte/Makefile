include ../../common/openmp.make.config
# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n

# link objects(binaries) together
myocyte.out:	main.o
	$(LINKER) main.o \
			-lm -fopenmp \
	-o myocyte.out $(LINKER_FLAGS)

# compile main function file into object (binary)
main.o: 	main.c \
				define.c \
				ecc.c \
				cam.c \
				fin.c \
				master.c \
				embedded_fehlberg_7_8.c \
				solver.c \
				file.c \
				timer.c
	$(CC)	main.c \
			-c -fopenmp $(CC_FLAGS)

# delete all object files
clean:
	rm *.o myocyte.out output.txt
