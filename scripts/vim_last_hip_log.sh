#!/bin/bash
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

vim $DIR/../results/hip/log/"$(ls $DIR/../results/hip/log/ -At | head -n1)"
