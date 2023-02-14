#include <stdlib.h>

char *new_str(char str[80]){
	
	int i = 0;
    while (*(str + i) != 0) {
        i++;
    }

    char *new_str = (char *) malloc ((i+1)* sizeof(char));

    for (int j = 0; *(str+j) != 0; j++) {
        *(new_str + j) = *(str + j);
    }
    
    return new_str;
}
