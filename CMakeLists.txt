cmake_minimum_required(VERSION 3.16)
project(cudatest LANGUAGES CXX CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_library(F STATIC
        filter/box_filter.cu filter/box_filter.h)

set_target_properties(F
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)

add_executable(cudatest main.cu)

set_target_properties(cudatest
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)

target_link_libraries(cudatest PRIVATE F)

