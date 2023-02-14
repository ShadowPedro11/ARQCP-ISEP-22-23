#include <stdio.h>
#include <stdlib.h>
#include "add_matrixes.h"
#include "new_matrix.h"

int main(void) {
	
	int y = 4;
	int k = 20;

	int **added_matrix = add_matrixes(lines, columns);

	printf("RESULTADO_endereço_matrix: %p\n", added_matrix);

	for (int i = 0; i < y ; i ++){
		free (*(added_matrix+i) );
	}
	free(added_matrix);
	
return 0;
}
