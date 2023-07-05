/*****************************************************************************
 *
 * MULTIANS - Massively parallel ANS decoding on GPUs
 *
 * released under LGPL-3.0
 *
 * 2017-2019 André Weißenberger
 *
 *****************************************************************************/

#include "ans_encoder.h"

void ANSEncoder::encode_memory(UNIT_TYPE* out, size_t size_out,
    SYMBOL_TYPE* in, size_t size_in,
    std::shared_ptr<ANSEncoderTable> encoder_table,
    std::shared_ptr<Decoder_Info> decoder_info) {
    
    UNIT_TYPE* out_ptr = out;
    
    const size_t max_bits = sizeof(UNIT_TYPE) * 8;
    const size_t num_states = encoder_table->table.at(0).size();

    UNIT_TYPE window = 0;
    UNIT_TYPE state = 0;
    UNIT_TYPE final_state = 0;
    size_t final_bit = 0;
    size_t final_size = 0;
    
    size_t at = 0;
    size_t in_unit = 0;

    for(size_t i = 0; i < size_out && in_unit < size_in + 1; ++i) {
        auto next_state = encoder_table->table[in[in_unit]][state];
        state = next_state.next_state - num_states;
        auto rem = next_state.code_sequence;
        auto shift = next_state.code_length;
        
        while(at + shift < max_bits && in_unit < size_in) {
            window <<= shift;
            window += rem;
            at += shift;
            ++in_unit;

            if(in_unit < size_in) {
                next_state = encoder_table->table[in[in_unit]][state];
                state = next_state.next_state - num_states;
                rem = next_state.code_sequence;
                shift = next_state.code_length;
            }
            
            final_state = next_state.next_state;
        }
        
        const size_t diff = at + shift - max_bits;
        final_bit = at;
        final_size = i;

        window <<= shift - diff;
        window += (rem >> diff);
        
        out_ptr[i] = window;
        
        window = rem & ~(~0 << diff);
        at = diff;

        ++in_unit;
    }
    
    decoder_info->state = final_state;
    decoder_info->bit = final_bit;
    decoder_info->size = final_size + 1;
}

std::shared_ptr<CUHDInputBuffer> ANSEncoder::encode(
    SYMBOL_TYPE* in, size_t size_in,
    std::shared_ptr<ANSEncoderTable> encoder_table) {
    
    // maximum compressed size in units
    size_t max_size = ANSTableGenerator::get_max_compressed_size(
        encoder_table, size_in);
    
    // temporary buffer for compressed data
    std::unique_ptr<UNIT_TYPE[]> compressed
        = std::make_unique<UNIT_TYPE[]>(max_size);
    std::memset(compressed.get(), 0, max_size * sizeof(UNIT_TYPE));
    
    std::shared_ptr<Decoder_Info> decoder_info(new Decoder_Info());
    
    encode_memory(compressed.get(), max_size,
        in, size_in, encoder_table, decoder_info);
    
    std::shared_ptr<CUHDInputBuffer> buffer(
        new CUHDInputBuffer(compressed.get(), decoder_info->size,
            decoder_info->bit, decoder_info->state));
    
    return buffer;
}

