/* O método primeiro cria variáveis para usar como forma de verificar se encontrou a string e se esta está inteiramente presente na str2.
 * Também cria a variável address que começa como nula e apenas muda para o endereço da str2 após a verificação total que todas as letras da st1 estão na str2.
 * Finaliza por retornar a variável adress com o resultado encontrado.
 */

#include <stddef.h>
#include <string.h>

char* where_exists(char* str1, char* str2){

int i = 0;
int j = 0;
char *address= NULL;
int check = 0;
int checkStr = 0;
int size = strlen(str1);

while(*(str2 + j) != '\0'){
    if(*(str1 + i) != '\0'){
        if(*(str2 + j) == *(str1 + i)){
            if(check == 0){
                address = str2 + j;
                check = 1;
            }
        i++;
        checkStr++;
        } else {
            check = 0;
            address = NULL;
            i = 0;
            checkStr = 0;
        }
    }
    j++;
}

if (checkStr != size){
	address = NULL;
}
return address;
}
