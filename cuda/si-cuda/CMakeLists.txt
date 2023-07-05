cmake_minimum_required(VERSION 3.18)
project(set_intersection_eval CUDA CXX)

set(CMAKE_CUDA_STANDARD 14)
set(CMAKE_CXX_STANDARD 14)

set(SM_ARCH 60 CACHE STRING "CUDA SM architecture e.g. 50, 52, 60")

include(FetchContent)

# CXX options library
FetchContent_Declare(
        cxxopts
        GIT_REPOSITORY https://github.com/jarro2783/cxxopts.git
        GIT_TAG        v2.2.1
)
FetchContent_MakeAvailable(cxxopts)
# Adds cxxopts

# Formatting library
FetchContent_Declare(
        fmt
        GIT_REPOSITORY https://github.com/fmtlib/fmt.git
        GIT_TAG        7.1.2
)
FetchContent_MakeAvailable(fmt)
# Adds fmt::fmt

# Zipf header library
FetchContent_Declare(
        zipf
        GIT_REPOSITORY https://github.com/llersch/cpp_random_distributions.git
        GIT_TAG        "6ae38ecf5dbeb1150b80ecf051cb43cb88ba697a"
)
FetchContent_MakeAvailable(zipf)

# Progress bar library
FetchContent_Declare(
        progressbar
        GIT_REPOSITORY https://github.com/prakhar1989/progress-cpp.git
        GIT_TAG        "7bfba0d22d19c41323aa35541618b6ebec9d737c"
)
FetchContent_MakeAvailable(progressbar)


# Generate dataset binary
add_executable(generate_dataset src/generate_dataset.cpp)
target_include_directories(generate_dataset PRIVATE include ${zipf_SOURCE_DIR} ${progressbar_SOURCE_DIR}/include/progresscpp/)
target_link_libraries(generate_dataset PRIVATE cxxopts fmt::fmt)

# Optimized binary search binary using matrix multiplication
add_executable(main src/main.cu)
target_link_libraries(main PRIVATE cxxopts fmt::fmt -lcublas)
target_include_directories(main PRIVATE include)
set_target_properties(
        main
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON
        CUDA_ARCHITECTURES ${SM_ARCH})
target_compile_options(main PRIVATE -m64)
