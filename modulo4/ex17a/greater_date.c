
unsigned int greater_date(unsigned int date1, unsigned int date2){
	
short year1 =(short) (date1 >> 8);        //shift 8 bits to right
short year2 =(short) (date2 >> 8);        //shift 8 bits to right
if(year1>year2){
	return date1;
}else if(year1<year2){
	return date2;
}
 	
char day1 =(char)(date1 >> 24);        //shift 24 bits to right
char day2 =(char)(date2 >> 24);        //shift 24 bits to right
if(day1>day2){
	return date1;
}else if(day1<day2){
	return date2;
}
	
char month1 =(char)date1;        //cast to char
char month2 =(char)date2;        //cast to char
if(month1>month2){
	return date1;
}else if(month1<month2){
	return date2;
}	

return date1;
}
