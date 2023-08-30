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
cmd_fn = os.path.join(args.output_dir, 'cmd')
cmd_f = open(cmd_fn, 'w')
cmd_f.write(str(args))
cmd_f.close()


# list monad implementation

def start(l):
    return [[]]
def mult(a, b):
    return sum([[x + [y] for y in b] for x in a], [])


dims = ('x', 'y', 'z')

def do_runs(s, get_factors):
    def get_factor_env_str(f):
        return ','.join([str(x) for x in f])

    os.chdir(args.benchmark)
    env = os.environ
    for factors in s:
        block_factors, thread_factors = get_factors(factors)
        print('Testing block factors {} and thread factors {}'.
              format(block_factors, thread_factors))
        subprocess.run(['make', 'clean'],
                       stdout=subprocess.DEVNULL,
                       stderr=subprocess.DEVNULL,
                       )
        env['POLYGEIST_GPU_KERNEL_COARSEN_BLOCKS'] = get_factor_env_str(block_factors)
        env['POLYGEIST_GPU_KERNEL_COARSEN_THREADS'] = get_factor_env_str(thread_factors)
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
                'timing-{}-{}'.format(
                    get_factor_env_str(block_factors), get_factor_env_str(thread_factors))),
            'a')
        for _ in range(args.nruns):
            subprocess.run([args.command],
                           stdout=log,
                           stderr=log,
                           shell=True)
        log.close()


if (args.thread_factors_total != [1] and
    args.block_factors_total != [1]):
    s = [[]]
    for ty in bt:
        key = '{}_factors_total'.format(ty)
        factors = getattr(args, key)
        s = mult(s, factors)

    def get_blockt_threadt(factors):
        return factors[0:1], factors[1:2]
    do_runs(s, get_blockt_threadt)
elif (args.thread_factors_total != [1] and
      args.block_factors_total == [1]):
    s = [[]]
    for dim in dims:
        key = 'block_factors_{}'.format(dim)
        factors = getattr(args, key)
        s = mult(s, factors)
    key = 'thread_factors_total'
    factors = getattr(args, key)
    s = mult(s, factors)

    def get_blockxyz_threadt(factors):
        return factors[0:3], factors[3:4]
    do_runs(s, get_blockxyz_threadt)
elif (args.thread_factors_total == [1] and
      args.block_factors_total != [1]):
    s = [[]]
    key = 'block_factors_total'
    factors = getattr(args, key)
    s = mult(s, factors)
    for dim in dims:
        key = 'thread_factors_{}'.format(dim)
        factors = getattr(args, key)
        s = mult(s, factors)

    def get_blockt_threadxyz(factors):
        return factors[0:1], factors[1:2]
    do_runs(s, get_blockt_threadxyz)
elif (args.thread_factors_total == [1] and
      args.block_factors_total == [1]):
    s = [[]]
    for ty  in bt:
        for dim in dims:
            key = '{}_factors_{}'.format(ty, dim)
            factors = getattr(args, key)
            s = mult(s, factors)

    def get_blockxyz_threadxyz(factors):
        return factors[0:3], factors[3:4]
    do_runs(s, get_blockxyz_threadxyz)
else:
    assert('what?')

exit(0)






if (args.thread_factors_total != [1] or
    args.block_factors_total != [1]):
    s = [[]]
    for ty in bt:
        key = '{}_factors_total'.format(ty, dim)
        factors = getattr(args, key)
        s = mult(s, factors)
    os.chdir(args.benchmark)
    env = os.environ
    for factors in s:
        block_factors = factors[0]
        thread_factors = factors[1]
        print('Testing block factors {} and thread factors {}'.
              format(block_factors, thread_factors))
        subprocess.run(['make', 'clean'],
                       stdout=subprocess.DEVNULL,
                       stderr=subprocess.DEVNULL,
                       )
        env['POLYGEIST_GPU_KERNEL_COARSEN_BLOCKS'] = '{}'.format(
            block_factors)
        env['POLYGEIST_GPU_KERNEL_COARSEN_THREADS'] = '{}'.format(
            thread_factors)
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
                'timing-{}-{}'.format(
                    block_factors, thread_factors)),
            'a')
        for _ in range(args.nruns):
            subprocess.run([args.command],
                           stdout=log,
                           stderr=log,
                           shell=True)
        log.close()

    print(s)
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
