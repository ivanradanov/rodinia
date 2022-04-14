/*
 * This file is part of cpucudaCPU, a HIP implementation based on OpenMP
 *
 * Copyright (c) 2018,2019 Aksel Alpay
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef CPUCUDA_MALLOC_HPP
#define CPUCUDA_MALLOC_HPP

#include <cstdlib>
#include <cassert>
#include <new>

namespace cpucuda {
namespace detail {

constexpr std::size_t default_alignment = sizeof(double) * 16;

inline void*
aligned_malloc(size_t align, size_t size)
{
    assert(align >= sizeof(void*));

    if (size == 0) {
        return nullptr;
    }

    void* result = nullptr;
    int err = posix_memalign(&result, align, size);

    if (err != 0) {
        return nullptr;
    }

    return result;
}

inline void aligned_free(void *ptr) noexcept 
{ 
  return free(ptr); 
}


template <class T, std::size_t alignment>
struct aligned_allocator
{
    using value_type = T;

    aligned_allocator() noexcept = default;

    template <class U>
    aligned_allocator(const aligned_allocator<U,alignment> &) noexcept {}

    template <class U>
    bool operator==(const aligned_allocator<U,alignment> &) const noexcept 
    { return true; }

    template <class U>
    bool operator!=(const aligned_allocator<U,alignment> &) const noexcept 
    { return false; }

    T *allocate(const size_t len) const
    {
        if (len == 0)
            return nullptr;

        void *ptr = aligned_malloc(alignment, len * sizeof(T));

        if (!ptr)
            throw std::bad_alloc();

        return static_cast<T *>(ptr);
    }

    void deallocate(T *ptr, size_t) const noexcept
    {
        aligned_free(ptr);
    }
};

template<class T>
using default_aligned_allocator = aligned_allocator<T,default_alignment>;

} // namespace detail
}

#endif