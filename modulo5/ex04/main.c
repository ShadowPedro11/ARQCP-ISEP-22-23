#include <stdio.h>
#include "fill_student.h"

int main(void) {
Student stu1;
Student* ptr1 = &stu1;

fill_student(ptr1, 28,20, "Diogo", "Porto");
update_address(ptr1, "Braga");
printf("%d\n", ptr1->age);
printf("%d\n", ptr1->number);
printf("%s\n", ptr1->name);
printf("%s\n", ptr1->address);
return 0;
}
