#include <stdio.h>
#include "count_max.h"

int num = 5;
int vec[] = {2,5,6,4,2};
int *ptrvec = vec;

int main (void){
	
	printf("%d\n", count_max());
	
	return 0;
}
