#include <stdio.h>
#include "copyvec.h"

int main (){

int vec1 [] = {2,5,6,3,4};
int n = 4;
int vec2 [4];

copy_vec(vec1, vec2, n);

for (int i =0; i<n; i++){
	printf("%d " , *(vec2 + i));
}
printf("\n");

return 0;

}
