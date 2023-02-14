#include <stdio.h>
#include "sortWithoutReps.h"
int main() {
    int src[]={6,5,4,1,3,7,8,9,1,2,6,5,10,1,2};
    int n = 15;
    int dest[15];
    int size = sort_without_reps(src,n,dest);
    printf("The array sorted is: ");
	for (int i = 0; i < size; i++){
		printf("%d ", *(dest + i));
	}
	printf("\n");
    return 0;
}
