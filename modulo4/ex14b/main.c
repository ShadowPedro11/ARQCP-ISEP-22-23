#include <stdio.h>
#include "reset_bit.h"

int main(void){
	
	int pos = 12;
	int num[] = {5};
	int *ptr = num;
	
	printf("%d\n", reset_bit(ptr, pos));
	
	return 0;
}
