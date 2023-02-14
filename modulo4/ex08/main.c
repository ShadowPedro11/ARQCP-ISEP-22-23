#include <stdio.h>
#include "calc.h"

int main(void){

int a = 5;
int c = 7;
int d[] = {2};
int *b = d;

printf ("%d\n", calc(a,b,c));

return 0;
}
