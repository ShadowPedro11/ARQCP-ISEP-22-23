.section .text

.global join_bits

join_bits:

movl $0xFFFFFFFF, %r8d	#moves -1 to r8d
movl $31, %ecx			#moves 31 to ecx
subl %edx, %ecx			#subs ecx by edx, value stored in ecx
movl $0, %eax			#moves 0 to eax

shrl %ecx, %r8d			#shifts ecx left by r8d times

get_opposite_mask:

movl %r8d, %r9d			#moves r8d to r9d
notl %r9d				#does NOT r9d

get_results:

andl %r8d, %edi			#does r8d AND edi, value stored in edi
andl %r9d, %esi			#does r9d AND esi, value stored in esi

addl %edi, %esi			#adds edi to esi, value stored in esi
addl %esi, %eax			#adds esi to eax, value stored in eax

ret
