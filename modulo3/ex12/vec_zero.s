.section .data

.global ptrvec
.global num

.section .text

.global vec_zero				#char vec_zero(void)

vec_zero:

movl $0, %eax					#moves 0 to eax
movq ptrvec (%rip), %rdi		#moves ptrvec to rdi
movslq num (%rip), %rcx			#moves num to rcx
cmpq $0, %rcx					#compares 0 to rcx
jle end							#jumps to end if equal

checkNum:

cmpl $100, (%rdi)				#compares 100 to the value stored in rdi
jge set_zero					#jumps to set_zero if equal or bigger
addq $4, %rdi					#add 4 to rdi
loop checkNum					#loops to checkNum

jmp end							#jumps to end

set_zero:

movl $0, (%rdi)					#moves 0 to the value stored in rdi
addq $4, %rdi					#add 4 to rdi
addl $1, %eax					#add 1 to eax
loop checkNum					#loops to checkNum

end:

ret
