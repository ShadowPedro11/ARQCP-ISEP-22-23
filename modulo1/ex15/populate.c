#include <stdlib.h>
void populate( int *vec , int num, int limit){
	// runs  the vec array size
     for(int i=0;i<num;i++){
		 // generates an random number and add it to the array at index i
         *(vec+i) = rand() % limit;   
     }
 }
