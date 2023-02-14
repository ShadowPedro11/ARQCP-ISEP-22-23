#include <stdio.h>
#include "str_cat.h"

char str1[40] = "Hello world";
char str2[40] = "how is it going";
char str3[80];

char *ptr1 = str1;
char *ptr2 = str2;
char *ptr3 = str3;

int main(void){

str_cat();

printf("%s\n", str3);

return 0;

}
