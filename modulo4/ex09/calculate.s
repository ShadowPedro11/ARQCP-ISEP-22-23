.section .text
.global calculate

calculate:

pushq %rbp         #prologue
movq %rsp,%rbp     #

movl %edi,%eax     #copy edi to eax
movl %edi,%r11d    #copy edi to r11d
subl %esi,%eax     #sub esi to eax // eax = eax-esi
imull %esi,%r11d   #mulltiply esi to r11d // r11d=r11d*esi

movl %r11d,%ecx    #move r11d to ecx 4th parameter
movl %esi,%edx     #move esi to edx 3rd parameter
movl %edi,%esi     #move edi to esi 2nd parameter
movb $'*',%dil     #move * to dil 1st parameter

pushq %r11         #save the value of r11
pushq %rax         #save the value of rax
pushq %rdx         #save the value of rdx
pushq %rsi         #save the value of rsi
call print_result  
popq %rsi          #restore the value of rsi
popq %rdx          #restore the value of rdx
popq %rax          #restore the value of rax
popq %r11          #restore the value of r11

movl %eax,%ecx     #move eax to ecx 4th parameter
movb $'-',%dil     #move - to dil 1st parameter
 
pushq %r11         #save the value of r11
pushq %rax         #save the value of rax
call print_result  
popq %rax          #restore the value of rax
popq %r11          #restore the value of r11

subl %r11d,%eax    #sub r11d to eax// eax=eax-r11d
end:


movq %rbp,%rsp     #epilogue
popq %rbp          #
ret 
