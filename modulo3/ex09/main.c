#include <stdio.h>
#include "vec_search.h"

short array[] = {-1,-1,-1,-1};
short* ptrvec = array;
short x = -3;

int num = sizeof(array)/sizeof(array[0]);


int main(void) {
	
	printf("The result expected is %p \n",(ptrvec+3));
	printf("The result is %p \n",vec_search());

return 0;
}
