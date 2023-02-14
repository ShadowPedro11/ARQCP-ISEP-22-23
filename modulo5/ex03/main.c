#include <stdio.h>
#include "fill_students.h"


int main(void) {
Student stu1;
Student stu2;
Student stu3;
Student stu4;
Student stu5;
Student studentsArray[] = {stu1,stu2,stu3,stu4,stu5};
Student* ptr1 = &stu1;	

fill_student(ptr1, 28,20, "Diogo", "Porto");
printf("%d\n", ptr1->age);
printf("%d\n", ptr1->number);
printf("%s\n", ptr1->name);
printf("%s\n", ptr1->address);
return 0;
}
