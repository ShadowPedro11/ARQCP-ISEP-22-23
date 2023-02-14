#include <stdio.h>
#include "rotate.h"

int main(void) {
int num = 1;
int nbits = 2;
printf("Left Rotation: %x\n",rotate_left(num,nbits));
printf("Right Rotation: %x \n",rotate_right(num,nbits));
return 0;
}
