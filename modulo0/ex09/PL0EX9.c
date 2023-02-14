#include<stdio.h>
#include<string.h>
int check_format(char *arr){
    char hexadecimal[7] = "ABCDEF";
    char decimal[3] = "89";
    char octal[7] = "234567";
    char binary[3] = "01";
    
    for(int i =0;i<strlen(arr);i++){
        for(int j=0;j<strlen(hexadecimal);j++){
            if(arr[i]==hexadecimal[j]){
                return 0;
            }
        }
    }
    for(int i =0;i<strlen(arr);i++){
        for(int j=0;j<strlen(decimal);j++){
            if(arr[i]==decimal[j]){
                return 1;
            }
        }
    }
    for(int i =0;i<strlen(arr);i++){
        for(int j=0;j<strlen(octal);j++){
            if(arr[i]==octal[j]){
                return 2;
            }
        }
    }
    for(int i =0;i<strlen(arr);i++){
        for(int j=0;j<strlen(binary);j++){
            if(arr[i]==binary[j]){
                return 3;
            }
        }
    }
}

int main(void){
    char num[10];
    printf("Enter your number: ");
    scanf("%s",num);
	char format = check_format(num);
	if (format == 0){
        printf("\nNumber: %s is hexadecimal \n", num);
    }
    if (format == 1){
        printf("\nNumber: %s is decimal \n", num);
    }
    if (format == 2){
        printf("\nNumber: %s is octal \n", num);
    }
    if (format == 3){
        printf("\nNumber: %s is binary \n", num);
    }
return 0;
}
