#include <stdio.h>
#include "seven_count.h"

char vec[] = "A7B7C7D";
char* ptr1 = vec;

int main(void) {
printf("Number of 7 found is: %d\n", seven_count());
return 0;
}
