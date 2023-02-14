#include<stdio.h>
#include<string.h>

int count_words(char *str){
    int numOfWords=0;
    char lastChar=str[0];
	for(int i=0; i<=strlen(str); i++){
		if ((str[i] == ' ' || str[i] == '\0') && lastChar!=' '){
			numOfWords ++;
		}
		lastChar=str[i];
	}
	return numOfWords;	
}

int main(void){
    char str[200];
    printf("Enter your text: ");
    gets(str, sizeof(str), stdin);
    int numOfWords = count_words(str);
    printf("\n Your text have %u words",numOfWords);
return 0;
}
