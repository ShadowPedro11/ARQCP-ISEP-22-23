int sum_even(int *p, int num){
     int sum=0;
     // run all array (num is the size)
     for(int i=0;i<num;i++){
		 // check is the num is even
        if(*p%2==0){
			// sums the number
             sum=sum + *p;
        }
        // go to next address of the array
        p++;
    }
    //return the sum of all even elements
 return sum;
}
