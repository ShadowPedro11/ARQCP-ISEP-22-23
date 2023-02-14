#include <stdio.h>
#include "call_proc.h"

void sout(int x1, int *p1, int x2, int *p2, short x3, short *p3, char x4, char *p4){
printf("x1=%d \n*p1=%d \nx2=%d \n*p2=%d\nx3=%d\n*p3=%d\nx4=%d\n*p4=%d\n",x1,*p1,x2,*p2,x3,*p3,x4,*p4);
}

int main(void) {
int a =1;
int b=2;
short c=3;
char d = 4;
printf("Result: %d \n",call_proc(a,b,c,d));

return 0;
}
