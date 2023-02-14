#include <stdio.h>
#include "stack.h"


long *add_stack_func(long *stack,long elements,long num){               //add stack funtion
	                                                                    //
	stack = update_stack(stack,elements+1);                             //update stack size 
	                                                                    //
	*(stack+elements)=num;                                              //add num to stack
	elements++;                                                         //add 1 to elements
	                                                                    //
	printf("-----Stack-----\n");                                        //Print Stack
	for(int i = 0;i<elements;i++){                                      //
		printf("%ld\n",*(stack+i));                                     //
	}                                                                   //
	printf("---------------\n");                                        //
                                                                        //
	return stack;                                                       //
}


long *remove_stack_func(long *stack,long elements){                     //
	                                                                    //
	printf("-----Stack-----\n");                                        //Print Stack before Removing action
	for(int i = 0; i<elements;i++){                                     //
		printf("%ld\n",*(stack+i));                                     //
	}                                                                   //
	printf("---------------\n");                                        //
	                                                                    //
	*(stack+elements-1)=0;                                              //remove element from stack
	stack = update_stack(stack,elements-1);                             //update stack whit a smaller size
	elements--;                                                         //remove 1 from elements
	                                                                    //
	printf("---------------\n");                                        //
	printf("-LIMPAR--STACK-\n");                                        //
	printf("---------------\n");                                        //
                                                                        //
printf("-----Stack-----\n");                                            //Print Stack after Removing action
	for(long i = 0; i<elements;i++){                                    //
		printf("%ld\n",*(stack+i));                                     //
	}                                                                   //
	printf("---------------\n");                                        //
	                                                                    //
	return stack;                                                       //
}
