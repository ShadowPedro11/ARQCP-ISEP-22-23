#include <stdio.h>
#include "keep_positives.h"

short array[] = {-1,2,-1,10,-1};
short* ptrvec = array;

unsigned short num = sizeof(array)/sizeof(array[0]);


int main(void) {
	
	for(unsigned short i = 0; i < num ; i++){
		
	printf("%d ",array[i]);
	}
	printf("\n");
	keep_positives();
	
	for(unsigned short i = 0; i < num ; i++){
		
	printf("%d ",array[i]);
	}
	printf("\n");

return 0;
}
