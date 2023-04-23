#!/usr/bin/env bash

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

BM="$($DIR/cuda_apps.sh)"

"$DIR/run_timed_common.sh" "cuda" "$BM" ./run_big
