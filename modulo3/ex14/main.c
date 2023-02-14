#include <stdio.h>
#include "exists.h"

int num = 5;
int vec[] = {5,3,2,5,2};
int *ptrvec = vec;
int x;

int main (void) {
	
	printf ("%d\n", vec_diff());
	
	return 0;
}
