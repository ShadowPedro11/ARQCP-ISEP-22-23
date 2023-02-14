#include <stddef.h>
int distance(char *a, char *b){
int ret =0;
int i=0;
while(*(a+i)!='\0' && *(b+i)!='\0'){    //check the end of the string
char mask = *(a+i) ^ *(b+i);            //Use operator xor, if bits equals is 0 else is 1
if(mask != 0){                          //If mask diff 0 the the char are diff
ret++;                                  //add 1 
}
i++;                                    //inc i
}


if((*(a+i)=='\0' && *(b+i)!='\0')||(*(b+i)=='\0' && *(a+i)!='\0')){    //check if the end of an string matches with the end of the other
	return -1;                                                         //
}


	
return ret;	
	
}
