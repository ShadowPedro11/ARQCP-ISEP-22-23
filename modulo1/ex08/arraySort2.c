/* O método ordena o vetor por ordem crescente ao verificar qual é o maior número do vetor comparando os vários números.
 * Ao encontrar, este troca de posição no vetor movendo todos os outros membros uma casa para a frente.
 * Repete este processo até ter o vetor completo ao qual já não tem mais números para comparar e termina o método.
 */

void array_sort2(int *vec, int n){
int i = 0;

while(i<n-1){
         int save1 = *(vec +i);
         int saveAdr =0;
         for(int j=i+1;j<n;j++){
             if(save1> *(vec+j)){
                 save1 = *(vec+j);
                  saveAdr = j;
             }
         }
         if(save1!=*(vec+i)){
             int save2 = *(vec +i);
             *(vec+i)=*(vec+saveAdr);
             *(vec+saveAdr)=save2;
         }
         i++;
     }

}
