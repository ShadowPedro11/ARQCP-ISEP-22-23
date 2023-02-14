#include <stdio.h>
#include "array_sort.h"


short array[] = {1,2,3};
short* ptrvec = array;
int num = sizeof(array)/sizeof(array[0]);


int main(void) {
	
	for(unsigned short i = 0; i < num ; i++){
		printf("%d ",array[i]);
	}
	printf("\n");
	
	array_sort();
	
	for(unsigned short i = 0; i < num ; i++){
		printf("%d ",array[i]);
	}
	printf("\n");

return 0;
}
