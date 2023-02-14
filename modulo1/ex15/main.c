#include <stdio.h>
#include "sets.h"
extern int nSets;
int main() {
   int num=11;
   int limit=21;
   int vec[num];
   // populate the array
   populate(vec,num,limit);
   // runs the array and print it values
   for(int i=0;i<num;i++){
	   printf("%d ",*(vec+i));
   }
   printf("\n");
   int x,y,z;
   // runs the array and check if vi<vi+1<vi+2
   for(int i=0;i<num-2;i++){
       x=*(vec+i);
       y=*(vec+i+1);
       z=*(vec+i+2);
       // if it match the condition it calls inc_nsets function
       if(check(x,y,z)==1){
          inc_nsets(); 
       }
   }
   // print the number of times that vi<vi+1<vi+2
   printf("Num os sets: %d\n",nSets);
    
    return 0;
}
