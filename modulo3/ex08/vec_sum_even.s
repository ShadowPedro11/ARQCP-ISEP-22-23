.section .data

.global ptrvec
.global num
.global even

.section .text

.global vec_sum_even			#long vec_sum_even(void)

vec_sum_even:

movq ptrvec (%rip), %rdi		#moves ptrvec to rdi
movslq num (%rip), %rcx			#moves num to rcx
movq $0, %rax					#moves 0 to rax

cmpq $0, %rcx					#compares 0 to rcx
je end							#jumps to end if equal

sum_loop:

movq (%rdi), %rdx				#moves the value stored in rdi to rdx
movq %rdx, even (%rip)			#moves rdx to even

pushq %rax
pushq %rcx
pushq %rdi

call test_even					#calls the function test_even

popq %rdi
popq %rcx

cmpq $1, %rax					#compares 1 to rax
je evenTrue						#jumps to evenTrue if equal

popq %rax
addq $8, %rdi					#add 8 to rdi
loop sum_loop					#loops to sum_loop

jmp end							#jumps to end

evenTrue:

popq %rax
addq (%rdi), %rax				#add the value stored in rdi to rax
addq $8, %rdi					#add 8 to rdi
loop sum_loop					#loops to sum_loop

jmp end							#jumps to end

end:

ret
