#include <stdlib.h>
#include "new_matrix.h"

int **add_matrixes(int **a, int **b, int y, int k){

	int **added_matrix = new_matrix(y,k);
	
	for(int i=0; i<y; i++){
		for(int j=0; j<k; j++){
			*(*(added_matrix+i)+j)= *(*(a+i)+j) + *(*(b+i)+j);
		}
	}
   return added_matrix;
}
