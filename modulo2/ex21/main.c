#include <stdio.h>
#include "newSalary.h"
short code=0;
short currentSalary=0;
int main(void) {
	code=20;
	currentSalary=600;
	printf("Salary is %d, code is %d, ", currentSalary, code);
	printf("new salary = %d\n", new_salary());

	code=21;
	currentSalary=500;
	printf("Salary is %d, code is %d, ", currentSalary, code);
	printf("new salary = %d\n", new_salary());

	code=22;
	currentSalary=400;
	printf("Salary is %d, code is %d, ", currentSalary, code);
	printf("new salary = %d\n", new_salary());

	code=23;
	currentSalary=300;
	printf("Salary is %d, code is %d, ", currentSalary, code);
	printf("newsalary = %d\n", new_salary());


return 0;
}
