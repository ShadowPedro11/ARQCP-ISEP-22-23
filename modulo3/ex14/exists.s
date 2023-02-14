.section .data

.global ptrvec
.global x
.global num

.section .text

.global exists					#int exists(void)

exists:

movq ptrvec (%rip), %rdi		#moves ptrvec to rdi
movl x (%rip), %eax				#moves x to eax
movslq num (%rip), %rcx			#moves num to rcx
movl $0, %edx					#moves 0 to edx

cmpq $0, %rcx					#compares 0 to rcx
je end							#jumps to end if equal

test:

cmpl %eax, (%rdi)				#compares eax to the value stored in rdi
je equalOnce					#jumps to equalOnce if equal
addq $4, %rdi					#add 4 to rdi

loop test						#loops to test
jmp notEqual					#jumps to notEqual

equalOnce:

incl %edx						#increments 1 to edx
cmpl $2, %edx					#compares 2 to edx
je equalTwice					#jumps to equalTwice if equal

addq $4, %rdi					#add 4 to rdi
loop test						#loops to test
jmp notEqual					#jumps to notEqual

equalTwice:

movl $1, %eax					#moves 1 to eax
jmp end							#jumps to end

notEqual:

movl $0, %eax					#moves 0 to eax
jmp end							#jumps to end

end:

ret
