.section .data

.global num

.section .text

.global check_num		#char check_num()

check_num:

movl num(%rip), %eax	#move num to eax
movl $0, %edx			#move 0 to edx
cdq
movl $2, %esi			#move 2 to esi
idivl %esi				#div eax by esi

cmpl $0, %edx			#compares $0 to edx to see if its even
je even					#jump to even
jmp odd					#jumps to odd

even:

movl $0, %eax			#clears eax
movl num(%rip), %eax	#move num to eax
cmpl $0, %eax			#compares 0 to eax
jge positiveEven		#jumps to positiveEven if its bigger than 0
jmp negativeEven		#jumps to negativeEven

positiveEven:

movl $6, %eax			#moves 6 to eax
jmp end					#jumps to end

negativeEven:

movl $4, %eax			#moves 4 to eax
jmp end					#jumps to end

odd:

movl $0, %eax			#clears eax
movl num(%rip), %eax	#move num to eax
cmpl $0, %eax			#compares 0 to eax
jge positiveOdd			#jumps to positiveOdd if its bigger than 0
jmp negativeOdd			#jumps to negativeOdd

positiveOdd:

movl $7, %eax			#moves 7 to eax
jmp end					#jumps to end

negativeOdd:

movl $5, %eax			#moves 5 to eax
jmp end					#jumps to end

end:

ret
