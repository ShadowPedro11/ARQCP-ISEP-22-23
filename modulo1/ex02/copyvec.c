/* O método percorre o vetor 1 n vezes e pega no valor de cada posição e mete-o no segundo vetor.
 */

void copy_vec(int *vec1, int *vec2, int n){
int i;
for(i= 0; i<n; i++){
*(vec2 + i) = *(vec1 + i);
}

}
