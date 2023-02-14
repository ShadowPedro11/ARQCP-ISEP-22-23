.section .data

.global ptrvec
.global num

.section .text

.global count_max				#int count_max(void)

count_max:

movq ptrvec (%rip), %rdi		#moves ptrvec to rdi
movslq num (%rip), %rcx			#moves num to rcx
movl $0, %eax					#moves 0 to eax

cmpq $0, %rcx					#compares 0 to rcx
je end							#jumps to end if equal

test:

movl (%rdi), %edx				#moves the value stored in rdi to edx
addq $4, %rdi					#add 4 to rdi
movl (%rdi), %esi				#moves the value stored in rdi to esi
cmpl %edx, %esi					#compares edx to esi
jl firstStep					#jumps to firstStep if smaller

loop test						#loops to test
jmp end							#jumps to end

firstStep:

addq $4, %rdi					#add 4 to rdi
cmpl %esi, (%rdi)				#compares esi to the value stores in rdi
jg secondStep					#jumps to secondStep if bigger

subq $4, %rdi					#sub 4 to rdi
loop test						#loops to test

secondStep:

incl %eax						#increments 1 to eax
loop test						#loops to test

end:

ret
