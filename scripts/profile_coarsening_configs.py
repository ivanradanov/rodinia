#!/usr/bin/env python3

import argparse
import sys
import os
import re
import subprocess
import functools
import socket
from datetime import datetime

print = functools.partial(print, flush=True)

home_dir = os.path.expanduser("~")

parser = argparse.ArgumentParser()
parser.add_argument('--nruns', type=int, default=3)
parser.add_argument('--command', default='./run_big')
parser.add_argument('--target', default='CUDA')
parser.add_argument('--benchmark')
parser.add_argument('--config', default='14')
parser.add_argument('--output_dir')
dims = ('x', 'y', 'z', 'total', )
bt = ('block', 'thread', )
for dim in dims:
    for ty in bt:
        parser.add_argument('--{}_factors_{}'.format(ty, dim), default='1')
args = parser.parse_args()

if args.output_dir is None:
    args.output_dir = os.path.join(
        home_dir,
        'rodinia_results',
        'coarsening_analysis',
        socket.gethostname(),
        os.path.basename(args.benchmark),
        str(datetime.now())
    )

os.makedirs(args.output_dir)
print('Outputting to', args.output_dir)

rodinia_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), '../')

for dim in dims:
    for ty  in bt:
        key = '{}_factors_{}'.format(ty, dim)
        factors = getattr(args, key)
        assert(factors is not None)
        setattr(args, key, [int(x) for x in factors.split(' ')])

print(args)


# list monad implementation

def start(l):
    return [[]]
def mult(a, b):
    return sum([[x + [y] for y in b] for x in a], [])

if (args.thread_factors_total != [1] or
    args.block_factors_total != [1]):
    assert(False and 'TODO impl')
else:

    dims = ('x', 'y', 'z')

    s = [[]]
    for ty  in bt:
        for dim in dims:
            key = '{}_factors_{}'.format(ty, dim)
            factors = getattr(args, key)
            s = mult(s, factors)

    os.chdir(args.benchmark)
    env = os.environ
    for factors in s:
        block_factors = factors[0:3]
        thread_factors = factors[3:6]
        print('Testing block factors {} and thread factors {}'.
              format(block_factors, thread_factors))
        subprocess.run(['make', 'clean'],
                       stdout=subprocess.DEVNULL,
                       stderr=subprocess.DEVNULL,
                       )
        env['POLYGEIST_GPU_KERNEL_COARSEN_BLOCKS'] = '{},{},{}'.format(
            *block_factors)
        env['POLYGEIST_GPU_KERNEL_COARSEN_THREADS'] = '{},{},{}'.format(
            *thread_factors)
        subprocess.run(['make',
                        'CONFIG={}'.format(args.config),
                        'TARGET={}'.format(args.target),
                        'MY_VERIFICATION_DISABLE=1',
                        ],
                       stdout=subprocess.DEVNULL,
                       stderr=subprocess.DEVNULL,
                       )
        log = open(
            os.path.join(
                args.output_dir,
                'timing-{},{},{}-{},{},{}'.format(
                    *block_factors, *thread_factors)),
            'a')
        for _ in range(args.nruns):
            subprocess.run([args.command],
                           stdout=log,
                           stderr=log,
                           shell=True)
        log.close()
