#!/usr/bin/env python3
# coding: utf-8

# In[32]:


import os
import sys
import pandas as pd
import inspect
from scipy.stats import gmean
import statistics
import math
import argparse
import matplotlib.pyplot as plt
import matplotlib
matplotlib.use('Agg')

figures_dir = os.path.join(os.path.dirname(os.path.realpath(__file__)),'figures')
if not os.path.isdir(figures_dir):
    os.mkdir(figures_dir)

parser = argparse.ArgumentParser(description='Experiment 2/3 figure')

parser.add_argument('input', nargs='*',
                    help='Benchmark result dir to use')

args = parser.parse_args()

# currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
# parentdir = os.path.dirname(currentdir)
# sys.path.insert(0, parentdir)

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

debug_plots = False


# In[2]:




# In[3]:


from plot_timed_cuda import *


# In[4]:



cuda_results = args.input

result_cmds = {}
for result_dir in cuda_results:
    path = result_dir + "/results/cmd"
    print("'" + result_dir + "',")
    if os.path.exists(path):
        f = open(path)
        data = f.read()
        f.close()
        print(data)
        result_cmds[result_dir] = data
    else:
        print('path {} does not exist'.format(path))


# In[5]:


def get_conf(i, commit = None, pgo_mode = None, target=None):
    if commit is None:
        commit = ''
    else:
        commit = commit + '.'
    if pgo_mode is None:
        pgo_mode = ''
    else:
        pgo_mode = '.' + pgo_mode
    if target is None:
        target = ''
    else:
        target = target + '.'
            
    confs = {
        1: 'polygeist.gpu',
        2: 'polygeist.gpu.raise-scf-to-affine.scal-rep=0',
        11: 'polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1',
        8: 'polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops',
        12: 'polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1',
        311: 'polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.gpu-kernel-enable-coalescing-friendly-unroll=1',
        312: 'polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1.gpu-kernel-enable-coalescing-friendly-unroll=1',
    }
    return commit + target + confs[i] + pgo_mode


# In[6]:


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


# In[7]:


def non_empty(files):
    return [f for f in files if os.stat(f).st_size != 0]
timing_summaries_mincut = (
        sum([get_timing_summaries(non_empty(glob.glob(cuda_results + '/results/cuda/out/*.out'))) for cuda_results in cuda_results], [])
        + sum([get_timing_summaries(non_empty(glob.glob(cuda_results + '/results/hip/out/*.out'))) for cuda_results in cuda_results], [])
)


# In[8]:


df = pd.DataFrame([{**d[0], **d[1]} for d in timing_summaries_mincut])


# In[9]:


hostname = df.loc[0]['hostname']
commit = [x for x in list(df.loc[:,'compilername']) if 'polygeist' in x][0].split('.')[0]
threads = df.loc[0]['omp_thread_num']
print(hostname, commit, threads)


# In[10]:


df = df.groupby(['hostname', 'compilername', 'omp_thread_num']).agg(pd.Series.tolist)


# In[11]:


#nw_df = pd.DataFrame([{**d[0], **d[1]} for d in newnw]).groupby(['hostname', 'compilername', 'omp_thread_num']).median()
# df = df.drop(columns=["nn euclid", "nn total", "gaussian "])
# df = df.drop(columns=["gaussian ", "nn total", "dwt2d c_CopySrcToComponents", "dwt2d fdwt53Kernel"])
#df = df.drop(columns=["nn total", "heartwall ", "lavaMD "])
#df = df.drop(columns=["particlefilter naive", "particlefilter float"])
#df = df.drop(columns=["srad_v1 prepare", "nn euclid", "nn total", "heartwall ", "lavaMD ", "gaussian ", "backprop layerforward" ], errors='ignore')

#df = df.drop(columns=["srad_v1 total", "srad_v1 srad", "srad_v1 srad2", "srad_v1 compress", "srad_v1 reduce", "srad_v1 prepare"])


# hostname = " memkf03.m.gsic.titech.ac.jp"
# threads = 16

# df.update(nw_df, overwrite=True)
df = df.rename(columns={"streamclusterkernel_compute_cost": "streamcluster", 
                        "srad_v2srad_cuda_1":"srad_v2 kern1","srad_v2srad_cuda_2":"srad_v2 kern2",
                        "nw_total":"nw total", "nwneedle_cuda_shared_1":"nw kern1", "nwneedle_cuda_shared_2":"nw kern2",
                        "dwt2dc_CopySrcToComponents":"dwt2d srcToComp", "dwt2dfdwt53Kernel": "dwt2d fdwt53",
                        'backproplayerforwardcu': 'backprop l_f',
                        'backpropadjust_weights': 'backprop a_w'
                       })
#print(df)

measurements_polygeist_kernels_with_barriers = [
        'b+tree findRangeK',
        'b+tree findK',
        'backprop adjust_weights', 'backprop layerforward',
        'dwt2d srcToComp', 'dwt2d fdwt53',
        'hotspot ',
        #'lavaMD ',
        'lud ',
        'nw kern1', 'nw kern2', 'nw total',
        'particlefilter float', 'particlefilter naive',
        'pathfinder ',
        'srad_v1 reduce',
        'srad_v1 total',
        'srad_v2 kern1', 'srad_v2 kern2',
        'srad_v2 total'
        ]
df = df.rename(columns={a:(a.strip()+"*") for a in measurements_polygeist_kernels_with_barriers})
df = df.reindex(sorted(df.columns), axis=1)


# In[12]:


pd.options.display.max_columns = 250 #Changes the number of columns diplayed (default is 20)
pd.options.display.max_rows = 250 #Changes the number of rows diplayed (default is 60)
pd.options.display.max_colwidth = 250 #Changes the number of characters in a cell so that the contents don't get truncated (default is 50)


# In[13]:


#df = df.drop(df.loc[df.loc['compilername'].contains('pgo_prof')
df = df.drop([x for x in list(df.index) if 'pgo_prof' in x[1]])
cols = df.columns.tolist()
cols.reverse()
df = df[cols]
df


# In[14]:


df_ = df.applymap(lambda x: [y for y in x if not math.isnan(y)])
print(df_)
dfstdev = df_.applymap(lambda x: math.nan if len(x) == 0 or math.isnan(x[0]) else statistics.pstdev(x) / statistics.mean(x))
dfmed = df_.applymap(lambda x: math.nan if len(x) == 0 else statistics.median(x))


# In[15]:


dfmed


# In[16]:


dfstdev.style.background_gradient(axis=None).set_properties()


# In[17]:


# Clean up data by removing kernels with too much timing variance or too small runtime
variance_limit = 0.1
timing_limit = 0.0001

for column in dfmed.head():
    if min(list(dfmed[column])) < timing_limit:
        dfmed.drop(columns=[column])
        dfstdev.drop(columns=[column])
        print('runtime too short, dropping {}'.format(column))

#maxs = df.groupby(['gpu', 'config', 'kernel'])['timing_variance'].transform('max')
#df['timing_variance_max_for_kernel'] = maxs
#mins = df.groupby(['gpu', 'config', 'kernel'])['timing'].transform('min')
#df['timing_min_for_kernel'] = mins
#
#_ = list(df[(df['timing_variance_max_for_kernel'] >= 0) & (df['timing_variance_max_for_kernel'] < variance_limit)]['original_norm_timing'])
#print(max(_))
#print(len(_))
#
#
#df.drop(df.loc[df['timing_variance_max_for_kernel'] > variance_limit].index, inplace=True)
#df.drop(df.loc[df['timing_min_for_kernel'] < timing_limit].index, inplace=True)
#print(len(df))



# In[18]:


to_remove = ["srad_v2srad_cuda_1", "srad_v2srad_cuda_2", "srad_v2total"]
to_remove = ["srad_v2 kern1*", "srad_v2 kern2*","srad_v2total"]
to_remove = ["srad_v2 kern1*", "srad_v2 kern2*","srad_v2total", "dwt2d fdwt53*", "dwt2d srcToComp*",
             'nneuclid',
             'srad_v1total', 'nw total*']
dfmed2 = dfmed.drop(columns=to_remove, errors='ignore')
dfstdev2 = dfstdev.drop(columns=to_remove, errors='ignore')

#dfmed2.loc[(hostname, "nvcc", threads)]


# In[19]:


plt.rcParams['figure.figsize'] = [30, 10]
plt.rcParams['figure.dpi'] = 400
plt.rc('font', family='serif', size='8')
plt.rcParams['figure.facecolor'] = (1.0, 1.0, 1.0, 1.0) # non-transparent bg


# In[20]:


# DONE WITH DATA PREP


# In[21]:


plt.rcParams['figure.figsize'] = [30, 10]
plt.rcParams['figure.dpi'] = 400
plt.rc('font', family='serif', size='8')


# In[33]:


def drawcomparison(dfmed, dfstdev, baseline, configs, figsize=(5, 1.42), ylim = None, log = True, hostname=hostname,
                  color=None, colorline='gray'):
    baseline = (baseline[1], baseline[0])
    fig, ax = plt.subplots(figsize=figsize)
    # fig.subplots_adjust(hspace=0.05)  # adjust space between axes
    #ax, right = fig.subplots(1, 2, gridspec_kw={"width_ratios":[1.8, 1]})

    threads = dfmed.loc[(hostname, baseline[0], slice(None))].index[0]
    print('baseline:')
    print(dfmed.loc[(hostname, baseline[0], threads)])
    for k, v in configs.items():
        print('config {}:'.format(k))
        print(dfmed.loc[(hostname, v, threads)])
        

    opt = pd.DataFrame({
        key: (dfmed.loc[(hostname, baseline[0], threads)] / dfmed.loc[(hostname, val, threads)]) for key, val in configs.items()})

    if debug_plots:
        errs = pd.DataFrame({
            key: (dfstdev.loc[(hostname, val, threads)]) for key, val in configs.items()})
    else:
        errs = None

    [(print(k, v1), print(gmean(v.dropna()))) for (k, v), v1 in zip(opt.items(), configs.values())]
    #[ax.text(0,0,str(gmean(v.dropna())))  for (k, v), v1 in zip(opt.items(), configs.values())]
    print()
    [(print(k, v1), print(v.dropna())) for (k, v), v1 in zip(opt.items(), configs.values())]
    #print(gmean(opt['']))
    #print(gmean(opt))

    opt.plot.bar(ax=ax, log=log, zorder=2, width=0.7, yerr=errs, color=color)
    # opt.plot.bar(ax=axs[1])

    #ax.set_ylim(.5, 3.0)  # outliers only
    #yticks = [0.5, 0.75, 1.0, 1.5, 2.0, 3.0]
    #ax.set_yticks(yticks)
    #ax.set_yticks(yticks, labels=map(str, yticks))
    #ax.set_yticks([],[],minor=True)
    ax.grid(axis='y', zorder=1)
    if ylim != None:
        ax.set_ylim(ylim[0], ylim[1])  # most of the data

    #ax.set_ylabel('Speedup' + (' (log)' if log else '') + ' over ' + baseline[1])
    ax.set_ylabel('Relative speedup' + (' (log)' if log else ''))
    ax.axhline(1.0, color=colorline, label = baseline[1])
    ax.set_xticklabels(ax.get_xticklabels(), rotation = 35, horizontalalignment='right', verticalalignment='top')

    lgd = ax.legend(
        loc='upper center', bbox_to_anchor=(0.50, 1.34),
        fancybox=True, shadow=True, ncol=6)
    return fig, ax



    #plt.savefig('rodinia_speedups.pdf', bbox_extra_artists=(lgd,lgdright), bbox_inches='tight')
    
def drawcomparison_broken(dfmed, dfstdev, baseline, configs, figsize=(5, 1.42), log = True,
                          hostname=hostname, ratio=[1,2], legypos = 1.53, color=None, colorline='gray'):
    baseline = (baseline[1], baseline[0])
    fig, (ax2, ax1) = plt.subplots(2, 1, height_ratios=ratio, sharex = True, figsize=figsize)
    # fig.subplots_adjust(hspace=0.05)  # adjust space between axes
    #ax, right = fig.subplots(1, 2, gridspec_kw={"width_ratios":[1.8, 1]})

    threads = dfmed.loc[(hostname, baseline[0], slice(None))].index[0][2]
    print(threads)
    print('baseline:')
    print(dfmed.loc[(hostname, baseline[0], threads)])
    for k, v in configs.items():
        print('config {}:'.format(k))
        print(dfmed.loc[(hostname, v, threads)])
        

    opt = pd.DataFrame({
        key: (dfmed.loc[(hostname, baseline[0], threads)] / dfmed.loc[(hostname, val, threads)]) for key, val in configs.items()})

    if debug_plots:
        errs = pd.DataFrame({
            key: (dfstdev.loc[(hostname, val, threads)]) for key, val in configs.items()})
    else:
        errs = None

    [(print(k, v1), print(gmean(v.dropna()))) for (k, v), v1 in zip(opt.items(), configs.values())]
    print()
    [(print(k, v1), print(v.dropna())) for (k, v), v1 in zip(opt.items(), configs.values())]
    #print(gmean(opt['']))
    #print(gmean(opt))

    opt.plot.bar(ax=ax1, log=log, zorder=2, width=0.7, yerr=errs, color=color)
    opt.plot.bar(ax=ax2, log=log, zorder=2, width=0.7, yerr=errs, color=color)
    # opt.plot.bar(ax=axs[1])

    #ax.set_ylim(.5, 3.0)  # outliers only
    #yticks = [0.5, 0.75, 1.0, 1.5, 2.0, 3.0]
    #ax.set_yticks(yticks)
    #ax.set_yticks(yticks, labels=map(str, yticks))
    #ax.set_yticks([],[],minor=True)
    ax1.grid(axis='y', zorder=1)
    ax2.grid(axis='y', zorder=1)

    #ax.set_ylabel('Speedup' + (' (log)' if log else '') + ' over ' + baseline[1])
    ax1.set_ylabel('                   Relative speedup' + (' (log)' if log else ''))
    ax2.axhline(1.0, color=colorline)
    ax1.axhline(1.0, color=colorline, label = baseline[1])
    ax1.set_xticklabels(ax1.get_xticklabels(), rotation = 35, horizontalalignment='right', verticalalignment='top')
    
    ax2.spines['bottom'].set_visible(False)
    ax1.spines['top'].set_visible(False)
    ax2.tick_params(labeltop=False)
    ax2.xaxis.tick_top() 
    #ax2.set_xticks([])
    
    d = .008
    kwargs = dict(transform=ax2.transAxes, color='k', clip_on=False)
    ax2.plot((-d, +d), (-d, +d), **kwargs)        # top-left diagonal
    ax2.plot((1 - d, 1 + d), (-d, +d), **kwargs)  # top-right diagonal
    
    kwargs.update(transform=ax1.transAxes)  # switch to the bottom axes
    ax1.plot((-d, +d), (1 - d, 1 + d), **kwargs)  # bottom-left diagonal
    ax1.plot((1 - d, 1 + d), (1 - d, 1 + d), **kwargs)  # bottom-right diagonal
    
    ax2.get_legend().remove()

    lgd = ax1.legend(
        loc='lower center', bbox_to_anchor=(0.50, legypos),
        fancybox=True, shadow=True, ncol=6)
    return fig, (ax2, ax1)

polygeist_no_par_opts = 'P-G no par. opts'
polygeist_w_par_opts = 'P-G w/ par. opts'


# In[23]:


hostname_target = list({(x[0], ('amd' if 'amd' in x[1] else ''), x[2]) for x in dfmed.index})
hostname_target # target '' is cuda


# In[24]:


#get_ipython().run_line_magic('pause', '')


# In[ ]:



baseline = ('clang', 'clang.gpu')
hostname_ = hostname
configs = {
    polygeist_no_par_opts: get_conf(2, commit),
    #'PGO 12': get_conf(12, 'eb30eb97f978', 'pgo_opt'),
    polygeist_w_par_opts: get_conf(11, commit, 'pgo_opt'),
}

fig, ax = drawcomparison(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_)

#yticks = [1,1.5,2,3,4,5]
#yticks = [1,1.5,2,3,4,5]
#ytickslabels = [str(x) for x in yticks]
#ax.set_yticks(yticks)
#ax.set_yticklabels(ytickslabels)

def handle_axis(ax1):
    ax1.set_yscale('log')
handle_axis(ax)

# non broken axis
# ax = drawcomparison(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_)
# yticks = [1,1.5,2,3,4,5]
# ytickslabels = [str(x) for x in yticks]
# ax.set_yticks(yticks)
# ax.set_yticklabels(ytickslabels)
#fig.suptitle('', y=1.20, fontsize='medium')

fn = getuniqfn(os.path.join(figures_dir,'{}rodinia-cuda-clang-2-11-comparison'.format(hostname_)), 'pdf')
print('Saving figure to', fn)
plt.savefig(fn, bbox_inches='tight')

