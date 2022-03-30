#!/usr/bin/env bash

set -x

NRUNS=10

#DATE="$(date -Ins)"
#LOG_FILE="~/tmp/all_benches_log_$DATE.log"

MAX_THREAD_TEST_CONFIGS="1 2 3 6 7 8"
SCALING_TEST_CONFIGS="2 3"
THREAD_NUMS="1 2 4 8 16"
THREAD_NUMS_OPENMP="1 2 4 8 16 24"
#THREAD_NUMS_OPENMP="24"

echo Start "$(date -Ins)"

./scripts/enable-config.sh common/host.make.config common/memkf02.polygeist.host.make.config

echo Max thread tests
for i in $MAX_THREAD_TEST_CONFIGS; do
    echo Compiling configuration $i...
    make cuda_clean &> /dev/null
    make CONFIG="$i" MY_VERIFICATION_DISABLE=1 cuda &> /dev/null

    echo Running configuration $i...
    ./scripts/run_timed_cuda_n_times.sh $NRUNS

done

echo Scaling tests cuda
for i in $SCALING_TEST_CONFIGS; do
    echo Compiling configuration $i...
    make cuda_clean &> /dev/null
    make CONFIG="$i" MY_VERIFICATION_DISABLE=1 cuda &> /dev/null

    echo Running configuration $i...
    ./scripts/run_scaling_test.sh "./scripts/run_timed_cuda_n_times.sh $NRUNS" $THREAD_NUMS
done

echo Finished cuda "$(date -Ins)"

echo Scaling tests openmp

./scripts/enable-config.sh common/openmp.host.make.config common/memkf02.polygeist-clang.openmp.host.make.config
make omp_clean &> /dev/null
make omp &> /dev/null
./scripts/run_scaling_test.sh "./scripts/run_timed_openmp_n_times.sh $NRUNS" $THREAD_NUMS_OPENMP

./scripts/enable-config.sh common/openmp.host.make.config common/memkf02.polygeist.openmp.host.make.config
make omp_clean &> /dev/null
make omp &> /dev/null
./scripts/run_scaling_test.sh "./scripts/run_timed_openmp_n_times.sh $NRUNS" $THREAD_NUMS_OPENMP

./scripts/enable-config.sh common/openmp.host.make.config "common/memkf02.polygeist.openmp.openmp-opt=0.host.make.config"
make omp_clean &> /dev/null
make omp &> /dev/null
./scripts/run_scaling_test.sh "./scripts/run_timed_openmp_n_times.sh $NRUNS" $THREAD_NUMS_OPENMP

echo Finished "$(date -Ins)"
