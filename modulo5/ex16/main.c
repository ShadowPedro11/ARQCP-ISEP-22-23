#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "approved_semester.h"

int main(void){
	
	group g;
	
	unsigned short * grades = (unsigned short *) malloc(3 * sizeof(unsigned short));
	g.individual_grades = grades;
	
	printf("%d\n", approved_semester(&g));
	free(grades);
	
	return 0;
}
