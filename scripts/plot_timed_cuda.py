import sys
import os
import glob
import numpy as np
import csv
import statistics
import matplotlib.pyplot as plt

with_barriers = [
        'b+tree findRangeK',
        'b+tree findK',
        'backprop adjust_weights', 'backprop layerforward',
        'dwt2d c_CopySrcToComponents', 'dwt2d fdwt53Kernel',
        'heartwall ',
        'hotspot ',
        'huffman histo_kernel', 'huffman prescanArray', 'huffman vlc_encode_kernel_sm64huff',
        'lavaMD ',
        'lud ',
        'nw _total', 'nw needle_cuda_shared_1', 'nw needle_cuda_shared_2',
        'particlefilter float', 'particlefilter naive',
        'pathfinder ', 
        'srad_v1 reduce', 'srad_v1 total',
        'srad_v2 srad_cuda_1', 'srad_v2 srad_cuda_2', 'srad_v2 total',
        ]

def get_last_n_files(last, n):
        dir = os.path.dirname(last)
        files = glob.glob(dir + '/*')
        files.sort()
        for i, file in enumerate(files):
            if file == last:
                last_i = i;
        return files[last_i - n + 1: last_i + 1]

def plot_file_summaries(files, **kwargs):
    plot_summaries([create_file_timing_data_summary(read_timing_data_from_file(f)) for f in files], **kwargs)

def plot_min_summaries(summaries, legend = None, draw_legend = False):

    if legend is None:
        legend = [str(summary[0]) for summary in summaries]

    normalize = 0
    kernels = sorted(list(set.union(*[get_summary_kernels(summary) for summary in summaries])))
    data_points = [[(summary[1][kernel] if i == normalize else summary[1][kernel]['time'])
                    if kernel in summary[1] else 0 for kernel in kernels]
                   for i, summary in enumerate(summaries)]
    data_points = [[data_points[i][k] / data_points[normalize][k] for k in range(len(kernels))]  for i in range(len(summaries))]
    at_threads = [[str(summary[1][kernel]['omp_thread_num'])
                    if kernel in summary[1] else '' for kernel in kernels]
                   for summary in summaries[1:]]

    x = np.arange(len(kernels))

    fig, ax = plt.subplots()

    data_point_i_s = [i for i in range(len(data_points)) if i != normalize]

    width = (1.0 - 0.2) / len(data_point_i_s)

    rects = [ax.bar(x + i * width - len(data_point_i_s) * width / 2 + width / 2,
                    data_points[data_point_i_s[i]],
                    width,
                    label = legend[data_point_i_s[i]][0])
             for i in range(len(data_point_i_s))]
    labels = [ax.bar_label(rects[i], labels = at_threads[i]) for i in range(len(summaries) - 1)]

    if normalize != -1:
        ax.axhline(1.0, color='gray', label = legend[normalize])

    if normalize == -1:
        ax.set_ylabel('time (s)')
    else:
        ax.set_ylabel('relative time')
    ax.set_yscale('log')
    ax.set_title('Runtime of kernels')
    ax.set_xticks(x)
    ax.set_xticklabels(kernels, rotation = 90)
    if draw_legend:
        ax.legend()
    '''
    for i in range(len(summaries)):
        ax.bar_label(rects[i], padding = 3, rotation = 90)
    '''

    #fig.tight_layout()

    plt.show()

def plot_summaries(summaries, normalize = 0, legend = None, label_bars = False, log_scale = True, draw_legend = True):
    colors = ['C0' if 'openmp' in summary[0]['compilername'] else
              'C1' if 'cpucuda' in summary[0]['compilername'] else
              'C3' if 'polygeist.mincut' in summary[0]['compilername'] else
              'C4' if 'polygeist.continuation' in summary[0]['compilername'] else
              'C2' if 'polygeist' in summary[0]['compilername'] else
              None
              for summary in summaries]

    if legend is None:
        legend = [str(summary[0]) for summary in summaries]

    all_kernels = sorted(list(set.union(*[get_summary_kernels(summary) for summary in summaries])))
    kernels = sorted(list(get_summary_kernels(summaries[0])))

    data_points = [[summary[1][kernel] if kernel in summary[1] else 0 for kernel in kernels]
                   for summary in summaries]
    if normalize != -1:
        data_points = [[data_points[i][k] / data_points[normalize][k] for k in range(len(kernels))]  for i in range(len(summaries))]

    #if compare != -1:
        #rel_performance = [[data_points[i][k] / data_points[compare][k] for k in range(len(kernels)) if data_points[compare][k] != 0]  for i in range(len(summaries))]


    x = np.arange(len(kernels))

    fig, ax = plt.subplots()

    data_point_i_s = [i for i in range(len(data_points)) if i != normalize]

    width = (1.0 - 0.2) / len(data_point_i_s)

    rects = [ax.bar(x + i * width - len(data_point_i_s) * width / 2 + width / 2,
                    data_points[data_point_i_s[i]],
                    width,
                    label = legend[data_point_i_s[i]],
                    color=colors[data_point_i_s[i]])
             for i in range(len(data_point_i_s))]
    if label_bars:
        [ax.bar_label(bars, fmt='%.2f') for bars in rects]
    #labels = [ax.bar_label(rects[i], labels = ('x' + str(data_points[data_point_i_s[i]]) if data_points[data_point_i_s[i]] != 0 else '')) for i in range(len(data_point_i_s))]

    if normalize != -1:
        ax.axhline(1.0, color='gray', label = legend[normalize])

    if normalize == -1:
        ax.set_ylabel('time (s)')
    else:
        ax.set_ylabel('relative time')
    if log_scale:
        ax.set_yscale('log')
    ax.set_title('Runtime of kernels')
    ax.set_xticks(x)
    ax.set_xticklabels(kernels, rotation = 90)
    if draw_legend:
        #ax.legend(bbox_to_anchor=(1.05, 1), loc=2, borderaxespad=0.)
        ax.legend(loc='upper center', bbox_to_anchor=(0.5, -0.5))

    '''
    for i in range(len(summaries)):
        ax.bar_label(rects[i], padding = 3, rotation = 90)
    '''

    #fig.tight_layout()

    plt.show()


def get_summary_kernels(summary):
    return set(summary[1].keys())


def create_file_timing_data_summary(data, only_from = None):
    configuration = {
        "hostname": data[0][3],
        "compilername": data[0][4],
        "omp_thread_num": data[0][5],
    }
    data = [[row[0] + row[1], float(row[2])] for row in data]
    kernels = list({row[0] for row in data})
    if only_from is not None:
        kernels = list(set(kernels).intersection(only_from))
    kernel_times = {kernel: statistics.mean([row[1] for row in data if row[0] == kernel]) for kernel in kernels}

    return configuration, kernel_times

def verify_individual_file_timing_data(data):
    preserved_indices = [3, 4, 5]
    preserved_data = []
    for i in preserved_indices:
        preserved_data.append(data[0][i])
    for row in data:
        for i, d in zip(preserved_indices, preserved_data):
            if row[i] != d:
                raise Exception("invalid data in row {}, column {}".format(row, i))

def read_timing_data_from_files(filenames):
    data = []
    for filename in filenames:
        data += read_timing_data_from_file(filename)
    return data

def read_timing_data_from_file(filename):
    with open(filename, newline='') as f:
        reader = csv.reader(f)
        data = list(reader)
        verify_individual_file_timing_data(data)
        return data

def main():
    summaries = []
    for i in range(1, len(sys.argv)):
         data = read_timing_output_from_file(sys.argv[i])
         summary = create_file_timing_data_summary(data)
         summaries.append(summary)
    plot_summaries(summaries)

if __name__ == "__main__":
    main()
