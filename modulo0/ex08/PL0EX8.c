#include<stdio.h>
#include<string.h>

int integer_part(char *x){
    int integer=0;
    int i =0;
    while(x[i]!='.'){
        integer = (integer +(x[i]-'0'))*10;
        i++;
    }
    return integer/10;
}
    

int fractinal_part(char *x){
    int controller=0;
    int fractional=0;
    for(int i=0;i<strlen(x);i++){
        if(controller==1){
            fractional = (fractional +(x[i]-'0'))*10;
        }
        if(x[i]=='.'){
            controller=1;
        }
    }
    return fractional/10;
}

int main(void){
    char x[] ="123.456";
    int x_int = integer_part(x);
    int x_frac = fractinal_part(x);
    printf("The integer part is %u and the fractional part is %u",x_int,x_frac);
return 0;
}
