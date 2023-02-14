.section .data

.global ptrvec
.global num

.section .text

.global vec_add_two				#void vec_add_two(void)

vec_add_two:

movq ptrvec (%rip), %rdi		#moves ptrvec to rdi
movslq num (%rip), %rcx			#moves num to rcx
cmpq $0, %rcx					#compares 0 to rcx
je end							#jumps to end if equal

add_two:

addl $2, (%rdi)					#add 2 to the value stored in rdi
addq $4, %rdi					#add 4 to rdi

loop add_two					#loops to add_two

jmp end							#jumps to end

end:

ret
