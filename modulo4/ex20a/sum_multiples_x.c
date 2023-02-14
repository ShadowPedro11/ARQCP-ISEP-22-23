// the function first shifts x right 8 times
// then it creates a mask with all bits 1 in the first byte and x becomes x AND mask
// it creates variables sum and j
// goes on a while cicle hwere it checks if vec + j is different to 0, and i (vec + j) % x equals 0, so if vec+j is multiple of x
// if so, the it adds the value pointed by vec to sum and increments j
// returns sum

int sum_multiples_x(char *vec, int x){
	
	x = x >> 8;
	int mask = 0x000000FF;
	x = x & mask;
	int sum = 0;
	int j = 0;
	
	while (*(vec + j) != 0){
		if(*(vec + j) % x == 0){
			sum = sum + *(vec + j);
		}
		j++;
	}
	return sum;
}
