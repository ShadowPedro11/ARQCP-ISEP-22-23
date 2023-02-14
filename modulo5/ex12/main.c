#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"

int main(void) {
	
	int lines = 4;
	int columns = 200;

	int **newMatrix = new_matrix(lines, columns);

	printf("RESULTADO_endereço_matrix: %p\n", newMatrix);

	for (int i = 0; i < lines ; i ++){
		free (*(newMatrix+i) );
	}
	free(newMatrix);
	
return 0;
}
