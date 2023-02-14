#include <stdio.h>
#include "distance.h"



int main(void) {
char string1[] ="abcde";
char string2[] ="abxdz";
char *a = string1;
char *b = string2;
printf("%s\n",string1);
printf("%s\n",string2);   
printf("%d\n",distance(a,b));
return 0;
}
