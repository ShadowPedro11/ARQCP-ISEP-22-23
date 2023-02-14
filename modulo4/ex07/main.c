#include <stdio.h>
#include "count_odd.h"



int main(void) {

char array[] = {1,2,3,4,5,6};
char* vec = array;
int n = sizeof(array)/sizeof(array[0]);

printf("%d \n",count_odd(vec,n));



return 0;
}
