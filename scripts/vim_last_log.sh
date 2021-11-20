#!/bin/bash
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

vim $DIR/../results/cuda/log/"$(ls $DIR/../results/cuda/log/ -At | head -n1)"
