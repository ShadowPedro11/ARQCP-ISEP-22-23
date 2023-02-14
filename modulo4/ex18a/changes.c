// the function first a variable used to manipulate the bits in the value pointed by ptr and shifts it right 8 times
// it then created a mask that has all bits 1 and shifts it right by 24
// checks if temporary_check AND mask is bigger than 15
// if so, then it shifts the mask left by 16 times and then changes the value pointed by ptr to ptr XOR mask

void changes(int *ptr){
	
	int temporary_check = *ptr;
	temporary_check = temporary_check >> 8;
	int mask = 0xFFFFFFFF >> 24;
	
	if ((temporary_check & mask) > 15){
		mask = mask << 16;
		*ptr = *ptr ^ mask;
	}
}
	
