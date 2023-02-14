#include <stdio.h>
#include "powerref.h"

int main () {
int x = 4;
int y = 5;

power_ref(&x, y);
printf ("%d\n", x);
return 0;
}



