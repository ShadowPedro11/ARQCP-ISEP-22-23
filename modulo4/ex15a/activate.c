
int activate_bits(int a, int left,int right){
int mask;
                               // 10|111011|10
for(int i=0;i<right;i++){
	mask = 1<<i;               //shift bit left i times
	a = a|mask;                //or operator put the position to 1
}

for(int j=left+1;j<32;j++){
	mask = 1<<j;               //shift bit left j times
	a = a|mask;                //or operator put the position to 1
}

return a;
}
