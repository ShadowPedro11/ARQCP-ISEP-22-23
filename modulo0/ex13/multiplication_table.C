#include <stdio.h>
void multiplication_table(){
    int num=0;
    while(num<=0){
    printf("Select the number of multiplications table:");
    scanf("%d",&num);
    }
    for(int i=1;i<(num+1);i++){
        multiplication_table_n(i);
    }
    
}