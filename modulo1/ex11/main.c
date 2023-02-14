#include <stdio.h>
#include "palindrome.h"
int main() {
    char str[]="A man a plan a canal Panama.";
    int isPalindrome = palindrome(str);
    if(isPalindrome==0){
        printf("%s is not Palindrome\n",str);
    }else if(isPalindrome==1){
        printf("%s is Palindrome\n",str);
    }
    return 0;
}
