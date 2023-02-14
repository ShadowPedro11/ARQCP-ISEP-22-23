// the function first creates a mask that has all bits 1 and then shifts left (31 - pos) times
// stores a AND mask in result1
// stores b AND NOTmask in result2
// returns the sum of result1 and result2

int join_bits(int a, int b, int pos){
	
	int mask = 0xFFFFFFFF >> (31 - pos);
	
	int result1 = a & mask;
	int result2 = b & (~mask);
	
	return result1 + result2;
}
	
