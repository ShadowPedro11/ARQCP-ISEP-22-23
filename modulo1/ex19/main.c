#include <stdio.h>
#include <ctype.h>
#include "findWord.h"
int main() {
    char string[]="(aarrxrt xrt xrt xrt)";
    char word[]="xrt";
    printf("The address is:%p\n",find_word(word,string));
    
    printf("Expected Address is:%p\n",string+4);
    return 0;
}
