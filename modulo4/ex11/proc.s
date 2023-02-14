.section .text
.global proc

proc:
pushq %rbp              #prologue
movq %rsp,%rbp          #

movl %edi,(%rsi)        #move edi to the value pointed by rsi
addl %edx,(%rsi)        #add edx to the value pointed by rsi

movl %edx,(%rcx)        #move edx to the value pointed by rcx
subl %edi,(%rcx)        #remove edi to the value pointed by rcx

movw %r8w,(%r9)         #move r8w to the value pointed by r9
addw %dx,(%r9)          #add dx to the value pointed by r9

pushq %rbx              #
pushq %r15              #
movb 16(%rbp),%bl       #move the 7th parameter to bl
movq 24(%rbp),%rax      #move the 8th parameter to rax
movb $3,%r15b           #move 3 to r15b
imulw %r15w,%bx         #mulltiplu bx per r15w,
movb %bl,(%rax)         #move bl to the value pointed by rax
popq %r15               #
popq %rbx               #


end:
movq %rbp,%rsp          #epilogue
popq %rbp               #
ret 
