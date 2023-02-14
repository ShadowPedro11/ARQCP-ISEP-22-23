#include "upper2.h"
void upper2(char *str){
    int i=0;
    // run all the string
    while(*(str+i)!='\0'){
		// if an letter is not in Upper case it make it using the ASCII value
        if(*(str+i) >= 'a' && *(str+i) <= 'z') {
         *(str+i) = *(str+i) -32;
      }
      i++;
   }
}
