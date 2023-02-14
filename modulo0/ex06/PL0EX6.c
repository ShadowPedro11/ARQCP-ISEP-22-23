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
    char num1string[20];
    printf("Enter number1: ");
    scanf("%s", num1string);
    char num2string[20];
    printf("Enter number2: ");
    scanf("%s", num2string);
    int num1 = string_to_int(num1string);
    int num2 = string_to_int(num2string);
    float average =(float) (num1+num2)/2;
    printf("The average is %.2f\n",average);
return 0;
}
