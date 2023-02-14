.section .text
.global cube

cube:                   # x is on edi

movslq %edi, %rax       # move edi to rax 
movslq %edi, %r10       # move edi to r10 

imulq %r10              # multiply rbx whit rax, rax = rax*r10 = x^2
imulq %r10              # multiply rbx whit rax, rax = rax*r10 = x^3
                     
ret 
