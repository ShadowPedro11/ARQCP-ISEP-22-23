#include <stdio.h>
#include "changes.h"

int main(void){
	
	int a[] = {4,5,7,2};
	int *ptrvec = a;
	int num = 4;
	
	changes_vec(ptrvec, num);
	
	for (int i = 0; i < num; i++){
	printf("%d\n", a[i]);
	}
	return 0;
}
