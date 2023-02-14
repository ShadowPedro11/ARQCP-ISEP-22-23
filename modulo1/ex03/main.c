#include <stdio.h>
#include "sum.h"
int main(void){
    int p[] = {1,2,3,4,6};
    int num = sizeof(p)/sizeof(p[0]);
    int sum = sum_even(p,num);
    printf("The sum of all even elements of this array is %d\n",sum);
return 0;
}
