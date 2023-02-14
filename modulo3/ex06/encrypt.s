.section .data

.global ptr1

.section .text

.global encrypt				#int encrypt(void)

encrypt:

movl $0, %eax				#moves 0 to eax
movq ptr1 (%rip), %rdi		#moves ptr1 to rdi

checkChar:

cmpb $0, (%rdi)				#compares 0 to the value stored in rdi
je end						#jumps to end if equal

cmpb $97, (%rdi)			#compares ' ' to the value stored in rdi
je occurrence				#jumps to occurrence if equal

cmpb $32, (%rdi)			#compares 'a' to the value stored in rdi
je occurrence				#jumps to occurrence if equal

addb $3, (%rdi)				#add 3 to the value stored in rdi
incq %rdi					#increments 1 to rdi
incl %eax					#increments 1 to eax

jmp checkChar				#jumps to checkChar

occurrence:

incq %rdi					#increments 1 to rdi
jmp checkChar				#jumps to checkChar

end:

ret
