#include <stdio.h>
#include "frequencies.h"

char array[] = {2,1,0};
char* ptrgrades = array;

int num = sizeof(array)/sizeof(array[0]);


int array2[23];
int* ptrfreq = array2;


int main(void) {
	
	
	frequencies();
	
	
	for(int i = 0; i < num; i++){
	printf("%d ",array[i]);
	}
	printf("\n");
	
	for(int i = 0; i < 21; i++){
	printf("%d ",array2[i]);
	}
	printf("\n");
	
	
	return 0;
}
