#include <stdio.h>
#include <ctype.h>
#include "findAllWords.h"
#include <stddef.h>

int main() {
	
    char str[]="aarrxrt xrt xrt xrt";
    char word[]="xrt";
    char *addrs[80]= {NULL};
    
    find_all_words(str,word, addrs);
    
    printf("The Addresses given are:\n");
    printf("%p\n", (str + 4));
    printf("%p\n", (str + 8));
    printf("%p\n", (str + 12));
    printf("%p\n", (str + 16));
    printf("The Addresses found are:\n");
    
    for (int i = 0; addrs[i]!= NULL; i++){
    printf("%p\n", *(addrs+i));
}
    printf("\n");
   
    return 0;
}
