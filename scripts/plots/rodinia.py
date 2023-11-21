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
hostname_ = 'supercomp01a.r-ccs27.riken.jp'
configs = {
    polygeist_no_par_opts: get_conf(2, 'cb12f5623720'),
    #'PGO 12': get_conf(12, 'eb30eb97f978', 'pgo_opt'),
    polygeist_w_par_opts: get_conf(11, 'eb30eb97f978', 'pgo_opt'),
}

fig, (ax2, ax1) = drawcomparison_broken(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_, ratio=[1, 3])
#yticks = [1,1.5,2,3,4,5]
#yticks = [1,1.5,2,3,4,5]
#ytickslabels = [str(x) for x in yticks]
#ax.set_yticks(yticks)
#ax.set_yticklabels(ytickslabels)

def handle_axis(ax1, yticks, ylim):
    yticklabels = [str(x) for x in yticks]
    ax1.set_yscale('log')
    ax1.set_yticks(yticks)
    ax1.set_yticklabels(yticklabels)
    ax1.set_ylim(ylim)
    ax1.minorticks_off()
handle_axis(ax1, [1, 1.5, 2], (0.8, 2))
handle_axis(ax2, [5, 6], (4, 7))

# non broken axis
# ax = drawcomparison(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_)
# yticks = [1,1.5,2,3,4,5]
# ytickslabels = [str(x) for x in yticks]
# ax.set_yticks(yticks)
# ax.set_yticklabels(ytickslabels)
fig.suptitle('NVIDIA A4000', y=1.20, fontsize='medium')

plt.savefig(getuniqfn('figures/{}rodinia-cuda-clang-2-11-comparison'.format(hostname_), 'pdf'), bbox_inches='tight')
 


# In[37]:


#baseline = (polygeist_no_par_opts, get_conf(2, '9c9fbefa866d', target='amdgpu'))
baseline = ('hipify+clang', 'clang.hip.gpu')
hostname_ = 'supercomp01a.r-ccs27.riken.jp'
configs = {
    polygeist_no_par_opts: get_conf(2, '9c9fbefa866d', target='amdgpu'),
    polygeist_w_par_opts: get_conf(11, 'eb30eb97f978', 'pgo_opt', target='amdgpu'),
}


#fig, (ax2, ax1) = drawcomparison_broken(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_, legypos=1.70,
#                                        color='tab:orange', colorline='tab:blue')
fig, (ax2, ax1) = drawcomparison_broken(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_, legypos=1.70)
#yticks = [1,1.5,2,3,4,5]
#yticks = [1,1.5,2,3,4,5]
#ytickslabels = [str(x) for x in yticks]
#ax.set_yticks(yticks)
#ax.set_yticklabels(ytickslabels)

def handle_axis(ax1, yticks, ylim):
    yticklabels = [str(x) for x in yticks]
    ax1.set_yscale('log')
    ax1.set_yticks(yticks)
    ax1.set_yticklabels(yticklabels)
    ax1.set_ylim(ylim)
    ax1.minorticks_off()
handle_axis(ax1, [1, 1.5, 2], (0.8, 2))
handle_axis(ax2, [6, 7], (5, 8))
def handle_axis(ax1, yticks, ylim):
    yticklabels = [str(x) for x in yticks]
    ax1.set_yscale('log')
    ax1.set_yticks(yticks)
    ax1.set_yticklabels(yticklabels)
    ax1.set_ylim(ylim)
    ax1.minorticks_off()
    
# #ax2, ax1 = drawcomparison_broken(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_, ratio=[1, 3])
# #handle_axis(ax2, [6, 7], (6, 8))
# #handle_axis(ax1, [1, 1.5, 2, 3, 4], (0.8, 4))
# 
# # non broken axis
# fig, ax = drawcomparison(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_,
#                          color='tab:orange', colorline='tab:blue')
# # yticks = [1,1.5,2,3,4,5]
# # ytickslabels = [str(x) for x in yticks]
# # ax.set_yticks(yticks)
# # ax.set_yticklabels(ytickslabels)
# 
# handle_axis(ax, [1, 1.5, 2, 3, 4, 5, 6, 7], (0.8, 7))

fig.suptitle('AMD RX6800', y=1.20, fontsize='medium')

plt.savefig(getuniqfn('figures/{}rodinia-amd-2-11-comparison'.format(hostname_), 'pdf'), bbox_inches='tight')
 


# In[ ]:


baseline = ('clang', 'clang.gpu')
hostname_ = 'memkf02.g2.gsic.titech.ac.jp'
configs = {
    polygeist_no_par_opts: get_conf(2, '557bae26b5c6'),
    #'PGO 12': get_conf(12, 'eb30eb97f978', 'pgo_opt'),
    #'PGO 312': get_conf(312, '6e8d17c7a38b', 'pgo_opt'),
    polygeist_w_par_opts: get_conf(11, 'eb30eb97f978', 'pgo_opt'),
}
fig, ax = drawcomparison(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_)
yticks = [1,1.5,2,3,4,7]
ytickslabels = [str(x) for x in yticks]
ax.set_yticks(yticks)
ax.set_yticklabels(ytickslabels)

fig.suptitle('CUDA A100', y=1.20, fontsize='medium')

plt.savefig(getuniqfn('figures/{}rodinia-cuda-clang-2-11-comparison'.format(hostname_), 'pdf'), bbox_inches='tight')


# In[36]:


hostname_ = 'memkf01.m.gsic.titech.ac.jp'
#baseline = (polygeist_no_par_opts, get_conf(2, 'c8b2e09d4c81', None, 'amdgpu'))
##baseline = ('PGO 8', get_conf(8, '12d171cbb9a3', None, 'amdgpu'))
#configs = {
#    #'Par. repr. and coarsening enabled': get_conf(12, 'dc29d98d598c', 'pgo_opt', 'amdgpu'),
#    polygeist_w_par_opts: get_conf(11, 'dc29d98d598c', 'pgo_opt', 'amdgpu'),
#    
#    #'PGO 11': get_conf(11, '248a26ad188e', 'pgo_opt', 'amdgpu'),
#    #'PGO 12': get_conf(12, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
#    #'PGO 312': get_conf(312, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
#    #'PGO 11': get_conf(11, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
#    #'PGO 311': get_conf(311, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
#    #'Polygeist: block and thread coarsening PGO 311': get_conf(311, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
#}

baseline = ('hipify+clang', 'clang.hip.gpu')
configs = {
    polygeist_no_par_opts: get_conf(2, 'c8b2e09d4c81', None, 'amdgpu'),
    #'Par. repr. and coarsening enabled': get_conf(12, 'dc29d98d598c', 'pgo_opt', 'amdgpu'),
    polygeist_w_par_opts: get_conf(11, 'dc29d98d598c', 'pgo_opt', 'amdgpu'),
    
    #'PGO 11': get_conf(11, '248a26ad188e', 'pgo_opt', 'amdgpu'),
    #'PGO 12': get_conf(12, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
    #'PGO 312': get_conf(312, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
    #'PGO 11': get_conf(11, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
    #'PGO 311': get_conf(311, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
    #'Polygeist: block and thread coarsening PGO 311': get_conf(311, '12d171cbb9a3', 'pgo_opt', 'amdgpu'),
}
print(baseline)
print(configs)
#fig, (ax2, ax1) = drawcomparison_broken(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_, legypos=1.70,
#                                        color='tab:orange', colorline='tab:blue')
fig, (ax2, ax1) = drawcomparison_broken(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_, legypos=1.70)
#yticks = [1,1.5,2,3,4,5]
#yticks = [1,1.5,2,3,4,5]
#ytickslabels = [str(x) for x in yticks]
#ax.set_yticks(yticks)
#ax.set_yticklabels(ytickslabels)

def handle_axis(ax1, yticks, ylim):
    yticklabels = [str(x) for x in yticks]
    ax1.set_yscale('log')
    ax1.set_yticks(yticks)
    ax1.set_yticklabels(yticklabels)
    ax1.set_ylim(ylim)
    ax1.minorticks_off()
handle_axis(ax1, [1, 1.5, 2], (0.8, 2))
handle_axis(ax2, [6, 7], (5, 8))

fig.suptitle('AMD MI210', y=1.20, fontsize='medium')

plt.savefig(getuniqfn('figures/{}rodinia-amd-2-11-comparison'.format(hostname_), 'pdf'), bbox_inches='tight')


# In[ ]:


baseline = ('clang A4000', 'clang.gpu')
hostname_ = 'supercomp01a.r-ccs27.riken.jp'
configs = {
    'P-G A4000':  get_conf(11, 'eb30eb97f978', 'pgo_opt'),
    'P-G RX68000': get_conf(11, 'eb30eb97f978', 'pgo_opt', target='amdgpu'),
}
fig, ax = drawcomparison(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_, color=['tab:brown', 'tab:olive'])
yticks = [0.1,10]
ytickslabels = [str(x) for x in yticks]
ax.set_yticks(yticks)
ax.set_yticklabels(ytickslabels)

#fig.suptitle('CUDA A100', y=1.20, fontsize='medium')

plt.savefig(getuniqfn('figures/{}rodinia-cuda-amd-comparison'.format(hostname_), 'pdf'), bbox_inches='tight')


# In[ ]:


get_ipython().run_line_magic('pause', '')


# In[ ]:


hostname_ = 'memkf01.m.gsic.titech.ac.jp'
baseline = (
    '1',  get_conf(1, 'dc29d98d598c', target='amdgpu'))
configs = {
    #'1':  get_conf(1, 'dc29d98d598c', target='amdgpu'),
    '2':  get_conf(2, 'dc29d98d598c', target='amdgpu'),
    '8':  get_conf(8, 'dc29d98d598c', target='amdgpu'),
    '12':  get_conf(12, 'dc29d98d598c', 'pgo_opt', target='amdgpu'),
    '11':  get_conf(11, 'dc29d98d598c', 'pgo_opt', target='amdgpu'),
}
fig, ax = drawcomparison(dfmed2, dfstdev2, baseline, configs, log = True, hostname=hostname_)
ax.set_yscale('linear')
#yticks = [0.1,10]
#ytickslabels = [str(x) for x in yticks]
#ax.set_yticks(yticks)
#ax.set_yticklabels(ytickslabels)

#fig.suptitle('CUDA A100', y=1.20, fontsize='medium')

#plt.savefig(getuniqfn('figures/{}rodinia-cuda-amd-comparison'.format(hostname_), 'pdf'), bbox_inches='tight')


# In[ ]:


# older commit: 89a6ad60589a
#baseline = ('Polygeist: no coarsening', get_conf(2, '557bae26b5c6', target='amdgpu'))
baseline = ('Polygeist: no coarsening', get_conf(2, '89a6ad60589a', target='amdgpu'))
configs = {
    'Polygeist: block and thread coarsening PGO': get_conf(11, '89a6ad60589a', 'pgo_opt', 'amdgpu'),
    #'Polygeist: block and thread coarsening PGO': get_conf(12, 'cb12f5623720', 'pgo_opt', 'amdgpu'),
}
ax = drawcomparison_(dfmed2, dfstdev2, baseline, configs, log = False)
#yticks = [1,1.5,2,3,4,5]
#ytickslabels = [str(x) for x in yticks]
#ax.set_yticks(yticks)
#ax.set_yticklabels(ytickslabels)
plt.savefig(getuniqfn('figures/rodinia-amd-2-11-comparison', 'pdf'), bbox_inches='tight')


# In[ ]:


baseline = ("nvcc", "nvcc")
configs = {
    'clang':
     "clang.gpu", 
    'p':
     commit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
    'p par preserved str':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.preserve-gpu-kernel-structure=1", 
    'p par':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    #'p par plicm':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1", 
    #'o p':
    # commit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0.original-gpu-block-size=1", 
    #'o p par':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.original-gpu-block-size=1", 
    #'o p par plicm':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.original-gpu-block-size=1", 
}
#drawcomparison(dfmed, dfstdev, baseline, configs)


# In[ ]:


#drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


### looking at currently ###
baseline = ("clang.gpu", "clang")
configs = {
    #'p':
    # commit + ".polygeist.gpu", 
    'p aff':
     commit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
    #'p par str bt wrap':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_wrappers", 
    #'p par str bt noop':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops", 
    #'p par str t noop no buffer elim':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0", 
    'p par str t noop no buffer elim pgo':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.pgo_opt", 
    'p par str t noop no buffer elim coarsen pgo':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt", 
    #'p par str t noop':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop", 
    #'p par':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    #'p par plicm':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


baseline = (
    commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop", 
    'p par str t noop'
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1",
    #'p par plicm'
)
configs = {
    'p par str t noop no buffer elim':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


baseline = (
    #commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop", 
    #'p par str t noop'
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0",
    'p par str t noop no buffer elim'
)
configs = {
    'p par plicm no buffer elim':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.enable-buffer-elim=0",
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


baseline = ("clang.gpu", "clang")
baseline = (
     commit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
    'p aff')
configs = {
    #'p par str t noop no buffer elim':
    # commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0", 
    'p par str t noop no buffer elim pgo':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.pgo_opt", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


baseline = ("clang.gpu", "clang")
baseline = (
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.pgo_opt", 
    'p par str t noop no buffer elim pgo'
)
configs = {
    'p par str t noop no buffer elim':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0",
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


baseline = (commit + ".polygeist.gpu", "p")
configs = {
    'p aff':
     commit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


baseline = (
     commit + ".polygeist.gpu", 
    'p ')
b4dl = 'a16d57a360ce'
configs = {
    'p launch-bounds':
     commit + ".polygeist.gpu.emit-gpu-kernel-launch-bounds=0", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


baseline = ("clang.gpu", "clang")
b4dl = 'a16d57a360ce'
configs = {
    'p ':
     b4dl + ".polygeist.gpu", 
    'p dl':
     commit + ".polygeist.gpu", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


baseline = ("clang.gpu", "clang")
configs = {
    'p':
     commit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
    'p par':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    'p par plicm':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


# FOR CGO23 POSTER
baseline = ("clang.gpu", "clang")
configs = {
    'Polygeist GPU opts disabled':
     commit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
    'Polygeist GPU opts enabled':
     #commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
     #'cb2b72ef4b9e' + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
     'c598949412a1' + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    #'8163720f1503' + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
        
    
}
drawcomparison(dfmed2, dfstdev2, baseline, configs, (7, 2), (0.1, 15))

plt.savefig('rodinia_speedups_vs_clang_cgo23_2.pdf', bbox_inches='tight')


# In[ ]:


baseline = ("clang.gpu", "clang")
configs = {
    'Polygeist':
     "490857073242" + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    'Polygeist w/ occup':
     "574c36d1e13d" + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    'Polygeist w/ occup & launch bounds':
     "29e6a133795c" + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    'Polygeist w/ occup & launch bounds & regnum/stackframe':
     "218ac89281e1" + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    'Polygeist w/ linreg params':
     "580c99028ac4" + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
   
}
drawcomparison(dfmed2, dfstdev2, baseline, configs, (14, 4), (0.1, 15))

plt.savefig('rodinia_speedups_vs_clang.pdf', bbox_inches='tight')


# In[ ]:


amdgpucommit = "ab5c0cdf79f2.amdgpu"
cudacommit = "5e968581a0c5"

baseline = ("clang.gpu", "clang Nvidia RTX A4000")
configs = {
    'Polygeist Nvidia RTX A4000':
     cudacommit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
    'Polygeist AMD RX6800':
     amdgpucommit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


amdgpucommit = "ab5c0cdf79f2.amdgpu"
cudacommit = "5e968581a0c5"

baseline = ("clang.gpu", "clang Nvidia RTX A4000")
configs = {
    'Polygeist ppgo Nvidia RTX A4000':
     cudacommit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.pgo_opt", 
    'Polygeist ppgo AMD RX6800':
     amdgpucommit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.pgo_opt", 
}
#    'p par str t noop no buffer elim':
#     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0", 
#    'p par str t noop no buffer elim pgo':
#     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.pgo_opt", 

drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


basecommit = 'ab5c0cdf79f2'
coarsenedcommit = 'f62524368f41'
baseline = (basecommit + ".amdgpu.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops", "no coarsening") 
configs = {
    'coarsened static':
     coarsenedcommit + ".amdgpu.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1", 
    'coarsened pgo':
     coarsenedcommit + ".amdgpu.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


basecommit = '5e968581a0c5'
coarsenedcommit = 'f62524368f41'
baseline = (basecommit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops", "no coarsening") 
configs = {
    'coarsened static':
     coarsenedcommit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1", 
    'coarsened pgo':
     coarsenedcommit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)


# In[ ]:


# FOR CGO23 POSTER
baseline = ("clang.gpu", "clang")
configs = {
    'Polygeist GPU opts disabled':
     commit + ".polygeist.gpu.raise-scf-to-affine.scal-rep=0", 
    'Polygeist GPU opts enabled':
     #commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
     #'cb2b72ef4b9e' + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
     'c598949412a1' + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
    #'8163720f1503' + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0", 
        
    
}
drawcomparison(dfmed2, dfstdev2, baseline, configs, (7, 2), (0.1, 15))

plt.savefig('rodinia_speedups_vs_clang_cgo23_2.pdf', bbox_inches='tight')


# In[ ]:


### looking at currently ###
baseline = ("clang.gpu", "clang")
baseline = ("clang.gpu", "clang Nvidia A4000")
configs = {
    'Polygeist PGO Nvidia A4000':
     commit + ".polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt", 
    'Polygeist PGO AMD RX6800':
     commit + ".amdgpu.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt", 
}
drawcomparison(dfmed2, dfstdev2, baseline, configs)
#plt.savefig('figures/rodinia_speedups_clang_polygeist_pgo_cuda_amd.pdf', bbox_inches='tight')
#plt.savefig('figures/rodinia_speedups_clang_polygeist_pgo_cuda_amd.png', bbox_inches='tight')
#plt.savefig('figures/rodinia_speedups_clang_polygeist_pgo_amd.pdf', bbox_inches='tight')
#plt.savefig('figures/rodinia_speedups_clang_polygeist_pgo_amd.png', bbox_inches='tight')


# In[ ]:


# lud analysis for lab seminar 2023-07-12
baseline = ("clang.gpu", "clang")


configs = [x for x in [x for x in [x[1] for x in list(df.index)][:-1] if 'pgo_prof' not in x]]
print(configs)
#oldconfig = '606ade6ec27f'
configs = {
'Polygeist': '52595b788a31.polygeist.gpu.raise-scf-to-affine.scal-rep=0',
'Polygeist thread coarsening': '52595b788a31.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.gpu-kernel-enable-block-coarsening=0.pgo_opt',
'Polygeist thread coarsening (coalescing friendly)': '52595b788a31.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.gpu-kernel-enable-block-coarsening=0.gpu-kernel-enable-coalescing-friendly-unroll=1.pgo_opt',
'Polygeist thread+block coarsening': '52595b788a31.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt',
          }
#configs = {
#    #'clang': 'clang.gpu',
#    'Polygeist no coarsening': commit + '.polygeist.gpu.raise-scf-to-affine.scal-rep=0',
#    'thread coarsening':       commit + '.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1.gpu-kernel-enable-block-coarsening=0.pgo_opt',
#    'thread coarsening':       commit + '.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1.gpu-kernel-enable-block-coarsening=0.gpu-kernel-enable-coalescing-friendly-unroll=1.pgo_opt',
#    'thread+block coarsening': commit + '.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=block_thread_noops.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt',
#    #'thread coarsening':       commit + '.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.gpu-kernel-enable-block-coarsening=0.pgo_opt',
#    #'thread+block coarsening':       commit + '.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.enable-buffer-elim=0.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt',
#    #'Polygeist thread coarsening': commit + '.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.gpu-kernel-emit-coarsened-alternatives=1.gpu-kernel-enable-block-coarsening=0.pgo_opt',
#    #'Polygeist thread+block coarsening': commit + '.polygeist.gpu.parallel-lower.raise-scf-to-affine.scal-rep=0.parallel-licm=1.gpu-kernel-structure-mode=thread_noop.gpu-kernel-emit-coarsened-alternatives=1.pgo_opt',
#}

def drawcomparison2(dfmed, dfstdev, baseline, configs, figsize=(7, 2), ylim = None):
    fig, ax = plt.subplots(figsize=figsize)
    # fig.subplots_adjust(hspace=0.05)  # adjust space between axes
    #ax, right = fig.subplots(1, 2, gridspec_kw={"width_ratios":[1.8, 1]})


    opt = pd.DataFrame({
        key: (dfmed.loc[(hostname, baseline[0], threads)] / dfmed.loc[(hostname, val, threads)]) for key, val in configs.items()})

    errs = pd.DataFrame({
        key: (dfstdev.loc[(hostname, val, threads)]) for key, val in configs.items()})

    [print(k, gmean(v.dropna())) for k, v in opt.items()]
    [print(k, v.dropna()) for k, v in opt.items()]
    #print(gmean(opt['']))
    #print(gmean(opt))

    opt.plot.bar(ax=ax, log=False, zorder=2, width=0.7, yerr=errs)
    # opt.plot.bar(ax=axs[1])

    #ax.set_ylim(.5, 3.0)  # outliers only
    #yticks = [0.5, 0.75, 1.0, 1.5, 2.0, 3.0]
    #ax.set_yticks(yticks)
    #ax.set_yticks(yticks, labels=map(str, yticks))
    #ax.set_yticks([],[],minor=True)
    ax.grid(axis='y', zorder=1)
    if ylim != None:
        ax.set_ylim(ylim[0], ylim[1])  # most of the data

    ax.set_ylabel('Speedup over ' + baseline[1])
    ax.axhline(1.0, color='gray', label = baseline[1])
    ax.set_xticklabels(ax.get_xticklabels(), rotation = 35, horizontalalignment='right', verticalalignment='top')

    lgd = ax.legend(loc='upper center', bbox_to_anchor=(0.50, 1.23),
                    fancybox=True, shadow=False, ncol=6)
    
drawcomparison2(dfmed2, dfstdev2, baseline, configs, figsize=(3,2), ylim=[0.0, 2.0])
#plt.savefig('figures/lud_thread_only_vs_thread_and_block_coarsening.pdf', bbox_inches='tight')
#plt.savefig('figures/lud_thread_only_vs_thread_and_block_coarsening.png', bbox_inches='tight')


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




