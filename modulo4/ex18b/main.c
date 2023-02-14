#include <stdio.h>
#include "changes.h"

int main(void){
	
	int a[] = {0xffffffff};
	int *ptr = a;
	
	changes(ptr);
	
	printf("%d\n", a[0]);
	
	return 0;
}
