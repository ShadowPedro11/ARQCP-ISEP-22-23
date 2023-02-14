#include <string.h>
int palindrome(char *str){
    int size = strlen(str);
    char stringNoSpaces[size];
    int j=0;
    
    //run array and search for no blank chars
    for(int i=0;i<size;i++){
        if(*(str + i)!= ' '){
			if((*(str+i) >= 'a' && *(str+i) <= 'z') || (*(str+i) >= 'A' && *(str+i) <= 'Z')){
				//if is no blank upper the char and add it to "stringNoSpaces" array
				if(*(str+i) >= 'a' && *(str+i) <= 'z') {
				*(stringNoSpaces+j) = *(str+i) -32;
					}else{
					*(stringNoSpaces+j)=*(str + i);   
				}
            j++;
			}  
		}
    }
    // check if the new array is null by j, and if the array str is null by his first char
    if(j==0 || *str=='\0'){
        return 0;
    }
    //set the size of new array
    int sizeOfNewArray = j;
    //runs the second array
    for(int i=0;i<sizeOfNewArray;i++){
		// check if the first letter equals the last letter ... check if the second letter equals second-to-last letter ... check if the third letter equals third-to-last letter
        if(*(stringNoSpaces +i)!=*(stringNoSpaces+sizeOfNewArray-1)){
			//if not equals return o, meaning the word is not a palindrome
           return 0;
        }
        
        sizeOfNewArray--;
    }
    
    return 1;
}
