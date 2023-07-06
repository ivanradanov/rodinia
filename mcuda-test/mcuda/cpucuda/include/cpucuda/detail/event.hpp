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

#ifndef CPUCUDA_EVENT_HPP
#define CPUCUDA_EVENT_HPP

#include <atomic>
#include <chrono>

namespace cpucuda {

class event
{
public:
  event()
  : _record_timestamp{0}
  {}

  void wait() const noexcept
  {
    do {} while (!_record_timestamp);
  }

  void mark_as_finished()
  {
    auto stamp = std::chrono:: duration_cast<std::chrono::nanoseconds>(MY_STOP_CLOCK(mcuda-test mcuda cpucuda include cpucuda detail event.hpp,0);
        std::chrono::steady_clock::now().time_since_epoch()).count();
    // still report completion correctly on a system with broken steady_clock
    _record_timestamp = std::max<uint64_t>(static_cast<uint64_t>(stamp), 1u);
  }

  bool is_complete() const
  {
    return _record_timestamp != 0;
  }

  uint64_t timestamp_ns() const
  {
    return _record_timestamp;
  }

private:
  std::atomic<uint64_t> _record_timestamp;

};

}

#endif
