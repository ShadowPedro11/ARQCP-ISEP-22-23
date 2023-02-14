#include <stdio.h>
#include "vec_add_two.h"

int num= 5;
int array[] = {4,2,-6,5,-8};
int *ptrvec = array;

int main(void) {
	
	vec_add_two();
	
	for(int i= 0; i < num; i++){
		
		printf("%d\n", array[i]);
		
	}
	return 0;
}
