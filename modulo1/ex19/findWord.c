#include <string.h>
char* find_word(char* word, char* initial_addr){
    int size = strlen(word);
    int j=0;
    int count=0;
    // runs until initial_addr is null
    for(int i=0;*(initial_addr+i)!='\0';i++){
		// check if the char of initial_addr+i matches whit the first char of word
        if(*(initial_addr+i)==*(word+j)){
			// if it matches runs the array while word until it be different
            while((*(initial_addr+i)==*(word+j))&&(*(initial_addr+i)!='\0')){
				// add +1 to count
                count++;
                i++;
                j++;
        }
        // ending the while cicle check if the word has the same size of the last sequence
            if(count==size){
				// if the size match, it means that we have found the word
				// Now we have to return the address of the word using the initial_addr adding i to go actual address and taking count to go to the address in which was found 
				char* itr =initial_addr+i-count;
                return itr;
            }
            
        i=i-count;   
        j=0;
        count=0;
        
        }
    }
    // if we dont found an address it returns NULL
return NULL;
}
