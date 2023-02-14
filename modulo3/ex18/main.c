#include <stdio.h>
#include "sort_without_reps.h"

int num = 3;
short vecScr[] = {-1,-3,-3};
short vecDest[3];
short *ptrsrc = vecScr;
short *ptrdest = vecDest;

int main(void){
	
	printf ("%d\n", sort_without_reps());
	printf("\n");
    for (int i = 0; i < num; i++){
        printf("%hd\n", vecDest[i]);
    }
    return 0;
}
