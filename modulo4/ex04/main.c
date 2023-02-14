#include <stdio.h>
#include "sum_smaller.h"

int main(void){
	
	int num1 = -1;
	int num2 = -2;
	int *smaller;
	
	printf("The sum is %d \n", sum_smaller(num1, num2, smaller));
	printf("The smaller number is %d\n", *smaller);
	
	return 0;
	
}
