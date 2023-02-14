.section .data
.global A
.global B

.section .text
.global isMultiple			#char isMultiple(void)

isMultiple:

movl A(%rip), %eax		#move A to eax
movl B(%rip), %ecx		#move B to ecx

cmpl $0, %ecx			#sees if the divisor is 0
je divizor				#jumps to divizor
cdq
idivl %ecx				#div eax by ecx
cmpl $0, %edx			#sees if the remain is 0
je remain				#jumps to remain
jmp end					#jumps to end

divizor:

movl $0, %eax			#moves 0 to eax
jmp end					#jumps to end

remain:

movl $1, %eax			#moves 1 to eax
jmp end					#jumps to end

end:

ret
