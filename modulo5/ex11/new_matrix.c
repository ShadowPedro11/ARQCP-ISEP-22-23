#include <stdlib.h>

int **new_matrix(int lines, int columns){

int **new_matrix = NULL;	                                            //declare pointer

new_matrix = (int**) calloc(lines, sizeof(int*)); 	                    //alocate space for "lines" pointer
	
for(int i=0;i<lines;i++){                                               //
		*(new_matrix+i) = (int*) calloc(columns, sizeof(int));          // in each pointer allocate space fot "columnes" int

    }
    
   return new_matrix;
}	
