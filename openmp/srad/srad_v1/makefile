include ../../../common/openmp.make.config
# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n

# link objects(binaries) together
srad:	main.o
	$(LINKER)	main.o \
			-lm -fopenmp -o srad $(LINKER_FLAGS)

# compile main function file into object (binary)
main.o: 	main.c \
				define.c \
				graphics.c
	$(CC)	main.c \
			-c $(CC_FLAGS) -o main.o

# delete all object files
clean:
	rm *.o srad
