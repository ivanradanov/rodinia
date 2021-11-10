include ../../common/openmp.make.config

PREFIX=${PARSECDIR}/pkgs/kernels/streamcluster/inst/${PARSECPLAT}

TARGET_C = sc_cpu

TARGET_O = sc_omp

ifdef version
  ifeq "$(version)" "parallel"
    CXXFLAGS :=	$(CXXFLAGS) -DENABLE_THREADS -pthread
  endif
endif

all: cpu omp

cpu: $(TARGET_C)
$(TARGET_C):
	$(CXX) $(CXXFLAGS) $(LDFLAGS) streamcluster_original.cpp -o $(TARGET_C) $(LIBS) -DENABLE_THREADS -pthread $(MY_ADDITIONAL_FLAGS)

omp: $(TARGET_O)
$(TARGET_O):
	g++ -O3 -fopenmp -o $(TARGET_O) streamcluster_omp.cpp $(MY_ADDITIONAL_FLAGS)


clean:
	rm -f *.o *~ *.txt sc_cpu sc_omp
