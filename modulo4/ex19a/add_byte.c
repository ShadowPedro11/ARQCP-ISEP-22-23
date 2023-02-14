
void add_byte(char x, int *vec1, int *vec2){
int size = *vec1+1;
*vec2 =*vec1;

for(int i=1;i<size;i++){
	*(vec2+i)=*(vec1+i);            //copy the value to vec2
	char byte = (char) *(vec2+i);   //access the first byte of vec2
	byte = byte + x;                //add x to firts byte
	int mask = 0xFFFFFF00;          //create a mask
	*(vec2+i) = *(vec2+i) & mask;   //clear the the first byte of vec 2 using the mask
	*(vec2+i) = *(vec2+i) | byte;   //using or operator change the first byte to the value in "byte"
}
	
	
}
