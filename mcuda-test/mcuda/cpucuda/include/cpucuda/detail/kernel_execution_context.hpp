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

#ifndef CPUCUDA_KERNEL_CONTEXT
#define CPUCUDA_KERNEL_CONTEXT

#include "malloc.hpp"
#include "types.hpp"

#ifndef CPUCUDA_NO_OPENMP
#include <omp.h>
#endif

namespace cpucuda {
namespace detail {

class kernel_block_context
{
public:
  kernel_block_context()
  : _block_dim{0,0,0}
  {}

  kernel_block_context(dim3 block_dim, int dynamic_shared_mem_size = 0)
  : _thread_ids(block_dim.x*block_dim.y*block_dim.z), _block_dim{block_dim}
  {
    for(size_t x = 0; x < block_dim.x; ++x){
      for(size_t y = 0; y < block_dim.y; ++y){
        for(size_t z = 0; z < block_dim.z; ++z){
        
          _thread_ids[z + block_dim.z*y + block_dim.y*block_dim.z*x] 
            = dim3{x,y,z};
        }
      }
    }

    if(dynamic_shared_mem_size > 0)
      _shared_mem = std::vector<char>(dynamic_shared_mem_size);
  }

  dim3 get_thread_id() const noexcept
  {
    return _thread_ids[get_linear_thread_id()];
  }

  void* get_dynamic_shared_mem() const noexcept
  {
    return reinterpret_cast<void*>(_shared_mem.data());
  }

  dim3 get_block_dim() const noexcept
  {
    return _block_dim;
  }
private:
  int get_linear_thread_id() const noexcept
  {
#ifndef CPUCUDA_NO_OPENMP
    return omp_get_thread_num();
#else
    return 0;
#endif
  }

  std::vector<dim3> _thread_ids;
  mutable std::vector<char/*,default_aligned_allocator<char>*/> _shared_mem;
  dim3 _block_dim;
};

class kernel_grid_context
{
public:
  kernel_grid_context()
  : _grid_dim{0,0,0}, _block_id{0,0,0}
  {}

  kernel_grid_context(dim3 grid_dim)
  : _grid_dim{grid_dim}, _block_id{0,0,0}
  {}

  dim3 get_grid_dim() const noexcept
  {
    return _grid_dim;
  }

  dim3 get_block_id() const noexcept
  {
    return _block_id;
  }

  void set_block_id(dim3 id) noexcept
  {
    _block_id = id;
  }
private:
  dim3 _grid_dim;
  dim3 _block_id;
};

}
}

#endif
