#include <stdio.h>
#include "calculator.h"
int num1=0, num2=0;
int main(void) {
printf("Valor op1:");
scanf("%d",&num1);
printf("Valor op2:");
scanf("%d",&num2);
   printf("Sum: %d + %d = %d\n", num1, num2, sum());
   printf("Subtract: %d - %d = %d\n", num1, num2, subt());
   printf("Multiply: %d * %d = %d\n", num1, num2, mult());
   printf("Division: %d / %d = %d\n", num1, num2, divi());
   printf("Modulus: %d %% %d = %d\n", num1, num2, mod());
   printf("Power of 2: %d ^ 2 = %d\n", num1, power2());
   printf("Power of 3: %d ^ 3 = %d\n", num1, power3());
   
return 0;
}
