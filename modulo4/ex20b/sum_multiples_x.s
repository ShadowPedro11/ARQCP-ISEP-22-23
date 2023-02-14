.section .text

.global sum_multiples_x

sum_multiples_x:

shrl $8, %esi			#shifts esi left 8 times
movl $0x000000FF, %r8d	#creates a mask with the first byte all 1 and moves it to r8d
andl %r8d, %esi			#does r8d AND esi, value stored in esi

movl $0, %r9d			#moves 0 to r9d

loop_vec:

cmpb $0, (%rdi)			#compares 0 to the value pointed by rdi
je end					#jumps to end if equal

movb (%rdi), %al		#moves the value pointed by rdi to al
movw $0, %dx			#moves 0 to dx
cbtw
idivw %si				#divides si by al, the remains are stored in dx
cmpw $0, %dx			#compares 0 to dx
je add_sum				#jumps to add_sum if equal

incq %rdi				#increments rdi by 1
jmp loop_vec			#jumps to loop_vec

add_sum:

addb (%rdi), %r9b		#adds the value pointed by rdi to r9b
incq %rdi				#increments rdi by 1
jmp loop_vec			#jumps to loop_vec

end:

movl %r9d, %eax			#moves r9d to eax
ret

