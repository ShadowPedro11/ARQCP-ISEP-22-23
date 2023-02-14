#include <stdio.h>
#include "fill_students.h"

void fill_student(Student *s, char age, short number, char *name,char *address) {

s->age=age;                               //set Student age to age(passed by parameter)
s->number = number;                       //set Student number to number(passed by parameter)
int i=0;
for(i=0;*(name+i)!=0;i++){                //for to set Student name to name(passed by parameter)
	*(s->name+i)=*(name+i);
}

*(s->name+i)='\0';                        //end Student name

for(i =0;*(address+i)!=0;i++){            //set Student address to address(passed by parameter)
	*(s->address+i)=*(address+i);
}
*(s->address+i)='\0';                     //end Student address
}
