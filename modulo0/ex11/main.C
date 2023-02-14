#include <stdio.h>
#include "average.h"

int g_n = 4;
int g_v[100] = {1,2,3,4,5,6,7,8,9,10};

int main() {
    int v[] = {1,2};
    int r,s,t = 0;
    int n = sizeof(v)/sizeof(v[0]);
    r = average(v[0], v[1]);
    s = average_array(v,n);
    t= average_global_array();
    printf("average =%d\n", r);
    printf("Average of array is: %d\n",s);
    printf("Average of gloval array us = %d\n", t);
    return 0;
}


