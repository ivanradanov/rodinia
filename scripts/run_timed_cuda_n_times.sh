#!/bin/bash
set -x

for i in $(seq $1); do echo run number $i; $NUMA_CMD ./scripts/run_timed_cuda.sh; done
