#include <stdio.h>
#include "test_flags.h"
int op1 = 0;
int op2 = 0;

int main(void) {

int c = test_flags();
if(c=1){
	printf("flags is activated  %d\n",c);
	}
if(c==0){
	printf("flags is not activated  %d\n",c);
	}	
return 0;
}
