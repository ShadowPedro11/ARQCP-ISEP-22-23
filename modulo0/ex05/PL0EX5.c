#include<stdio.h>
#include<string.h>

int string_to_int(char string[]){
    int aux1;
    int intToReturn=0;
    for(int i=0;i<strlen(string);i++){
        aux1= string[i]-'0';
        intToReturn = 10*intToReturn+aux1;
    }
    return intToReturn;
}

int main(void){
    char string[]="123456789";
    printf("%u\n",string_to_int(string));
return 0;
}
