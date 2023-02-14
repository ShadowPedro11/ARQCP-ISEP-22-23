#include<stdio.h>

int count(int arr[],int n, int value){
    int numberOfAppearances=0;
    for(int i=0;i<n;i++){
        if(arr[i]==value){
            numberOfAppearances++;
        }
    }
    return numberOfAppearances;
}

int main(void){
    int size,value;
    int array[]={[0]=1,[1]=1,[2]=2,[3]=2,[4]=2,[5]=3};
    printf("Enter the size of the array:");
    scanf("%u",&size);
    printf("\n");
    printf("Enter the value for search:");
    scanf("%u",&value);
    printf("\n");
    printf("In this array we have %u times the number %u\n",count(array,(size),value),value);
    
    
return 0;
}