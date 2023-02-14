// the function first creates a mask with a bit 1 only in the position given by pos
// if the value pointed by ptr and mask equals 0 then returns 0
// else the value pointed by ptr becomes ptr and NOTmask
// returns 1

int reset_bit(int *ptr, int pos){
	
	int mask = 1 << pos;
    
    if ((*ptr & mask) == 0) {
        return 0;
    } else {
		*ptr = *ptr & ~mask;
        return 1;
    }
}
