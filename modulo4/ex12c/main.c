#include <stdio.h>
#include "count_bits_one.h"

int main(void){
	
	int num = 5;
	short shr[] = {4,6,24,7,34};
	short *ptr = shr;
	
	printf ("%d\n", vec_count_bits_one(ptr, num));
	
	return 0;
}
