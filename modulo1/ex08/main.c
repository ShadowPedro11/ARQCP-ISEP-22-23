#include <stdio.h>
#include "arraySort2.h"


int main(){

int vec[]= {5,2,8,3,6,9,1,4};
int n = 8;

array_sort2(vec,n);
printf("The final array is ");

for(int i=0; i < n; i++){
printf("%d", *(vec +i));
}
printf("\n");
return 0;
}




