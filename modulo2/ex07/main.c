#include <stdio.h>
#include "asm.h"

short s1 = 0xFAA;  //00001111 10101010
short s2 = 0x111;  //00000001 00010001  
                   //00010001 010101011
int main(){

    printf("%hd\n", crossSumBytes());

    return 0;
}
