#include <stdio.h>
#include "capitalize.h"

int main(){

char str[] = "boas pessoal";
capitalize(str);
int i= 0;

while (*(str+i) !='\0'){
printf("%c", *(str+i));
i++;
}
printf("\n");
return 0;
}
