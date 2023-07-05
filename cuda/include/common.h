#ifndef COMMON_
#define COMMON_

#include <CL/sycl.hpp>

using namespace cl::sycl;
constexpr access::mode sycl_read       = access::mode::read;
constexpr access::mode sycl_write      = access::mode::write;
constexpr access::mode sycl_read_write = access::mode::read_write;
constexpr access::mode sycl_discard_read_write = access::mode::discard_read_write;
constexpr access::mode sycl_discard_write = access::mode::discard_write;
constexpr access::mode sycl_atomic     = access::mode::atomic;

constexpr access::target sycl_cmem     = access::target::constant_buffer;
constexpr access::target sycl_gmem     = access::target::global_buffer;
constexpr access::target sycl_lmem     = access::target::local;

#endif
