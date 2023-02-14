#include <stdlib.h>
#include "return_unionB_b.h"

structA **new_matrix(int lines, int columns){

structA **new_matrix = NULL;	

new_matrix = (structA**) calloc(lines, sizeof(structA*)); 	
	
for(int i=0;i<lines;i++){
		*(new_matrix+i) = (structA*) calloc(columns, sizeof(structA)); 
    }
    
   return new_matrix;
}	
