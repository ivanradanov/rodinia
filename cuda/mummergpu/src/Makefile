include ../../../common/make.config

all: mummergpu
.SUFFIXES : .cu .cu_dbg.o .c_dbg.o .cpp_dbg.o .cu_rel.o .c_rel.o .cpp_rel.o .cubin

include ../experiments/test_rule.mk

CUDA_INSTALL_PATH := $(CUDA_DIR)

# Compilers
#NVCC       := $(CUDA_INSTALL_PATH)/bin/nvcc 
#CXX        := g++ -fopenmp $(PROFILE)
#CC         := gcc 
#LINK       := g++ -fopenmp -m64 -fPIC $(PROFILE)
LINK = $(LINKER)

# Add source files here
STATIC_LIB := libmummergpu.a
# Cuda source files (compiled with cudacc)
CUFILES		:= mummergpu.cu
# C/C++ source files (compiled with gcc / c++)
CCFILES		:= \
	 mummergpu_gold.cpp suffix-tree.cpp PoolMalloc.cpp

################################################################################
# Rules and targets


# Basic directory setup for SDK
# (override directories only if they are not already defined)
SRCDIR     ?= 
ROOTDIR    ?= ..
ROOTBINDIR ?= $(ROOTDIR)/bin
BINDIR     ?= $(ROOTBINDIR)
ROOTOBJDIR ?= obj
LIBDIR     := $(ROOTDIR)/lib
BINNAME    ?= mummergpu
# Includes
INCLUDES  += -I. -I$(CUDA_INSTALL_PATH)/include 

# Libs
LIB       := -L$(CUDA_LIB_DIR) -L$(LIBDIR) -lcuda -lcudart -lGL -lGLU ${LIB}

# Warning flags
CXXWARN_FLAGS := \
	-W -Wall \
	-Wimplicit \
	-Wswitch \
	-Wformat \
	-Wchar-subscripts \
	-Wparentheses \
	-Wmultichar \
	-Wtrigraphs \
	-Wpointer-arith \
	-Wcast-align \
	-Wreturn-type \
	-Wno-unused-function \
	$(SPACE)

CWARN_FLAGS := $(CXXWARN_FLAGS) \
	-Wstrict-prototypes \
	-Wmissing-prototypes \
	-Wmissing-declarations \
	-Wnested-externs \
	-Wmain \

# Compiler-specific flags
#NVCCFLAGS := -Xcompiler "-m64"
#CXXFLAGS  := -m64 $(CXXWARN_FLAGS)
#CFLAGS    := -m64 $(CWARN_FLAGS)
NVCCFLAGS := $(NVCC_FLAGS)
CXXFLAGS  := $(CXX_FLAGS)
CFLAGS    := $(CC_FLAGS)

CXXFLAGS += -std=c++98

# Common flags
COMMONFLAGS ?=
#COMMONFLAGS += $(INCLUDES) -DUNIX

# Debug/release configuration
ifeq ($(dbg),1)
	COMMONFLAGS += -g
	NVCCFLAGS   += -D_DEBUG
	BINSUBDIR   := debug
	LIBSUFFIX   := D
else 
	COMMONFLAGS += -O3
	BINSUBDIR   := release
	LIBSUFFIX   :=
endif

# Device emulation configuration
ifeq ($(emu), 1)
	NVCCFLAGS   += -deviceemu
	CUDACCFLAGS += 
	BINSUBDIR   := emu$(BINSUBDIR)
endif

ifeq ($(fastmath), 1)
	NVCCFLAGS += -use_fast_math
endif

# Add cudacc flags
#NVCCFLAGS += -Xcompiler "$(CUDACCFLAGS)"

# Add common flags
NVCCFLAGS += $(COMMONFLAGS)
CXXFLAGS  += $(COMMONFLAGS)
CFLAGS    += $(COMMONFLAGS)

OBJDIR := $(ROOTOBJDIR)/$(BINSUBDIR)

#.c.c_$(APPEND).o:
$(OBJDIR)/%.c.o : $(SRCDIR)%.c
	$(CC) $(CFLAGS) -o $@ -c $<

#.cpp.cpp_$(APPEND).o:
$(OBJDIR)/%.cpp.o : $(SRCDIR)%.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<

#.cu.cu_$(APPEND).o:
$(OBJDIR)/%.cu.o : $(SRCDIR)%.cu
	$(NVCC) -o $@ -c $< $(NVCCFLAGS)

#.cu.cubin
%.cubin : $(SRCDIR)mummergpu.cu mummergpu_kernel.cu
	$(NVCC) -o $(BINNAME).cubin -cubin $< $(NVCCFLAGS)

#.cu.ptx
%.ptx : $(SRCDIR)%.cu mummergpu_kernel.cu
	$(NVCC) -o $@ -ptx -Xopencc -LIST:source=on $< $(NVCCFLAGS)

makedirectories:
	@mkdir -p $(LIBDIR)
	@mkdir -p $(OBJDIR)
	@mkdir -p $(BINDIR)

LIBOBJS= \
    $(OBJDIR)/mummergpu_gold.cpp.o \
    $(OBJDIR)/suffix-tree.cpp.o \
    $(OBJDIR)/PoolMalloc.cpp.o \
    $(OBJDIR)/mummergpu.cu.o \

$(LIBDIR)/libmummergpu$(LIBSUFFIX).a: $(LIBOBJS)
	ar qv $@ $(LIBOBJS)

BINOBJS= \
    $(OBJDIR)/mummergpu_main.cpp.o

$(BINDIR)/mummergpu: makedirectories $(LIBDIR)/libmummergpu$(LIBSUFFIX).a $(BINOBJS)
	$(LINK) -o $(BINDIR)/$(BINNAME)  $(BINOBJS) $(LIB) ../lib/libmummergpu.a -lgomp
#$(LINK) -o $(BINDIR)/$(BINNAME)  $(BINOBJS) $(LIB) -lmummergpu$(LIBSUFFIX) 

##############################################################################
#                               Auto Generated rules go here                 #
##############################################################################

include ../experiments/rules.mk

##############################################################################
#                              End auto generated rules                      #
##############################################################################


clean:
	rm -f $(LIBOBJS)
	rm -f $(LIBDIR)/libmummergpu$(LIBSUFFIX).a
	rm -f $(BINOBJS)
	rm -f $(BINDIR)/$(BINNAME)
	rm -f *.linkinfo
	rm -rf $(ROOTBINDIR)
	rm -rf $(ROOTOBJDIR)
	rm -rf $(LIBDIR)

mummergpu: $(BINDIR)/mummergpu

cubin: mummergpu.cubin

ptx: mummergpu.ptx

