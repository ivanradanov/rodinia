#!/usr/bin/env python3

import argparse
import sys
import os
import re
import subprocess
import functools

print = functools.partial(print, flush=True)

parser = argparse.ArgumentParser()
parser.add_argument('--nruns', type=int)
parser.add_argument('--command')
parser.add_argument('--compilation_log')
parser.add_argument('--only_block_coarsened', type=bool, default=False)

args = parser.parse_args()

rodinia_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), '../')
print(args)

clf = open(args.compilation_log)
cllines = clf.readlines()

benches = {}
def add_bench(benches, bench, alts, block_coarsened):
    if args.only_block_coarsened and not block_coarsened:
        return

    bench = os.path.basename(bench)
    if alts in benches:
        benches[alts].append(bench)
    else:
        benches[alts] = [bench]

cur_bench = None
alts = 0
block_coarsened = False
for line in cllines:
    m = re.search(r"make\[1\]: Entering directory '(.*)'", line)
    if m is not None:
        if cur_bench is not None:
            add_bench(benches, cur_bench, alts, block_coarsened)

        cur_bench = m.group(1)
        alts = 0
        block_coarsened = False

        continue

    m = re.search(r"Generated ([0-9]*) alternatives", line)
    if m is not None:
        alts_gend = int(m.group(1))
        alts = max(alts_gend, alts)
        continue

    m = re.search(r"polygeistKernelInfo.*block_factor=([0-9]*)", line)
    if m is not None:
        block_factor = int(m.group(1))
        if block_factor != 1:
            block_coarsened = True

if cur_bench is not None:
    add_bench(benches, cur_bench, alts, block_coarsened)

clf.close()

print('Found {} benchmarks with {} alts'.format(len(sum(benches.values(), [])), list(benches.keys())))

env = os.environ
for alts, benches in benches.items():
    print('Profiling benchmarks with {} alts: {}'.format(alts, benches))

    for alt in range(alts):
        print('Profiling alt {}'.format(alt))
        env['POLYGEIST_PGO_ALTERNATIVE'] = str(alt)

        for i in range(args.nruns):
            bms = " ".join(benches)
            subprocess.run(
                [os.path.join(rodinia_dir, 'scripts', 'run_timed_common.sh'),
                 'cuda', bms, args.command],
                env = env)
