#!/usr/bin/env bash

VALID_ARGS=$(getopt -o h --long dry-run,clang,nvcc,nruns:,pgo-prof-nruns:,pgo-alternatives:,pgo-prof:,pgo-opt:,host:,configs: -- "$@")
if [[ $? -ne 0 ]]; then
    exit 1;
fi

# Default vals
PGO_ALTERNATIVE_NUM=7
NRUNS=5
PGO_PROF_NRUNS=3

eval set -- "$VALID_ARGS"
while [ : ]; do
  case "$1" in
    --pgo-alternatives)
        echo "Profile $2 alternatives"
		PGO_ALTERNATIVE_NUM="$2"
        shift 2
        ;;
    --pgo-prof-nruns)
        echo "Do $2 PGO profiling runs"
		PGO_PROF_NRUNS="$2"
        shift 2
        ;;
    --pgo-prof)
        echo "Run PGO profiling on '$2'"
		PGO_PROF="1"
		PGO_PROF_CONFIGS="$2"
        shift 2
        ;;
    --pgo-opt)
        echo "Optimize '$2' using PGO"
		PGO_OPT="1"
		PGO_OPT_CONFIGS="$2"
        shift 2
        ;;
    --host)
        echo "Use '$2' host config"
		HOST="$2"
        shift 2
        ;;
    --nruns)
        echo "Run $2 times"
		NRUNS="$2"
        shift 2
        ;;
    --configs)
        echo "Run '$2' configs"
		TEST_CONFIGS="$2"
        shift 2
        ;;
    --dry-run)
        echo "Dry run"
		DRY_RUN="1"
        shift
        ;;
    --clang)
        echo "Run clang"
		TEST_CONFIGS="0 $TEST_CONFIGS"
        shift
        ;;
    --nvcc)
        echo "Run nvcc"
		RUN_NVCC=1
        shift
        ;;
    -h)
        echo "todo usage"
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

if [ "$DRY_RUN" == "1" ]; then
	exit
fi

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

if [ "$PGO_PROF" == "1" ]; then
   for i in $PGO_PROF_CONFIGS; do
	   echo Compiling polygeist configuration $i for profiling...
	   make cuda_clean &> /dev/null
	   make POLYGEIST_ALTERNATIVES_MODE=pgo_prof CONFIG="$i" TARGET_GPU=1 MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null
	   ALTS=$(seq 0 $(($PGO_ALTERNATIVE_NUM - 1)))
	   for j in $ALTS; do
	       echo Profiling polygeist configuration $i alternative $j...
	       POLYGEIST_PGO_DATA_DIR="/var/tmp/polygeist/pgo/$i/" POLYGEIST_PGO_ALTERNATIVE="$j" \
               ./scripts/run_timed_cuda_big_n_times.sh $PGO_PROF_NRUNS 2>&1 | grep -B2 FAIL
	   done
   done
fi

if [ "$PGO_OPT" == "1" ]; then
   for i in $PGO_OPT_CONFIGS; do
	   echo Compiling polygeist configuration $i pgo...
	   make cuda_clean &> /dev/null
	   POLYGEIST_PGO_DATA_DIR="/var/tmp/polygeist/pgo/$i/" \
           make POLYGEIST_ALTERNATIVES_MODE=pgo_opt CONFIG="$i" TARGET_GPU=1 MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null
	   echo Running polygeist configuration $i pgo...
	   ./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL
   done
fi

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

