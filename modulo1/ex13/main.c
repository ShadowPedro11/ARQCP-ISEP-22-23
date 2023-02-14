#include <stdio.h>
#include <string.h>
#include "whereIs.h"
int main() {
    char str[]="gIXoYLKHtaggmkTUqJnI";
    char c = 'g';
    int size = strlen(str);
    int p[size];
    int newSize = where_is(str,c,p);
    printf("The char %c has been found on indexes: ",c);
    for(int i=0;i<newSize;i++){
        printf("%d ",*(p+i));
    }
    printf("\n");
    return 0;
}