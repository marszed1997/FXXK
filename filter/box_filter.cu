#include <cstdio>
#include "box_filter.h"
#include <cuda_runtime.h>

__global__ void print_from_gpu() {
    printf("mmm");
}