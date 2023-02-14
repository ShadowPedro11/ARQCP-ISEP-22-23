/* O método cria uma variável intermédia onde guarda os valores para o integers só que e formato short.
 */

void compress_shorts(short* shorts,int n_shorts, int* integers){

int i = 0;
short *intermedia = (short *) integers;

while (i< n_shorts){
(*(intermedia + i)) = (*(shorts + i));
i++;
}
}
