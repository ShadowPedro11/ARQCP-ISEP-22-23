.section .data

.global op1
.global op2
.global op3

.section .text
.global sum3ints			#sum3ints(void)

sum3ints:

movslq op1(%rip), %rax		#move op1 to rax
movslq op2(%rip), %rcx		#move op2 to rcx
movslq op3(%rip), %rdx		#move op3 to rdx
addq %rcx, %rax				#add rcx to rax. Result is in rax
addq %rdx, %rax				#add rdx to rax. Result is in rax

ret
