#include <stdio.h>
void print(int x, int *xPtr, float y, int vec[]){
   printf("The value of x is %d and the values of y is %.4f \n ",x,y);
   printf("The address (in Hexadecimal) of x is %p and xptr is %p\n",&x,xPtr);
   printf("The value pointed by xptr is %d \n ",*xPtr);
   printf("The address of vec is %p \n ",vec);
   printf("The values of vec [0], vec [1], vec [2] and vec [3] are respectively: %u, %u, %u, %u \n ",vec[0],vec[1],vec[2],vec[3]);
   printf("The addresses of vec [0], vec [1], vec [2] and vec [3] are respectively: %p, %p, %p, %p \n ",&vec[0],&vec[1],&vec[2],&vec[3]);
}


