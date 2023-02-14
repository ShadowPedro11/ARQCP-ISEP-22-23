/* O método usa a função base usada no exercício 19.
 * Inicialmente chama esse método, no entanto enquanto não acabar de percorrer a string na totalidade, se encontrar uma string igual, soma à variável addrs o seu endereço.
 * Repete este processo para encontrar todas as palavras iguais nas duas strings.
 */

#include <string.h>
#include "findWord.h"

void find_all_words (char* str, char* word, char** addrs){

int size = strlen(word);
int j=0;
char *wordFound;
char *modifiedStr = str;

while (*(str + j) != 0){
wordFound = find_word(word, modifiedStr);

if(wordFound != NULL){
*addrs = wordFound;
addrs++;
modifiedStr = wordFound + size;
str = wordFound + size;
} else{
	wordFound++;
}
}
}
