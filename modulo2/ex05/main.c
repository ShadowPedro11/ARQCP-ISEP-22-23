#include <stdio.h>
#include "swapBytes.h"
short s =0x55aa;
int main(void) {
printf("%X\n", s);	
s = swapBytes();	
printf("%X\n",s);
return 0;
}
