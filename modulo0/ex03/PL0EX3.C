#include<stdio.h>
int SIZE = 30;
void fill_array(int arr[]){
    for(int i=0; i<SIZE;i++){
        printf("Enter the number %u :",i+1);
        scanf("%d",&arr[i]);
        printf("\n");
    }
}
float averageOfArray(int arr[]){
    int sum = 0;
    for (int i = 0; i<SIZE; i++){
        sum = sum + arr[i];
    }
    return sum/SIZE;
}

int main(void){
    int array[SIZE];
    fill_array(array);
    float average = averageOfArray(array);
    printf("Average of this Array is: %.2f\n", average);
return 0;
}
