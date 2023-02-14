.section .data

.global ptrvec
.global x
.global num

.section .text

.global vec_diff				#int vec_diff(void)

vec_diff:

movq ptrvec (%rip), %rdi		#moves ptrvec to rdi
movslq num (%rip), %rcx			#moves num to rcx
movl $0, %eax					#moves 0 to eax

cmpq $0, %rcx					#compares 0 to rcx
je end							#jumps to end if equal

compute:

movl (%rdi), %edx				#moves the value stored in rdi to edx
movl %edx, x(%rip)				#moves edx to x

pushq %rax
pushq %rcx
pushq %rdi

call exists						#calls the function exists

popq %rdi
popq %rcx

cmpl $1, %eax					#compares 1 to eax
je duplicate					#jumps to duplicate if equal

popq %rax

incl %eax						#increments 1 to eax
addq $4, %rdi					#add 4 to rdi

loop compute					#loops to compute
jmp end							#jumps to end

duplicate:

popq %rax
addq $4, %rdi					#add 4 to rdi

loop compute					#loops to compute

end:

ret
