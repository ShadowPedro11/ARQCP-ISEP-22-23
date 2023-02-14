/* O método percorre uma string verficando letra a letra se é maiuscula ou minuscula.
 * Se for minúscula, retira 32 bits ao endereço para transformar na versão maiúscula dessa letra.
 */

void upper1(char *str){
int i = 0;
while(str[i]!='\0'){
        if(str[i] >= 'a' && str[i] <= 'z') {
         str[i] = str[i] -32;
      }
      i++;
   }

}
