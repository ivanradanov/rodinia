include ../../common/make.config
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

# Matrix library path
MATRIX_DIR = ./meschach_lib

# Standard flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14 -I$(MATRIX_DIR) --x cu

# Linker flags
LINKER_FLAGS += -lm


# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g -DDEBUG
endif

ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g  
  OUTPUT = -DOUTPUT
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif

leukocyte: detect_main.o \
	avilib.o \
	track_ellipse.o \
	track_ellipse_gpu.o \
	find_ellipse.o \
	misc_math.o \
	helper.o \
	$(MATRIX_DIR)/meschach.a
	$(NVCC)  -o leukocyte avilib.o \
		track_ellipse.o \
		track_ellipse_gpu.o \
		find_ellipse.o \
		misc_math.o \
		detect_main.o \
		helper.o \
		$(MATRIX_DIR)/meschach.a $(LINKER_FLAGS)

%.o: %.c
	$(NVCC) $(OUTPUT) $(HEC_NVCC_FLAGS) $< -c

detect_main.o: detect_main.c \
               kernel_GICOV.h kernel_dilated.h \
               track_ellipse.h helper.h misc_math.h 

find_ellipse.o: find_ellipse.c find_ellipse.h avilib.h misc_math.h

track_ellipse.o: track_ellipse.c find_ellipse.h $(MATRIX_DIR)/matrix.h avilib.h helper.h

track_ellipse_gpu.o: track_ellipse_gpu.c track_ellipse.h kernel_IMGVF.h


# Cleanup everything, then clean everything except the static library
$(MATRIX_DIR)/meschach.a:
	cd $(MATRIX_DIR); make cleanup; make all CC=$(NVCC); make clean

run: leukocyte
	./leukocyte ../data/leukocyte/testfile.avi 100
run_no_build:
	./leukocyte ../data/leukocyte/testfile.avi 100

clean:
	rm -f *.o *~ leukocyte 
	cd $(MATRIX_DIR); make cleanup
