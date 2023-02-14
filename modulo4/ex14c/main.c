#include <stdio.h>
#include "reset_bit.h"

int main(void){
	
	int pos = 12;
	int num[] = {5};
	int *ptr = num;
	
	reset_2bits(ptr, pos);
	
	printf("%d\n", num[0]);
	
	return 0;
}
