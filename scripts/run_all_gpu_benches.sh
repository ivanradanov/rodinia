#!/usr/bin/env bash

# VALID_ARGS=$(getopt --long pgo_prof,pgo_opt,host,nruns,configs,clang,nvcc -- "$@")
# if [[ $? -ne 0 ]]; then
#     exit 1;
# fi

# eval set -- "$VALID_ARGS"
while [ : ]; do
  case "$1" in
    --pgo-alternatives)
        echo "Will profile $2 alternatives"
		PGO_ALTERNATIVE_NUM="$2"
        shift 2
        ;;
    --pgo-prof)
        echo "Will run PGO profiling on '$2'"
		PGO_MODE="pgo_prof"
		PGO_CONFIGS="$2"
        shift 2
        ;;
    --pgo-opt)
        echo "Will optimize '$2' using PGO"
		PGO_MODE="pgo_opt"
		PGO_CONFIGS="$2"
        shift 2
        ;;
    --host)
        echo "Will use '$2' host config"
		HOST="$2"
        shift 2
        ;;
    --nruns)
        echo "Will run $2 times"
		NRUNS="$2"
        shift 2
        ;;
    --configs)
        echo "Will run '$2' configs"
		TEST_CONFIGS="$2"
        shift 2
        ;;
    --clang)
        echo "Will run clang"
		TEST_CONFIGS="0 $TEST_CONFIGS"
        shift
        ;;
    --nvcc)
        echo "Will run nvcc"
		RUN_NVCC=1
        shift
        ;;
    --)
		shift
        break
        ;;
	*)
		break
		;;
  esac
done

echo ----------------------------------------------
echo Start "$(date -Ins)"
echo ----------------------------------------------

rm -r results/

./scripts/enable-config.sh common/host.make.config common/$HOST.polygeist.host.make.config

for i in $TEST_CONFIGS; do
	echo Compiling polygeist configuration $i...
	make cuda_clean &> /dev/null
	make CONFIG="$i" TARGET_GPU=1 MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null

	echo Running polygeist configuration $i...
	./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL
done

if [ "$PGO_MODE" == "pgo_prof" ]; then
   for i in $PGO_CONFIGS; do
	   echo Compiling polygeist configuration $i for profiling...
	   make cuda_clean &> /dev/null
	   make POLYGEIST_ALTERNATIVES_MODE="$PGO_MODE" CONFIG="$i" TARGET_GPU=1 MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null
	   ALTS=$(seq 0 $(($PGO_ALTERNATIVE_NUM - 1)))
	   for j in $ALTS; do
	       echo Profiling polygeist configuration $i alternative $j...
	       POLYGEIST_PGO_KERNEL_ALTERNATIVE="$j" ./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL
	   done
   done
fi

# if [ "$PGO_MODE" == "pgo_opt" ]; then
#    for i in $PGO_CONFIGS; do
# 	   echo Compiling polygeist configuration $i with PGO...
# 	   make cuda_clean &> /dev/null
# 	   make POLYGEIST_ALTERNATIVES_MODE="$PGO_MODE" CONFIG="$i" TARGET_GPU=1 MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null
#
# 	   echo Running polygeist configuration $i with PGO...
# 	   ./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL
#    done
# fi

echo Finished polygeist and clang cuda "$(date -Ins)"

if [ "1" = "$RUN_NVCC" ]; then
  ./scripts/enable-config.sh common/host.make.config common/$HOST.nvcc.host.make.config

  echo Compiling nvcc
  make cuda_clean &> /dev/null
  make MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null

  echo Running nvcc...
  ./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL

  echo Finished nvcc cuda "$(date -Ins)"
fi



echo COPYING RESULTS, DONT QUIT
RESULTS="rodinia_results_$HOSTNAME_$(date -Ins)"
mkdir -p "$HOME/rodinia_results/$RESULTS"
cp -a results "$HOME/rodinia_results/$RESULTS"
cd "$HOME/rodinia_results/"
zip -r "$RESULTS" "$RESULTS/results/cuda/out/"

echo Finished "$RESULTS"

