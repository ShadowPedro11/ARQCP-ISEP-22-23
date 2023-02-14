#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

int main(void) {
printf("Valor op1:");
scanf("%d",&op1);
printf("Valor op2:");
scanf("%d",&op2);
printf("sum = %d\n",sum());
printf("sum_v2 = %d\n",sum_v2());
printf("sum_v3 = %d\n",sum_v3());
return 0;
}
