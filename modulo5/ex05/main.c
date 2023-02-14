#include <stdio.h>
#include "fill_student.h"

int main(void) {
Student stu1;
Student* ptr1 = &stu1;

fill_student(ptr1, 28,20, "Diogo", "Porto");
update_address(ptr1, "Braga");
int arr[5] = { 1, 2, 3, 4, 5 };
int *ptr = arr;
update_grades(ptr1,ptr);
printf("Age: %d\n", ptr1->age);
printf("Number: %d\n", ptr1->number);
printf("Grades:");
for(int i =0;i<5;i++){
	printf(" %d", ptr1->grades[i]);
}
printf("\nName: %s\n", ptr1->name);
printf("Address: %s\n", ptr1->address);
return 0;
}
