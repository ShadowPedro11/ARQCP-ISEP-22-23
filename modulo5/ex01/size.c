#include <stdio.h>

union union_u1{
    char vec[32];
    float a;
    int b;
}u;

struct struct_s1{
    char vec[32];
    float a;
    int b;
}s;

void size(void) {
printf("Union_u1: %ld\n", sizeof(u));
printf("Struct_s1: %ld\n", sizeof(s));
}
