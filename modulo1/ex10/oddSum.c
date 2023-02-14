/* O método recebe um array com vários números, sendo o primeiro o tamanho do array.
 * O método pega nesse valor para usar como o tamanho e depois faz uma verificação se o número está numa posição par ou impar ao dividir o número por 2 e ver se é diferente de 0.
 * Após encontrar uma posição impár, pega no valor dessa posição e soma a uma variável que terá a soma final.
 * Faz este processo até terminar de percorrer o array.
 */

int odd_sum(int *p){

int finalSum = 0;
int size = *p;
int i = 1;

while (i <= size){

if (*(p+i)%2 != 0){
finalSum = finalSum + *(p+i);
}
i++;
}

return finalSum;
}
