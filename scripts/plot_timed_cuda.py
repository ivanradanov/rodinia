import sys
import numpy as np
import csv
import statistics
import matplotlib.pyplot as plt

def plot_file_summaries(files, **kwargs):
    plot_summaries([create_file_timing_data_summary(read_timing_data_from_file(f)) for f in files], **kwargs)

def plot_min_summaries(summaries):
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
                    label = str(summaries[data_point_i_s[i]][0]))
             for i in range(len(data_point_i_s))]
    labels = [ax.bar_label(rects[i], labels = at_threads[i]) for i in range(len(summaries) - 1)]

    if normalize != -1:
        ax.axhline(1.0, color='gray', label = str(summaries[normalize][0]))

    if normalize == -1:
        ax.set_ylabel('time (s)')
    else:
        ax.set_ylabel('relative time')
    ax.set_yscale('log')
    ax.set_title('Runtime of kernels')
    ax.set_xticks(x)
    ax.set_xticklabels(kernels, rotation = 90)
    ax.legend()
    '''
    for i in range(len(summaries)):
        ax.bar_label(rects[i], padding = 3, rotation = 90)
    '''

    #fig.tight_layout()

    plt.show()

def plot_summaries(summaries, normalize = -1):
    kernels = sorted(list(set.union(*[get_summary_kernels(summary) for summary in summaries])))
    data_points = [[summary[1][kernel] if kernel in summary[1] else 0 for kernel in kernels]
                   for summary in summaries]
    if normalize != -1:
        data_points = [[data_points[i][k] / data_points[normalize][k] for k in range(len(kernels))]  for i in range(len(summaries))]


    x = np.arange(len(kernels))

    fig, ax = plt.subplots()

    data_point_i_s = [i for i in range(len(data_points)) if i != normalize]

    width = (1.0 - 0.2) / len(data_point_i_s)

    rects = [ax.bar(x + i * width - len(data_point_i_s) * width / 2 + width / 2,
                    data_points[data_point_i_s[i]],
                    width,
                    label = str(summaries[data_point_i_s[i]][0]))
             for i in range(len(data_point_i_s))]

    if normalize != -1:
        ax.axhline(1.0, color='gray', label = str(summaries[normalize][0]))

    if normalize == -1:
        ax.set_ylabel('time (s)')
    else:
        ax.set_ylabel('relative time')
    ax.set_yscale('log')
    ax.set_title('Runtime of kernels')
    ax.set_xticks(x)
    ax.set_xticklabels(kernels, rotation = 90)
    ax.legend()
    '''
    for i in range(len(summaries)):
        ax.bar_label(rects[i], padding = 3, rotation = 90)
    '''

    #fig.tight_layout()

    plt.show()


def get_summary_kernels(summary):
    return set(summary[1].keys())


def create_file_timing_data_summary(data):
    configuration = {
        "hostname": data[0][3],
        "compilername": data[0][4],
        "omp_thread_num": data[0][5],
    }
    data = [[row[0] + row[1], float(row[2])] for row in data]
    kernels = list({row[0] for row in data})
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
