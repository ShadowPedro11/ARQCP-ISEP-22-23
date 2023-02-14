#include <stdio.h>
#include "whereExists.h"
#include <stddef.h>

int main(){

char str1[] = "abc";
char str2[] = "jonasabciu";
char *pointerstr1 = str1;
char *pointerstr2 = str2;

char *exists = where_exists(pointerstr1, pointerstr2);

printf ("%p\n", exists);

}
