#include <stdio.h>
#include "sum_multiples_x.h"

int main(void){
	
	char a[] = {3,5,11,12,7,4,0};
	char *vec = a;
	int x = 0xf0301;
	
	printf("%d\n", sum_multiples_x(vec, x));
	
	return 0;
}
