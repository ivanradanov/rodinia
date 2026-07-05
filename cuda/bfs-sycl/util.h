#ifndef BFS_SYCL_UTIL_H_
#define BFS_SYCL_UTIL_H_

#include <iostream>
#include <cmath>

template<typename datatype>
void compare_results(const datatype *cpu_results, const datatype *gpu_results, const int size) {
    char passed = true;
    for (int i = 0; i < size; i++) {
        if (cpu_results[i] != gpu_results[i]) {
            passed = false;
        }
    }
    if (passed) {
        std::cout << "--cambine:passed:-)" << std::endl;
    } else {
        std::cout << "--cambine: failed:-(" << std::endl;
    }
}

#endif
