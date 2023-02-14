/* O método percorre o array grades verificando o valor de cada posição.
 * Quando entra no case do valor certo, soma 1 ao valor da posição respetiva no array freq.
 * Faz este processo até terminar de percorrer todo o array inicial, usando n como a variável que indica o seu tamanho.
 */

void frequencies (float *grades, int n, int *freq){

int i = 0;

while (i<n){

int num = (int)*(grades+i);

switch (num){

            case 0:
                *freq += 1;
            break;

            case 1:
                *(freq + 1) += 1;
            break;

            case 2:
                *(freq + 2) += 1;
            break;

            case 3:
                *(freq + 3) += 1;
            break;

            case 4:
                *(freq + 4) += 1;
            break;

            case 5:
                *(freq + 5) += 1;
            break;

            case 6:
                *(freq + 6) += 1;
            break;

            case 7:
                *(freq + 7) += 1;
            break;

            case 8:
                *(freq + 8) += 1;
            break;

            case 9:
                *(freq + 9) += 1;
            break;

            case 10:
                *(freq + 10) += 1;
            break;

            case 11:
                *(freq + 11) += 1;
            break;

            case 12:
                *(freq + 12) += 1;
            break;

            case 13:
                *(freq + 13) += 1;
            break;

            case 14:
                *(freq + 14) += 1;
            break;

            case 15:
                *(freq + 15) += 1;
            break;

            case 16:
                *(freq + 16) += 1;
            break;

            case 17:
                *(freq + 17) += 1;
            break;

            case 18:
                *(freq + 18) += 1;
            break;

            case 19:
                *(freq + 19) += 1;
            break;

            case 20:
                *(freq + 20) += 1;
            break;
}
i++;
}

}
