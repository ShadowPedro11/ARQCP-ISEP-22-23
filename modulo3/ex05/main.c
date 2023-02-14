#include <stdio.h>
#include "vec_sum.h"

long array[] = {-1,-1,-1};
long* ptrvec = array;
short num = sizeof(array)/sizeof(array[0]);

int main(void) {
	
	printf("Number of elements in array %d \n",num);
	printf("The result of sum is %ld \n",vec_sum());
	printf("The result of avg is %ld \n",vec_avg());
	
	
	return 0;
}
