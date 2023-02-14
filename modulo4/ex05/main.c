#include <stdio.h>
#include "inc_and_square.h"



int main(void) {
int x = 4;
int* v1 = &x;
int v2 = 5;
printf("The square of %d is %d \n",v2,inc_and_square(v1,v2));
printf("The value increased by one, now its value is %d \n",x);



return 0;
}
