#include <stdio.h>
#include "sum_first_byte.h"


long array[] = {-1,255,-1};
long* ptrvec = array;
int num = sizeof(array)/sizeof(array[0]);

int main(void) {
	
printf("The result is %d \n",sum_first_byte());

return 0;
}
