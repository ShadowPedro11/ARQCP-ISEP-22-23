#include <stdio.h>
#include "swap.h"
int main() {
    int vec1[]={1,2,3,4,5};
    int vec2[]={6,7,8,9,10};
    int size=5;
    printf("Vec1 is:");
    for(int i=0;i<size;i++){
        printf("%d ",*(vec1+i));
    }
    printf("\nVec2 is:");
    for(int i=0;i<size;i++){
        printf("%d ",*(vec2+i));
    }
    printf("\n");
    swap(vec1,vec2,size);
    printf("Now Vec1 is:");
    for(int i=0;i<size;i++){
        printf("%d ",*(vec1+i));
    }
    printf("\nNow Vec2 is:");
    for(int i=0;i<size;i++){
        printf("%d ",*(vec2+i));
    }
    printf("\n");
    return 0;
}
