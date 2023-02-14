#include <stdio.h>
#include "compressShorts.h"

int main(){

short shorts[] = {1,2,3,4,5,6,7,8};
int n_shorts = (sizeof(shorts)/sizeof(shorts[0]));
int integers[n_shorts/2];

compress_shorts(shorts, n_shorts, integers);

for (int i= 0; i< (n_shorts/2); i++){

if (i == (n_shorts/2)-1){

printf("%d", *(integers +i));

} else {

printf("%d ", *(integers + i));

}
}
printf("\n");

return 0;
}






