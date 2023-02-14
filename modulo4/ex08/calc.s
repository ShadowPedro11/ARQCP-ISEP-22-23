.section .text

.global calc

calc:

#prologue
push %rbp
movq %rsp, %rbp			#moves rsp to rbp
subq $12, %rsp			#subtracts 12 to rsp

movl %edi, -4(%rbp)		#moves edi to -4(rbp)
movl (%rsi), %esi		#moves the value pointed by rsi to esi
movl %esi, -8(%rbp)		#moves esi to -8(rbp)
movl %edx, -12(%rbp)	#moves edx to -12(rbp)

movl $0, %eax			#moves 0 to eax

calcZ:

addl -4(%rbp), %eax		#adds -4(rbp) to eax, value stored in eax
imull $2, %eax			#multiplies eax by 2
subl -8(%rbp), %eax		#subtracts eax by -8(rbp), value stored in eax

return:

subl $4, -12(%rbp)		#subtracts 4 to -12(rbp)
imull -12(%rbp), %eax	#multiplies eax by -12(rbp), value stored in eax

#epilogue
movq %rbp, %rsp			#moves rbp to rsp
popq %rbp
ret
