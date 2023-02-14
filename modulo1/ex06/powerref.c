/* O método primeiro verifica se o y é valor positivo ou negativo e faz as mudanças à operação consoante o resultado.
 * Após as verificações, multiplica o X Y vezes sumando o seu valor numa variável intermédia que no final transfere o seu valor para X.
 */

void power_ref (int* x, int y){
 int finalNumber = 1;

 if(y < 0){
 *x = 1/(*x);
 y = - y;
 }

for (int i = 0; i < y; i++){
finalNumber = finalNumber * *x;

}
*x = finalNumber;
}
