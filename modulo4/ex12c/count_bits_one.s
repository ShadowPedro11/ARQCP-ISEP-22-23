.section .text

.global count_bits_one

count_bits_one:

movl $0, %eax		#moves 0 to eax

compare_bit:

cmpl $0, %edi		#compares 0 to edi
je end				#jumps to end if equal

pushq %rdi
andl $1, %edi		#does 1 and edi, value stored in edi
cmpl $1, %edi		#compares 1 to edi
jne next_bit		#jumps to next_bit if different

incl %eax			#increments eax

next_bit:

popq %rdi			
shrl %edi			#shifts edi 1 to the right
jmp compare_bit		#jumps to compare_bit

end:

ret
