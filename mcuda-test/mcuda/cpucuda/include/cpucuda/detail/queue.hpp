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

#ifndef CPUCUDA_QUEUE_HPP
#define CPUCUDA_QUEUE_HPP

#include <thread>
#include <atomic>
#include <condition_variable>
#include <mutex>
#include <functional>
#include <queue>
#include <cassert>


namespace cpucuda {
namespace detail {
/// A worker thread that processes a queue in the background.
class async_queue
{
public:
  using async_function = std::function<void ()>;

  /// Construct object
  async_queue();

  async_queue(const async_queue&) = delete;
  async_queue& operator=(const async_queue&) = delete;

  ~async_queue();

  /// Waits until all enqueued tasks have completed.
  void wait();

  /// Enqueues a user-specified function for asynchronous
  /// execution in the worker thread.
  /// \param f The function to enqueue for execution
  void operator()(async_function f);

  /// \return The number of enqueued operations
  std::size_t queue_size() const;

  /// Stop the worker thread
  void halt();

  /// \return Whether the queue is currently idling
  bool is_idle() const noexcept;
private:

  /// Starts the worker thread, which will execute the supplied
  /// tasks. If no tasks are available, waits until a new task is
  /// supplied.
  void work();

  std::thread _async_queue;

  std::atomic<bool> _continue;

  std::condition_variable _condition_wait;
  mutable std::mutex _mutex;

  std::queue<async_function> _enqueued_operations;

  std::atomic<bool> _is_idle;
};

/* Implementation */

inline
async_queue::async_queue()
    : _continue{true}
{
  _is_idle = true;
  _async_queue = std::thread{[this](){ work(); } };
}

inline
async_queue::~async_queue()
{
  halt();

  assert(_enqueued_operations.empty());
}

inline
void async_queue::wait()
{
  std::unique_lock<std::mutex> lock(_mutex);
  if(!_enqueued_operations.empty())
  {
    // Before going to sleep, wake up the other thread to avoid deadlocks
    _condition_wait.notify_one();
    // Wait until no operation is pending
    _condition_wait.wait(lock, [this]{return _enqueued_operations.empty();});
  }
}

inline
void async_queue::halt()
{
  wait();

  _continue = false;
  _condition_wait.notify_one();

  if(_async_queue.joinable())
    _async_queue.join();
}

inline
void async_queue::work()
{
  // This is the main function executed by the worker thread.
  // The loop is executed as long as there are enqueued operations,
  // (_is_operation_pending) or we should wait for new operations
  // (_continue).
  while(true)
  {
    {
      std::unique_lock<std::mutex> lock(_mutex);

      // enclosing loop termination must be checked while holding
      // a lock on _enqueued_operations (_continue is std::atomic<bool>)
      if(!_continue && _enqueued_operations.size() <= 0) break;

      // Before going to sleep, wake up the other thread in case it is is waiting
      // for the queue to get empty
      _condition_wait.notify_one();
      // Wait until we have work, or until _continue becomes false
      _condition_wait.wait(lock,
                           [this](){
        return _enqueued_operations.size()>0 || !_continue;
      });
    }

    // In any way, process the pending operations

    async_function operation = [](){};

    {
      std::lock_guard<std::mutex> lock(_mutex);

      if(!_enqueued_operations.empty())
      {
        operation = _enqueued_operations.front();
      } else {
	      /* TODO this actually happens and does std::__throw_bad_function_call at
	       operation(), why? It started happening after _enqueued_operations.pop()
	       was moved to the bottom locked block, should look into it */
	      continue;
      }
    }

    _is_idle = false;
    operation();

    {
      std::lock_guard<std::mutex> lock(_mutex);
      _enqueued_operations.pop();
      _is_idle = _enqueued_operations.empty();
    }

    _condition_wait.notify_one();

  }
}

inline
void async_queue::operator()(async_queue::async_function f)
{
  std::unique_lock<std::mutex> lock(_mutex);

  _enqueued_operations.push(f);

  lock.unlock();
  _condition_wait.notify_one();
}

inline
std::size_t async_queue::queue_size() const 
{
  std::lock_guard<std::mutex> lock(_mutex);
  return _enqueued_operations.size();
}

inline
bool async_queue::is_idle() const noexcept
{
  return _is_idle;
}

} // namespace detail
} // namespace cpucuda

#endif
