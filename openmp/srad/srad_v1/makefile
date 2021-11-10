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
a.out:	main.o
	gcc	main.o \
			-lm -fopenmp -o srad $(MY_ADDITIONAL_FLAGS)

# compile main function file into object (binary)
main.o: 	main.c \
				define.c \
				graphics.c
	gcc	main.c \
			-c -O3 -fopenmp $(MY_ADDITIONAL_FLAGS)

# delete all object files
clean:
	rm *.o srad
