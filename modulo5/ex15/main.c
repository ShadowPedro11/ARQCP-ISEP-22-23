#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

int main(void) {
	
	long elements = 0;                                                           //number of elements in the stack
	long* stack=NULL;                                                            //stack initialization
	stack = (long*) calloc(elements, sizeof(long));                              //Reserve space for stack 
	long func = 3;                                                               //initalize stack as 3 (1,2,0 are functions)
	long num = 0;                                                                //initialize variable num to read from console
	int index = 0;                                                               //initialize index to controll operations
	while (func != 0){                                                           //Program cycle - will run until the user select 0
		printf("Inserir na Stack-> 1 || Retirar da Stack-> 2 || Fechar-> 0\n");  //Message whit instruction of function for user
		scanf("%ld",&func);                                                      //Read function pretended in the console
		if(func==1){                                                             //Function 1-Add to Stack (Push) selected
		while(num==0){                                                           //Read an number diff 0, from console to add to stac
		printf("Inserir um numero na Stack\n");                                  //
		scanf("%ld",&num);                                                       //Read the numbre from console
		}                                                                        //
		stack = add_stack_func(stack,elements,num);                              //call add stack function
		elements++;                                                              //increment number of elements
		index++;                                                                 //increment index
		num=0;                                                                   //reset num variable
		}else if(func==2){                                                       //Function 2-Remove from Stack (Pop) selected
			printf("A Retirar da Stack\n");                                      //
			if(index == 0){                                                      //Check if index is 0 (stack is empty)
				printf("Stack Vazia\n");                                         //
			}else{                                                               //
				stack = remove_stack_func(stack,elements);                       //call remove from stack function
				elements--;                                                      //decrement number of elements
				index--;                                                         //decrement index
			}                                                                    //
		}                                                                        //
	}                                                                            // 
	                                                                             // 	
	free(stack);                                                                 //free memory

return 0;
}
