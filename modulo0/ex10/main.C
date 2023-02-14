#include <stdio.h>
#include "average.h"

int main() {
    int v[] = {1,2};
    int r,s = 0;
    int n = sizeof(v)/sizeof(v[0]);
    r = average(v[0], v[1]);
    s = average_array(v,n);
    printf("average =%d\n", r);
    printf("Average of array is: %d\n",s);
    return 0;
}


