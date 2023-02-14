//the function first creates a variable to save the sum of the active bits
//loops 32 times (number of bits in a int), where it checks if x and 1 equal 1(last bit is active)
//if true, if increments the number of active bits
//it then shifts x 1 to the right and does the function again
//returns the number of active bits

int count_bits_one(int x){
	
	int activebits =0;
	
	
	for (int i =0; i < 32; i++){
		if((x & 1) == 1){
			activebits++;
		}
        x = x >> 1;
	}

	return activebits;
}
