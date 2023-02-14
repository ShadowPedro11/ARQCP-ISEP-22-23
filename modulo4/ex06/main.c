#include <stdio.h>
#include "test_equal.h"

int main(void){
	
	char strA[] = "bom dia";
	char strB[] = "bom dia12";
	
	char *a = strA;
	char *b = strB;
	
	printf("%d\n", test_equal(a, b));
	
return 0;
}
