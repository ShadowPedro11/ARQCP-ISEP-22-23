/* O método faz a verificação da primeira letra e passa para maiúscula se necessário, usando a mesma forma do exercício 4.
 * Após isso, percorre a string e quando detetar um espaço, pega na posição seguinte e transforma-a essa letra numa maiúscula se for minúscula.
 */

void capitalize (char *str){

int i = 1;

if(*(str) >= 'a' && *(str) <= 'z'){
	*(str) = *(str) -32;
}

while(*(str+i) !='\0'){
	if (*(str+i) == ' '){
		if(*(str+(i+1)) >= 'a' && *(str+(i+1)) <= 'z') {
			*(str+(i+1)) = *(str+(i+1)) -32;
      }
	}
i++;
}
}
