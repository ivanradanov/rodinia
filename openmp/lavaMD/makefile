include ../../common/openmp.make.config

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

C_C = $(CC)

# link objects (binaries) together
lavaMD:		main.o \
			./kernel/kernel_cpu.o \
			./util/num/num.o \
			./util/timer/timer.o
	$(LINKER)	main.o \
			./kernel/kernel_cpu.o \
			./util/num/num.o \
			./util/timer/timer.o \
			-lm \
			-o lavaMD $(LINKER_FLAGS)
# compile function files into objects (binaries)
main.o:		main.h \
			main.c \
			./kernel/kernel_cpu.h \
			./kernel/kernel_cpu.c \
			./util/num/num.h \
			./util/num/num.c \
			./util/timer/timer.h \
			./util/timer/timer.c
	$(C_C)	${OUTPUT} main.c \
			-c \
			-o main.o \
			$(CC_FLAGS)

./kernel/kernel_cpu.o:	./kernel/kernel_cpu.h \
						./kernel/kernel_cpu.c
	$(C_C)				./kernel/kernel_cpu.c \
						-c \
						-o ./kernel/kernel_cpu.o \
						\
						$(OMP_FLAG) $(CC_FLAGS)

./util/num/num.o:	./util/num/num.h \
					./util/num/num.c
	$(C_C)			./util/num/num.c \
					-c \
					-o ./util/num/num.o \
					$(CC_FLAGS)

./util/timer/timer.o:	./util/timer/timer.h \
						./util/timer/timer.c
	$(C_C)				./util/timer/timer.c \
						-c \
						-o ./util/timer/timer.o \
						$(CC_FLAGS)

# delete all object and executable files
clean:
	rm	*.o \
		./kernel/*.o \
		./util/num/*.o \
		./util/timer/*.o \
                ./util/device/*.o \
		lavaMD
