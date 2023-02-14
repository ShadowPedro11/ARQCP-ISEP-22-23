#include<stdio.h>

int Sum(int a, int b){
return a+b;
}

int main(void){
int a,b;
int result = 0;
while(result<10){
printf("Insert a:");
scanf("%d",&a);
printf("\n");
printf("Insert b:");
scanf("%d",&b);
result = Sum(a,b);
printf("The result of %u + %u is : %u\n ",a,b,result);    
}
return 0;
}