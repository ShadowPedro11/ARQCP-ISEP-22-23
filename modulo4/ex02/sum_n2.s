.section .text

.global sum_n2

sum_n2:

movslq %edi, %rcx	#moves edi, to rcx, transforming the value from int to long variable
movq $1, %r10		#moves 1 to r10
movq $1, %r11		#moves 1 to r11
movq $0, %rax		#moves 0 to rax

cmpq $0, %rcx		#compares 0 to rcx
jle end				#if its equal or smaller, jumps to end

sum:

imulq %r11, %r10	#multiplies r10 by r11, storing the value in r10
addq %r10, %rax		#adds r10 to rax, storing the value in rax
incq %r11			#increments r11 by 1
movq %r11, %r10		#moves r11 to r10

loop sum			#loops to sum
jmp end				#jumps to end

end:

ret
