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

#ifndef CPUCUDA_RUNTIME_HPP
#define CPUCUDA_RUNTIME_HPP

#include <thread>
#include <limits>
#include <memory>
#include <unordered_map>
#include <stdexcept>

#include "queue.hpp"
#include "types.hpp"
#include "kernel_execution_context.hpp"
#include "event.hpp"

namespace cpucuda {
namespace detail {


template<class Object>
class object_storage
{
public:

  // Need shared_ptr since e.g. cpucudaEventDestroy()
  // is non-blocking and cleanup must only happen once
  // the event is complete
  using object_ptr = std::shared_ptr<Object>;

  struct item
  {
    std::size_t id;
    object_ptr data;
  };

  int store(object_ptr obj)
  {
    std::lock_guard<std::mutex> lock{_lock};

    for(std::size_t i = 0; i < _data.size(); ++i)
      if(!_data[i])
      {
        _data[i] = std::move(obj);
        return static_cast<int>(i);
      }
    
    _data.push_back(obj);
    assert(_data.size() > 0);
    return static_cast<int>(_data.size()-1);
  }

  Object* get(int id) const
  {
    std::lock_guard<std::mutex> lock{_lock};

    assert(this->is_valid(id));
    return _data[id].get();
  }
  
  object_ptr get_shared(int id) const
  {
    std::lock_guard<std::mutex> lock{_lock};
    
    assert(this->is_valid(id));

    return _data[id];
  }

  void destroy(int id)
  {
    std::lock_guard<std::mutex> lock{_lock};

    assert(this->is_valid(id));

    _data[id] = nullptr;
  }

  template<class Handler>
  void for_each(Handler h) const
  {
    std::lock_guard<std::mutex> lock{_lock};
    for(auto& obj : _data)
    {
      if(obj)
        h(obj.get());
    }
  }

  bool is_valid(int id) const
  {
    if(id < 0 || static_cast<unsigned int>(id) >= _data.size())
      return false;
    if(_data[id] == nullptr)
      return false;

    return true;
  }
private:
  mutable std::mutex _lock;
  std::vector<object_ptr> _data;
};

}

class stream
{
public:
  /// Construct stream - if master stream is not null,
  /// all operations are forwarded to the async queue
  /// of the master stream.
  /// This guarantees that operations are never overlapping
  /// with operations on the master stream (needed for default
  /// stream semantics)
  stream(stream* master_stream = nullptr)
  : _master_stream{master_stream}
  {
    if(!_master_stream)
      _queue = std::make_unique<detail::async_queue>();
  }

  template<class Func>
  void operator()(Func f)
  {
    this->execute(f);
  }

  void wait()
  {
    if(_master_stream)
      _master_stream->wait();
    else
      _queue->wait();
  }

  bool is_idle() const
  {
    if(_master_stream)
      return _master_stream->is_idle();

    return _queue->is_idle();
  }

private:

  template<class Func>
  void execute(Func f)
  {
    if(_master_stream)
      _master_stream->execute(f);
    else
      (*_queue)(f);
  }

  stream* _master_stream;
  std::unique_ptr<detail::async_queue> _queue;
};

class device
{
public:
  template<class Func>
  void submit_kernel(stream& execution_stream,
                    dim3 grid, dim3 block, int shared_mem, Func f)
  {
#ifdef CPUCUDA_NO_OPENMP
    if(block.x * block.y * block.z > 1)
      throw std::invalid_argument{"More than 1 thread per block requires compiling"
                                  " cpucudaCPU with OpenMP support."};
#endif

    execution_stream([=](){
      std::lock_guard<std::mutex> lock{this->_kernel_execution_mutex};
      _block_context = detail::kernel_block_context{block, shared_mem};
      _grid_context = detail::kernel_grid_context{grid};

      // TODO will need different parallelisation strategy, possibly the
      // original one for when the number of blocks is small
#ifndef CPUCUDA_NO_OPENMP
#pragma omp parallel for collapse(3)
#endif
      for(size_t g_x = 0; g_x < grid.x; ++g_x){
        for(size_t g_y = 0; g_y < grid.y; ++g_y){
          for(size_t g_z = 0; g_z < grid.z; ++g_z){
            dim3 blockIdx = dim3{g_x, g_y, g_z};

            f(grid, block, blockIdx);

          }
        }
      }
    });
  }


  template<class Func>
  void submit_kernel(stream& execution_stream,
                    int shared_mem, Func f)
  {
    execution_stream([=]{
      std::lock_guard<std::mutex> lock{this->_kernel_execution_mutex};
      _block_context = detail::kernel_block_context{dim3{1,1,1}, shared_mem};
      _grid_context = detail::kernel_grid_context{dim3{1,1,1}};
      _grid_context.set_block_id(dim3{0, 0, 0});
      f();
    });
  }

  template<class Func>
  void submit_operation(stream& execution_stream, Func f)
  {
    execution_stream(f);
  }

  void barrier()
  {
#ifndef CPUCUDA_NO_OPENMP
    #pragma omp barrier
#endif
  }

  const detail::kernel_block_context& get_block() const
  {
    return _block_context;
  }

  const detail::kernel_grid_context& get_grid() const
  {
    return _grid_context;
  }

  int get_max_threads()
  {
#ifndef CPUCUDA_NO_OPENMP
    return omp_get_max_threads();
#else
    return 1;
#endif
  }

  int get_num_compute_units()
  {
#ifndef CPUCUDA_NO_OPENMP
    return omp_get_num_procs();
#else
    return 1;
#endif
  }

  std::size_t get_max_shared_memory() const
  { return std::numeric_limits<std::size_t>::max(); }

  void* get_dynamic_shared_memory() const
  {
    return _block_context.get_dynamic_shared_mem();
  }

private:
  detail::kernel_block_context _block_context;
  detail::kernel_grid_context _grid_context;

  std::mutex _kernel_execution_mutex;
};


class runtime
{
  runtime()
  : _current_device{0}
  {
    _devices.push_back(std::make_unique<device>());
    // Create default stream
    int stream_id = _streams.store(std::make_unique<stream>());
#ifndef NDEBUG
    assert(stream_id == 0);
#else
    (void) stream_id;
#endif
  }
public:
  static runtime& get()
  {
    static runtime r;
    return r;
  }

  int create_async_stream()
  {
    return _streams.store(std::make_unique<stream>());
  }

  int create_blocking_stream()
  {
    return _streams.store(std::make_unique<stream>(_streams.get(0)));
  }

  void destroy_stream(int stream_id)
  {
    assert(stream_id != 0);
    _streams.destroy(stream_id);
  }

  int create_event()
  {
    return _events.store(std::make_unique<event>());
  }
  
  void destroy_event(int event_id)
  {
    _events.destroy(event_id);
  }

  const detail::object_storage<stream>& streams() const
  {
    return _streams;
  }

  const detail::object_storage<event>& events() const
  {
    return _events;
  }

  device& dev() const noexcept
  {
    return *_devices[this->get_device()];
  }

  int get_num_devices() const noexcept
  {
    assert(_devices.size() == 1);
    return _devices.size();
  }

  int get_device() const noexcept
  {
    return _current_device;
  }

  void set_device(int device) noexcept
  {
    assert(device >= 0 && device < get_num_devices());
    _current_device = device;
  }


  template<class Func>
  void submit_operation(Func f, int stream_id = 0)
  {
    auto s = this->_streams.get(stream_id);
    this->dev().submit_operation(*s, f);
  }

  template<class Func>
  void submit_kernel(dim3 grid, dim3 block, 
                    int shared_mem, int stream, Func f)
  {
    auto s = this->_streams.get(stream);
    this->dev().submit_kernel(*s, grid, block, shared_mem, f);
  }

  template<class Func>
  void submit_unparallelized_kernel(int scratch_mem, int stream, Func f)
  {
    auto s = this->_streams.get(stream);
    this->dev().submit_kernel(*s, scratch_mem, f);
  }

private:
  mutable std::mutex _runtime_lock;

  detail::object_storage<stream> _streams;
  detail::object_storage<event> _events;
  // TODO: This should be thread local, but as long
  // as we are on the host system, we effectively
  // only have a single device
  int _current_device;

  std::vector<std::unique_ptr<device>> _devices;
};

}

#endif
