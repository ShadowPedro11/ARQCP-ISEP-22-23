#include <stdio.h>
#include "fill_s1.h"


int main(void) {

s1 s;
s1* ptr =&s;
fill_s1(ptr,'1',2,'3',4);	
printf("C:%c\n", ptr->c);
printf("I:%d\n", ptr->i);
printf("D:%c\n", ptr->d);
printf("J:%d\n", ptr->j);

return 0;
}
