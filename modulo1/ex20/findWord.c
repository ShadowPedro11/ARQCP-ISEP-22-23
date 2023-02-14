#include <string.h>
char* find_word(char* word, char* initial_addr){
    int size = strlen(word);
    int j=0;
    int count=0;
    
    for(int i=0;*(initial_addr+i)!='\0';i++){
        if(*(initial_addr+i)==*(word+j)){
            while((*(initial_addr+i)==*(word+j))&&(*(initial_addr+i)!='\0')){
                count++;
                i++;
                j++;
        }
            if(count==size){
				char* itr =initial_addr+i-count;
                return itr;
            }
        i=i-count;   
        j=0;
        count=0;
        
        }
    }
return NULL;
}
