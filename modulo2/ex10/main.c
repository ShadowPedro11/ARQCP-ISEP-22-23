#include <stdio.h>
#include "sum3ints.h"

int op1 = 56;
int op2 = 35;
int op3 = 78;

int main(void){

long long sum = sum3ints();
printf("Sum: %llu\n", sum);
return 0;
}
