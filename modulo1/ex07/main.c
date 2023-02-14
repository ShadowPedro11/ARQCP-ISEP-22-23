#include <stdio.h>
#include "arraySort1.h"
int main() {
    int vec[]={2,1,3,4,7,6,5,9,8};
	int size = 9;
	array_sort1(vec,size);
	printf("The array sorted is: ");
	for (int i = 0; i < size; i++)
	{
		printf("%d ", *(vec + i));
		
	}
	printf("\n");
    return 0;
}
