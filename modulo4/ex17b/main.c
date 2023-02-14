#include <stdio.h>
#include "greater_date.h"

unsigned int build_date( int year , int month , int day ) {

	return  (year << 8)  | (day <<24 ) |  month ;
}

int main(void) {
unsigned int date1 = build_date(2017,11,11);
unsigned int date2 = build_date(12,12,31);
printf("Geater date between %u and %u is %u\n",date1,date2,greater_date(date1,date2));
return 0;
}
