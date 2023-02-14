#include <stdio.h>
#include "fill_s2.h"


int main(void) {

s2 s;
s2* ptr =&s;
fill_s2(ptr,{'9','1','3'},2,{'4','5','8'});

for(int i=0; i<3; i++){
printf("C:%c\n", ptr->c[i]);
}

for(i = 0; i<3; i++){
printf("D:%w\n", ptr->w[i]);
}

printf("J:%d\n", ptr->j);

return 0;
}
