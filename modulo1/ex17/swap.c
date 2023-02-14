void swap(int* vec1, int* vec2, int size){
	// run the size of the arrays
    for(int i=0;i<size;i++){
		// save the value of vec 1 at index i and swaps it with the value of vec 2 at index i
       int swap = *(vec1+i);
       *(vec1+i)=*(vec2+i);
       *(vec2+i)=swap;
    }
    
}
