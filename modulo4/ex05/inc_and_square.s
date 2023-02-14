.section .text
.global inc_and_square

inc_and_square:                  

incl (%rdi)       #inc by 1 the value pointed by *v1
movl %esi,%eax    #compy the value of v2 to eax
imull %esi        #multiply v2*v2=v2²
                     
ret 
