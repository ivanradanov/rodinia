#!/usr/bin/env bash

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

export MY_VERIFICATION_DIR="$DIR/../verification_data/"
export MY_VERIFICATION_HALT_WHEN_INCORRECT=1

mkdir -p "$MY_VERIFICATION_DIR"

BM="$($DIR/cuda_verif_apps.sh)"

"$DIR/run_timed_common.sh" "cuda" "$BM" ./run_verify

