#include <stdio.h>
#include "frequencies.h"

int main(){

float grades [] = {13.25, 4.32,8.65, 17.80, 20.00, 0.00, 7.54, 14.31, 0.00};
int freq [] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

frequencies(grades, sizeof(grades)/sizeof(grades[0]), freq);

for(int i=0; i<sizeof(freq)/sizeof(freq[0]); i++){
printf("%d", *(freq + i));
}
printf("\n");
return 0;
}
