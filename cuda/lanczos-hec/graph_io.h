#ifndef _GRAPH_IO_H
#define _GRAPH_IO_H

#include <fstream>
#include <sstream>
#include <string>

#include "matrix.h"

using std::ifstream;
using std::getline;
using std::string;
using std::stringstream;

template <typename T>
coo_matrix<T> adjacency_matrix_from_graph(int node_count, const string &edge_file) {
    coo_matrix<T> matrix(node_count);
    ifstream input_stream(edge_file);
    string line;
    T w(1);
    while (getline(input_stream, line)) {
        stringstream input(line);
        int i, j;
        input >> i >> j;
        if (i >= node_count || j >= node_count) {
            continue;
        }
        matrix.add_entry(i, j, w);
    }
    return matrix;
}

template <typename T>
symm_tridiag_matrix<T> symm_tridiag_matrix_from_file(const string &path) {
    int n;
    ifstream input(path);
    input >> n;
    symm_tridiag_matrix<T> matrix(n);
    for (int i = 0; i < n; ++i) {
        input >> matrix.alpha(i);
    }
    for (int i = 0; i < n - 1; ++i) {
        input >> matrix.beta(i);
    }
    return matrix;
}

#endif
