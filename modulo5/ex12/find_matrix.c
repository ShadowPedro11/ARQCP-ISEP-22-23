#include <stdlib.h>

int find_matrix(int **m, int y, int k, int num){
	
	int found = 0;
	
	for(int i = 0; i<y; i++){
		for(int j = 0; j<k; j++){
			if(*(*(m+i)+j) == num){
				found = 1;
			}
		}
	}
	
	return found;
}
