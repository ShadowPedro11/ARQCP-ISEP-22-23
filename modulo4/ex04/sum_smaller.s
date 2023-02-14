.section .text

.global sum_smaller

sum_smaller:

cmpl %edi, %esi		#compares edi to esi
jg num2Bigger		#jumps to num2Bigger if esi is bigger

addl %esi, %edi		#adds esi to edi, value stored in edi
movl %esi, (%rdx)	#moves esi to the value pointed by rdx
movl %edi, %eax		#moves edi to eax
jmp end				#jumps to end

num2Bigger:

addl %edi, %esi		#adds edi to esi, value stored in esi
movl %edi, (%rdx)	#moves edi to the value pointed by rdx
movl %esi, %eax		#moves esi to eax
jmp end				#jumps to end

end:

ret
