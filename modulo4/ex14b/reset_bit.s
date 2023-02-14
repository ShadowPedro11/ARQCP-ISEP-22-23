.section .text

.global reset_bit

reset_bit:

movl %esi, %ecx		#moves esi to ecx
movl $0, %eax		#moves 0 to eax
movl $1, %r9d		#moves 1 to r9d
movl (%rdi), %r8d	#moves the value pointed by rdi to r8d

cmp $0, %ecx		#compares 0 to ecx
je check_bit		#jumps to check_bit if equal

shll %ecx, %r9d		#shifts r9d left by ecx times

check_bit:

andl %r9d, %r8d		#does r9d AND r8d, value stored in r8d
cmpl $0, %r8d		#compares 0 to r8d
je end				#jumps to end if equal

notl %r9d			#does NOT r9d
andl %r9d, (%rdi)	#does r9d AND the value pointed by rdi, value stored in rdi
movl $1, %eax		#moves 1 to eax

end:

ret
