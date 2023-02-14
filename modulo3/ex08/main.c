#include <stdio.h>
#include "test_even.h"

int num = 6;
long vec[] = {2,5,1,8,4,3};
long *ptrvec = vec;
long even;

int main(){

    printf("%lu\n", vec_sum_even());

    return 0;
}
