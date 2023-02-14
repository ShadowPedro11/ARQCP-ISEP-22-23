.section .data

.global even

.section .text

.global test_even			#long test_even(void)

test_even:

movq even (%rip), %rax		#moves even to rax

cqo
movq $2, %rdi				#moves 2 to rdi
idivq %rdi					#div rax by rdi (even/2)

cmpq $0, %rdx				#compares 0 to rdx
je evenTrue					#jumps to evenTrue if equal

movq $0, %rax				#moves 0 to rax
jmp end						#jumps to end

evenTrue:

movq $1, %rax				#moves 1 to rax
jmp end						#jumps to end

end:

ret
