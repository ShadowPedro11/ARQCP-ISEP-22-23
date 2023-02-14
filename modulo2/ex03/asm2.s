.section .data
.global op1
.global op2
.equ CONST,20 

.section .text
.global sum_v2             # int sum_v2(void)

sum_v2:

movl op1(%rip), %edx       #place op1 in edx
movl op2(%rip), %ecx       #place op2 in ecx
movl $CONST, %eax          #place CONST in eax

subl %edx, %eax            #sub edx to eax. Result is in eax
subl %edx, %eax            #sub edx to eax. Result is in eax
addl %ecx, %eax            #add ecx to eax. Result is in eax


ret
