#!/bin/bash
set -x

"$MLIR_BUILD/bin/clang++" "-I$MLIR_BUILD/projects/openmp/runtime/src/" -O2 -fopenmp matrixMul.cpp -I./cpucuda/include ./libcpucuda.a 
