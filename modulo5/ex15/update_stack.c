#include <stdlib.h>
#include <stdio.h>
#include "stack.h"

long *update_stack(long *stack,long elements){
	long *temp = NULL;                                                  //initiale variable to check realloc action
	temp = (long*) realloc(stack,elements * sizeof(long));              //realloc using temporary varable
	                                                                    // 
	if(temp!=NULL){                                                     //check realloc return
		stack=temp;                                                     //set stack as value of temporary variable
		temp=NULL;                                                      //set temp as NULL
	}                                                                   //
	                                                                    //
	free(temp);                                                         //free memory of temp variable
	                                                                    //
	return stack;                                                       //
}	
