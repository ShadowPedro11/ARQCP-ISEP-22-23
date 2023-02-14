#include <stdio.h>
#include "decrypt.h"

char array[] = "adda";
char* ptr1 = array;

int main(void) {
	
	printf("Initial array %s \n",array);
	printf("Number of changes %d \n",decrypt());
	printf("Decrypted array %s \n",array);
	
return 0;
}
