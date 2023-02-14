#include <string.h>
int where_is (char *str, char c, int *p){
    int numOfTimes=0;
    int lenght = strlen(str);
    //runs the string
    for(int i=0;i<lenght;i++){
		//check if a char of the string equals the wanted char
        if(*(str+i)==c){
			//if it equals the index where he is found is added to the p string
            *(p+numOfTimes)=i;
            numOfTimes++;
        }
    }
    
    return numOfTimes;
}
