#include <stdio.h>
#include "vec_greater10.h"

int array[] = {0x10000001};
int* ptrvec = array;

int num = sizeof(array)/sizeof(array[0]);


int main(void) {
	
	printf("The result is %d \n",vec_greater10());

return 0;
}
