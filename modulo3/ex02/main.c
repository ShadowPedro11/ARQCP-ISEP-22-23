#include <stdio.h>
#include "str_copy_porto.h"

char* ptr1;
char* ptr2;

int main(void){

char str1[] = "boas pessoal";
char str2[50];

ptr1 = str1;
ptr2 = str2;

str_copy_porto();
return 0;

}
