#include <stdio.h>
#include "swap.h"

int num= 10;
char str1[] = "Good night";
char str2[] = "Hello John";
char *ptr1 = str1;
char *ptr2 = str2;

int main(void){
	
	swap();
	
	printf("First string: %s\n", str1);
	printf("Second string: %s\n", str2);
	
	return 0;
	
}
