.section .data

.global changes

changes:

movl (%rdi), %r8d		#moves the value pointed by rdi to r8d
shrl $8, %r8d			#shifts r8d right 8 times

movl $0xFFFFFFFF, %esi	#moves -1 to esi
shrl $24, %esi			#shifts esi right 24 times

andl %esi, %r8d			#does esi AND r8d, value stored in r8d
cmpl $15, %r8d			#compares 15 to r8d
jg invert_byte			#jumps to invert_byte if bigger

jmp end					#jumps to end

invert_byte:

shll $16, %esi			#shifts esi left 16 times
xorl %esi, (%rdi)		#does esi XOR the value pointed by rdi, value sotred in rdi

end:

ret

