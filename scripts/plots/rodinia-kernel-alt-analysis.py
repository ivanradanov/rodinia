#!/usr/bin/env python3
# coding: utf-8

# In[1]:


import os
import sys
import pandas as pd
pd.set_option('display.max_columns', 500)
import inspect
from scipy.stats import gmean
import statistics
import math
import re
import argparse

figures_dir = os.path.join(os.path.dirname(os.path.realpath(__file__)),'figures')
if not os.path.isdir(figures_dir):
    os.mkdir(figures_dir)

parser = argparse.ArgumentParser(description='Experiment 1 figure')

parser.add_argument('input', nargs='*',
                    help='Benchmark result dir to use')

args = parser.parse_args()


#currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
#parentdir = os.path.dirname(currentdir)
#sys.path.insert(0, parentdir)

def speedup(compiler, dropna=False):
    df2 = df.reset_index()
    dat = df2.loc[df2["compilername"] == compiler]
    dat = dat.drop(columns=["hostname", "compilername"])
    dat = dat.set_index('omp_thread_num')
    # dat = dat[1]
    dat = dat.loc[1].div(dat)
    if dropna:
        dat = dat.dropna()
    return dat


# In[2]:


from plot_timed_cuda import *


# In[3]:


plt.rcParams['figure.figsize'] = [30, 10]
plt.rcParams['figure.dpi'] = 400
plt.rc('font', family='serif', size='5')


# In[4]:



result_dirs = args.input



import argparse
import shlex

result_cmds = {}
for result_dir in result_dirs:
    f = open(result_dir + "/results/cmd")
    data = f.read()
    f.close()
    print("'" + result_dir + "',")
    parser = argparse.ArgumentParser()
    parser.add_argument('--host')
    args, unknown = parser.parse_known_args(shlex.split(data))
    print(args.host)
    print(data)
    result_cmds[result_dir] = (data, args)


# In[5]:


class dotdict(dict):
    __getattr__ = dict.get
    __setattr__ = dict.__setitem__
    __delattr__ = dict.__delitem__
    
cuda_a100_arch = dotdict({
    'cache_line_size': 128,
    'warp_size': 32,
    'max_block_size': 1024,
    # see https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#arithmetic-instructions
    'float_op_multipliers': {8: 0.25, 16: 0.5, 32: 1, 64: 2},
    'int_op_multipliers': {1: 0.25, 2: 0.5, 4: 1, 8: 2},
    # TODO not sure which one is correct, 49152 is max per block and I think registers share the memory 
    # for shared mem allocation so it varies
    'max_shared_mem_per_sm': 49152,
    #'max_shared_mem_per_sm': 166912,
    'max_threads_per_sm': 2048,
    'max_regs_per_sm': 65536,
    'register_allocation_unit_size': 256,
})
    
def get_arch_for_results(results):
    if 'memkf02' in result_cmds[results]:
        return cuda_a100_arch
    else:
        # TODO
        return cuda_a100_arch


# In[6]:


def estimate_occupancy(arch, statistics):
    blockSize = statistics['blockSize']
    regsPerThread = statistics['numRegsPerThread']
    sharedMemUsed = statistics['sharedMemSize']
    regsRequiredForWarp = int(math.ceil(regsPerThread * arch.warp_size / arch.register_allocation_unit_size) * arch.register_allocation_unit_size)
    warpsPerBlock = int(math.ceil(blockSize / arch.warp_size))
    maxActiveWarpsPerSM = int(math.floor((arch.max_regs_per_sm / regsRequiredForWarp) / warpsPerBlock)) * warpsPerBlock
    activeThreads = maxActiveWarpsPerSM * arch.warp_size
    activeBlocks = int(math.floor(activeThreads / blockSize))
    
    return min(
        int(arch.max_shared_mem_per_sm / (sharedMemUsed if sharedMemUsed != 0 else 1)),
        int(arch.max_threads_per_sm / blockSize),
        activeBlocks,
    )

def floatOrNone(f):
    return None if f == 'unk' else float(f)
def intOrNone(i):
    return None if i == 'unk' else int(i)

# 4/x:unk|y:unk|z:unk|/0:65536;
def fixMemOps(i):
    m = re.findall(r'([\-0-9/xyzunk:|]*);', i)
    def fixMemOp(i):
        m = re.search(r'([0-9]*)/x:([\-0-9unk]*)\|y:([\-0-9unk]*)\|z:([\-0-9unk]*)\|/([0-9]*):([0-9]*)', i)
        t = tuple([intOrNone(x) for x in m.groups()])
        return ((t[0], (t[1], t[2], t[3]), t[4]), t[5])
    a = [fixMemOp(x) for x in m]
    a = {k: v for k, v in a}
    return a

def fixArithOps(i):
    m = re.findall(r'([0-9]*):([0-9]*);', i)
    val = {int(k):int(v) for (k,v) in m}
    return val

def fixBlockDims(i):
    if i == 'unk':
        return None
    else:
        m = re.search(r'x:([0-9]*);y:([0-9]*);z:([0-9]*);', i)
        return tuple([int(x) for x in m.groups()])

# Number of cache lines that a warp will request
def estimate_cache_line_transactions(arch, statistics, memOpType):
    memOps = statistics[memOpType]
    blockDims = statistics['blockDims']
    if blockDims is None:
        blockDims = (1024, 1, 1)
    cache_line_transactions = 0.0
    for ty, numPerBlock in memOps.items():
        numBytes = ty[0]
        strides = ty[1]
        memSpace = ty[2]
        
        # Ignore shared mem for now
        if memSpace == 3:
            continue
            
        warpDims = [1, 1, 1]
        warpDims[0] = min(blockDims[0], arch.warp_size)
        warpDims[1] = min(blockDims[1], arch.warp_size / warpDims[0])
        warpDims[2] = min(blockDims[2], arch.warp_size / (warpDims[0] * warpDims[1]))
        warpSize = warpDims[0] * warpDims[1] * warpDims[2]
        assert(0 < warpSize and warpSize <= arch.warp_size)
        blockSize = blockDims[0]  * blockDims[1] * blockDims[2]
        assert(0 < blockSize and blockSize <= arch.max_block_size)
        
        def otz(i):
            return 0 if i == 1 else i
        def zto(i):
            return 1 if i == 0 else i
        def utt(i):
            return 1024 if i is None else i
        
        stride = utt(strides[0]) + otz(warpDims[0]) * (utt(strides[1]) + otz(warpDims[1]) * utt(strides[2]))
        # numPerBlock is the estimated number of mem ops per block
        numPerThread = float(numPerBlock) / blockSize
        cache_lines = zto(min(arch.warp_size, arch.warp_size * stride * numBytes / arch.cache_line_size))
        cache_line_transactions += cache_lines * numPerThread
    return cache_line_transactions

def getBlockSize(statistics):
    blockDims = statistics['blockDims']
    if blockDims is None:
        blockDims = (1024, 1, 1)
    blockSize = blockDims[0] * blockDims[1] * blockDims[2]
    return blockSize
    
# Maximum number of outstanding memory accesses at any point of execution on a single SM (in bytes)
def estimate_achieved_memory_bandwidth(arch, statistics, memOpType):
    blockDims = statistics['blockDims']
    numBlocksPerSM = statistics['occupancyNumBlocks']
    numWarpsPerBlock = getBlockSize(statistics) / arch.warp_size
    numWarpsPerSM = numBlocksPerSM * numWarpsPerBlock
    # occupancy is in number of warps on an SM
    achieved_memory_bandwidth = (
        numWarpsPerSM *
        arch.cache_line_size *
        estimate_cache_line_transactions(arch, statistics, memOpType)
    )
    return achieved_memory_bandwidth


def estimate_achieved_memory_bandwidth_ratio(arch, memOps, blockDims):
    # occupancy is in number of warps on an SM
    ratio = estimate_achieved_memory_bandwidth(arch, memOps, blockDims) / a
    return ratio

def aggregateArithOps(ops, multipliers):
    agg = 0.0
    for k,v in ops.items():
        agg +=  v * multipliers[k]
    return agg

def aggregateMemOps(ops):
    agg = 0
    for ty, numPerBlock in memOps.items():
        agg += numPerBlock
    return agg

def estimate_arithmetic_intensity1(arch, statistics, onlyFlops = False):
    blockDims = statistics['blockDims']
    floatOps = statistics['floatOps']
    intOps = statistics['intOps']
    
    cache_line_t = estimate_cache_line_transactions(arch, statistics, 'loads')
    if cache_line_t == 0:
        #print("why is loadedBytes 0?", statistics['loads'])
        cache_line_t = 1
        
    ops = 0
    ops += aggregateArithOps(floatOps, arch.float_op_multipliers)
    if not onlyFlops:
        ops += aggregateArithOps(intOps, arch.int_op_multipliers)
    
    if blockDims is None:
        blockDims = (1024, 1, 1)
    blockSize = blockDims[0]  * blockDims[1] * blockDims[2]
    assert(0 < blockSize and blockSize <= arch.max_block_size)
    
    # Bytes loaded per block
    loadedBytes = (blockSize / arch.warp_size) * arch.cache_line_size * cache_line_t
    
    intensity = ops / loadedBytes
    
    # To estimate arithmetic intensity for the purposes of latency between loads and arith ops -
    # generally, flops depend on memory loads so there is no problem counting them but a lot of the
    # intops are index computation that does not depend on mem loads - TODO we must add capabilities
    # to count dependent ops to Polygeist
    
    return intensity

def estimate_arith_mem_op_ratio(arch, statistics, onlyFlops = False):
    blockDims = statistics['blockDims']
    floatOps = statistics['floatOps']
    intOps = statistics['intOps']
    
    ops = 0
    ops += aggregateArithOps(floatOps, arch.float_op_multipliers)
    if not onlyFlops:
        ops += aggregateArithOps(intOps, arch.int_op_multipliers)
        
    memOps = aggregateMemOps(statistics['loads'])
    
    ratio = ops / memOps
    
    return ratio


# In[7]:


import csv
import io

garbage_in = False

kernel_params = {}

def get_target_gpu(result_dir, target):
    hostname = result_cmds[result_dir][1].host
    if hostname == 'memkf02':
        return 'A100'
    elif hostname == 'memkf01':
        return 'MI210'
    elif hostname == 'supercomp01a':
        if target == 'CUDA':
            return 'A4000'
        elif target == 'AMDGPU':
            return 'RX6800'
    return 'UNKNOWN'

for result_dir in result_dirs:
    arch = get_arch_for_results(result_dir)
    compilation_logs = glob.glob(result_dir + '/results/compilation/polygeist_pgo_prof-*-*.log')
    for compilation_log in compilation_logs:
        m = re.search(r'polygeist_pgo_prof-([a-zA-Z]*)-([0-9]*).log', compilation_log)
        target = m.group(1)
        target_gpu = get_target_gpu(result_dir, target)
        print(result_dir, target, target_gpu)
        config = m.group(2)
        f = open(compilation_log)
        log = f.read()
        f.close()
        m = re.findall(r'polygeistKernelInfo: (.*loc.*)\n', log)
        reader = csv.reader(m, delimiter=',', quotechar='"')
        for row in reader:
            mlir_statistics = row[2]
            f = io.StringIO(mlir_statistics)
            reader = csv.reader(f, delimiter=',')
            split_mlir_statistics = list(reader)[0]
            mlir_statistics_dict = {}
            for stat in split_mlir_statistics:
                if stat.strip() == "":
                    continue
                m = re.search(r'(.*)=(.*)', stat)
                mlir_statistics_dict[m.group(1)] = m.group(2)
                
            statistics = mlir_statistics_dict
            
            def fix_statistic(name, f):
                global statistics
                val = statistics[name]
                statistics[name] = f(val)
            fix_statistic('blockDims', fixBlockDims)
            fix_statistic('intOps', fixArithOps)
            fix_statistic('floatOps', fixArithOps)
            fix_statistic('loads', fixMemOps)
            fix_statistic('stores', fixMemOps)
            fix_statistic('thread_factor', int)
            fix_statistic('block_factor', int)
            
            # POPULATE LLVM + GPU BINARY STATISTICS
            i = 3
            def add_statistic(name, f = None):
                global i
                global row
                global statistics
                val = row[i]
                if f is not None:
                    val = f(val)
                statistics[name] = val
                i+=1
            #print(row)
            add_statistic('localMemSize', int)
            add_statistic('occupancyNumBlocks', int)
            add_statistic('numRegsPerThread', lambda x: int(x) if int(x) > 0 else 1)
            add_statistic('blockSize', int)
            add_statistic('sharedMemSize', int)
            add_statistic('constMemSize', int)
            
            # Assume 1024 block size for unknown kernels
            if statistics['blockSize'] == 0:
                statistics['blockSize'] = 1024
            # TODO estimate occupancy based on this
            # TODO our own occupancyNumBlocks
            estimatedOccupancy = estimate_occupancy(arch, statistics)
            if statistics['occupancyNumBlocks'] == 0:
                statistics['occupancyNumBlocks'] = estimatedOccupancy
            #else:
            #    if estimatedOccupancy != statistics['occupancyNumBlocks']:
            #        #print(statistics)
            #        print("occupancy {}, {}".format(estimatedOccupancy, statistics['occupancyNumBlocks']))
            #        #assert(False)
            
            statistics['llvmStatistics'] = row[i:]
            
            statistics['estimatedArithIntensityFloat'] = estimate_arithmetic_intensity1(
                arch, statistics,
                True)
            statistics['estimatedArithIntensityFloatInt'] = estimate_arithmetic_intensity1(
                arch, statistics,
                False)
            statistics['achievedOutstandingLoads'] = estimate_achieved_memory_bandwidth(
                arch,
                statistics,
                'loads')
            statistics['achievedOutstandingStores'] = estimate_achieved_memory_bandwidth(
                arch,
                statistics,
                'stores')
            statistics['arithMemOpRatioFloat'] = estimate_arithmetic_intensity1(
                arch, statistics,
                True)
            statistics['arithMemOpRatioFloatInt'] = estimate_arithmetic_intensity1(
                arch, statistics,
                False)
            
            key = (target_gpu, config, row[0], int(row[1]))
            kernel_params[key] = statistics

            f.close()
        
        # For each compilation log we _should_ have a corresonding timing pgo dir
        pgo_dir = result_dir + '/results/pgo/' + target + '/' + config + '/'
        pgo_files = glob.glob(pgo_dir + '*loc*')
        #print(pgo_files)
        #print(kernel_params.keys())
        for fn in pgo_files:
            m = re.search('.*\/(.*loc.*)', fn)
            kernel_name = m.group(1)
            timings = {}
            f = open(fn)
            reader = csv.reader(f, delimiter=' ')
            for row in reader:
                kernel_version = row[0]
                kernel_time = float(row[1])
                if kernel_version in timings:
                    timings[kernel_version].append(kernel_time)
                else:
                    timings[kernel_version] = [kernel_time]
                        
            
            for k, v in timings.items():
                key = (target_gpu, config, kernel_name, int(k))
                if key in kernel_params:
                    kernel_params[key]['timings'] = v
                else:
                    print("NO KEY", key)
                    #del kernel_params[key]
            f.close()
                

import statistics

#display(kernel_params)

todelete = []
for k in kernel_params:
    if 'timings' not in kernel_params[k]:
        print("NO DATA FOR ", k)
        todelete.append(k)
for k in todelete:
    del kernel_params[k]
for k in kernel_params:
    timings = kernel_params[k]['timings']
    
    mean = statistics.mean(timings)
    median = statistics.median(timings)
    variance = statistics.variance(timings)
    kernel_params[k]['timing'] = median
    kernel_params[k]['raw_timings'] = timings
    kernel_params[k]['num_timings'] = len(timings)
    kernel_params[k]['timing_variance'] = variance / mean
    del kernel_params[k]['timings']
    
#display(kernel_params)
            


# In[ ]:





# In[8]:


index_cols = ['gpu', 'config', 'kernel']

# normalize such that the best perf for a single kernel within
# the same gpu within the same configuration, with best performing = 1.0
# TODO maybe normalize over different configurations too? i.e. level=[0,2]
df_ = pd.DataFrame.from_dict(kernel_params, orient='index')
df_.rename_axis( ('gpu', 'config', 'kernel', 'alternative'), inplace=True)


df_['regsPerBlock'] = df_['numRegsPerThread'] * df_['blockSize']
df_['regsPerSM'] = df_['occupancyNumBlocks'] * df_['regsPerBlock']
df_['total_factor'] = df_['block_factor'] * df_['thread_factor']
df_['sharedMemPerSM'] = df_['sharedMemSize'] * df_['occupancyNumBlocks']

# Add timing of original kernel to all alternatives (rows)
def getoriginal(x):
    #print(x.index)
    #print(x)
    index = x[(x['thread_factor'] == 1) & (x['block_factor'] == 1)].index
    original = x.loc[index]['timing']
    original = original[0]
    original = pd.Series(index=x.index.droplevel([0,1,2]), data=([original] * len(x)))
    #print(original)
    return original
originals = df_.copy()
kernel_group = ['gpu', 'config', 'kernel']
alternative_group = ['gpu', 'config', 'kernel', 'alternative']
_ = df_.groupby(kernel_group).apply(getoriginal).rename('original_timing').reset_index()
_.rename(columns = {'level_3': 'alternative'}, inplace=True)
_.set_index(alternative_group, inplace=True)
originals = originals.merge(_, on=alternative_group)
df_ = originals

mins = df_.groupby(['gpu', 'config', 'kernel'])['timing'].transform('min')
normalized = mins / df_['timing']
df = df_.copy()
df['norm_timing'] = normalized
df['original_norm_timing'] = df['original_timing'] / df['timing']
#df.drop(columns=['original_timing'], inplace=True)

df['original_norm_timing_only_thread'] = df['original_norm_timing']
df.loc[df.loc[df['block_factor'] != 1.0].index, 'original_norm_timing_only_thread'] = 1.0
df['original_norm_timing_only_block'] = df['original_norm_timing']
df.loc[df.loc[df['thread_factor'] != 1.0].index, 'original_norm_timing_only_block'] = 1.0


def get_only_thread(df):
    df_only_thread  = df.drop(df[df['block_factor'] != 1.0].index)
    mins = df_only_thread.groupby(level=[0,1,2])['timing'].transform('min')
    normalized = mins / df_only_thread['timing']
    df_only_thread['norm_timing'] = normalized
    df_only_thread['original_norm_timing'] = df_only_thread['original_timing'] / df_only_thread['timing']
    return df_only_thread


# In[9]:


#display(df.reset_index(level=['alternative']).groupby(['gpu', 'config','kernel']).apply(len))
#display(df.reset_index(level=['alternative']).groupby(['gpu', 'config','kernel']).apply(len).groupby(['gpu', 'config']).apply(len))
#display(df.reset_index(level=['alternative']).groupby(['gpu', 'config','kernel']).transform(min))


# In[10]:


# with pd.option_context('display.min_rows', 50, 'display.max_columns', None):  # more options can be specified also
#     display(df)


# In[11]:


# Clean up data by removing kernels with too much timing variance or too small runtime
variance_limit = 0.1
timing_limit = 0.0001

maxs = df.groupby(['gpu', 'config', 'kernel'])['timing_variance'].transform('max')
df['timing_variance_max_for_kernel'] = maxs
mins = df.groupby(['gpu', 'config', 'kernel'])['timing'].transform('min')
df['timing_min_for_kernel'] = mins

_ = list(df[(df['timing_variance_max_for_kernel'] >= 0) & (df['timing_variance_max_for_kernel'] < variance_limit)]['original_norm_timing'])
print(max(_))
print(len(_))


low_time = df.loc[df['timing_min_for_kernel'] < timing_limit].index
# display(list(low_time))
df.drop(df.loc[df['timing_min_for_kernel'] < timing_limit].index, inplace=True)
print(len(df))
#variant = df.loc[df['timing_variance_max_for_kernel'] > variance_limit].index
#display(list(variant))
#df.drop(df.loc[df['timing_variance_max_for_kernel'] > variance_limit].index, inplace=True)
#print(len(df))



# In[12]:


# NO MORE df changes below


# In[13]:


df


# In[14]:


import os
import shutil
def getuniqfn(filename, ext):
    original = '{}.{}'.format(filename, ext)
    i = 0
    while os.path.exists('{}{:d}.{}'.format(filename, i, ext)):
        i += 1
    if os.path.exists(original):
        shutil.copyfile(original, '{}{:d}.{}'.format(filename, i, ext))
    return original


# In[15]:




# In[16]:
#
#
# import seaborn as sns
# idx = df.groupby(index_cols[:3])['timing'].transform(min) == df['timing']
# data = np.array(df[idx]['block_factor'])
#
# data = data[data != 1]
# fig, ax = plt.subplots()
#
# d = np.diff(np.unique(data)).min()
# left_of_first_bin = data.min() - float(d)/2
# right_of_last_bin = data.max() + float(d)/2
# ax.hist(data, np.arange(left_of_first_bin, right_of_last_bin + d, d), edgecolor='white')
# ax.set_xticks(range(2,11))
#


# In[17]:


# display(df.loc[('A100', '15', '+scr+ivan+src+rodinia+cuda+gaussianloc("gaussian.cu":390:3)_Z10ForwardSubv.func.0', slice(None))][['block_factor', 'thread_factor', 'original_norm_timing']])
# display(df.loc[('A100', '15', '+scr+ivan+src+rodinia+cuda+laplace3d-cudaloc("main.cu":94:5)main.func.1', slice(None))][['block_factor', 'thread_factor', 'original_norm_timing']])
# display(df.loc[('A100', '15', '+scr+ivan+src+rodinia+cuda+minisweep-cudaloc("main.cu":344:7)main.func.3', slice(None))][['block_factor', 'thread_factor', 'original_norm_timing']])
# display(df.loc[('A100', '15', '+scr+ivan+src+rodinia+cuda+particles-cudaloc("particles.cu":113:3)_Z7collideP6float4S0_S0_PjS1_S1_RK11simParams_tjj.func.0', slice(None))][['block_factor', 'thread_factor', 'original_norm_timing']])

#df.loc[('A100', '15', '+scr+ivan+src+rodinia+cuda+hotspotloc("hotspot.cu":248:13)_Z17compute_tran_tempPfPS_iiiiiiii.func.0', slice(None))]


# In[18]:


from scipy.stats import gmean
def plot_aall(df, speedup_threshold = 1.01, title=None):
    groupby = df.groupby(index_cols[:1])
    lengroupby = len(groupby)
    fig, ax = plt.subplots(lengroupby, figsize=(6.5, 2.5 * lengroupby))
    if lengroupby == 1:
        ax = [ax]
    for i, (group, ax) in enumerate(zip(groupby, ax)):
        gpu = group[0]
        df = pd.DataFrame(group[1])
        df = df.copy()
        def plot_df(df, ax):
            a = pd.DataFrame(df.groupby(index_cols[1:])[['original_norm_timing','original_norm_timing_only_block', 'original_norm_timing_only_thread']].apply(max)).sort_values('original_norm_timing')
            def print_gmean(a):
                geomean = gmean(list(a['original_norm_timing']))
                geomean_only_thread = gmean(list(a['original_norm_timing_only_thread']))
                geomean_only_block = gmean(list(a['original_norm_timing_only_block']))
                print('number:', len(a))
                print('geomean:', geomean)
                print('geomean_only_thread:', geomean_only_thread)
                print('geomean_only_block:', geomean_only_block)
            print_gmean(a)
            a = a.drop(a[a['original_norm_timing'] < speedup_threshold].index)
            #print_gmean(a)
            #with pd.option_context('display.min_rows', 1, 'display.max_rows', None):  # more options can be specified also
            #    display(a)
            #a.plot.bar(ax=ax)
            x = np.arange(0, len(a))
            #ax.bar(x=list(range(len(a['original_norm_timing_only_thread']))),
            #       bottom=list(a['original_norm_timing_only_thread']),
            #       height=list(a['original_norm_timing'] - a['original_norm_timing_only_thread']),
            #       color='#bbb',
            #       linewidth=0,
            #       width=1.0,
            #       )
            ax.plot(list(a['original_norm_timing']), lw=0, fillstyle='none', marker='o', label='block and thread coarsening (this work)')
            ax.plot(list(a['original_norm_timing_only_thread']), lw=0, fillstyle='none', marker='x', label='thread coarsening only (prior work)')
            #ax.plot(list(a['original_norm_timing_only_block']), lw=0, fillstyle='none', marker='^', label='block coarsening only')
            ax.set_xticks(x)
            #ax.grid(True)
            #ax.scatter(y=a['original_norm_timing'], x=x, s=80, facecolor='none')
            #ax.plot(y=a['original_norm_timing'], x=x, marker='o', markerfacecolors='none')
            #ax.plot(y=a['original_norm_timing_only_thread'], x=x, marker='x')

        #df['original_norm_timing_only_thread'] = df['original_norm_timing']
        #df.loc[df.loc[df['block_factor'] != 1.0].index, 'original_norm_timing_only_thread'] = 1.0
        plot_df(df, ax)
        ax.axhline(1.0, color='gray', label='no coarsening')
        ax.set_yscale('log')
        yticks = [1,2,3,4,5,6]
        yticklabels = [str(i) for i in yticks]
        ax.set_yticks(yticks)
        ax.set_yticklabels(yticklabels)


        ax.set_xticklabels([])
        #ax.set_yscale('log')
        #ax.set_yticks(np.arange(0, 3, step=0.5))
        ax.set_ylim((0.8, math.ceil(max(list(df['original_norm_timing'])))))
        ax.set_ylabel('Relative speedup (log)')
        if i == lengroupby - 1:
            ax.set_xlabel('Kernels')
        ax.legend(loc='upper left')
        if title:
            ax.set_title(title)
        if lengroupby != 1:
            ax.set_title(gpu)
plot_aall(df, title='Sorted by block+thread coarsening')
plt.savefig(getuniqfn(os.path.join(figures_dir, 'kernel_speedup_thread_vs_block_coarsening'), 'pdf'), bbox_inches='tight')
