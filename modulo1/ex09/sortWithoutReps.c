int sort_without_reps(int *src, int n, int *dest){
    int index=0;
    int save=0;
    int repeat=0;
    // runs the array with all numbers
    for(int i=0;i<n;i++){
		//check if a number is on dest array
        for(int j=0; j<n;j++){
			//if a number exists repeat value is increased by one
            if(*(src+i)==*(dest+j)){
                repeat++;
            }
        }
        // check if a number is repeated 
        if(repeat==0){
			// if repeat is 0, that means that the number hs no repeats so it will be added to the array
            *(dest+index)=*(src+i);
            index++;
        }
        repeat=0;
    }
    
    // Algorithm to put the array in ascending order
    // runs the array until the last-to-second element
    for(int i=0;i<n-1;i++){
		//runs the array starting in element i , ending at the end of the array 
        for(int j=i;j<n;j++){
			//changes the elements (searching for the smaller one)
            if(*(dest+j)<*(dest+i)){
                save=*(dest+j);
                *(dest+j)=*(dest+i);
                *(dest+i)=save;
            }
        }
    }
    return index;
}
