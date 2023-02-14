#include <stdio.h>
#include <stdlib.h>
#include "return_unionB_b.h"

int main(void) {
	
unionB uv;
uv.a = 1;
uv.b = 55;
uv.c = 3;
uv.d = 55;

structA stra;
stra.a[0]=5;
stra.b=8;
stra.c=9;
stra.d=10;
stra.e=11;
stra.ub=uv;

	int lines = 4;
	int columns = 3;

	structA **newMatrix = new_matrix(lines, columns);
	
	for(int j=0;j<lines;j++){
		for(int k=0;k<columns;k++){
			newMatrix[j][k]=stra;
		}
	}

	printf("%d\n", return_unionB_b(newMatrix,2,2));

	for (int i = 0; i < lines ; i ++){
		free (*(newMatrix+i) );
	}
	free(newMatrix);

return 0;
}
