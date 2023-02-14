.section .text

.global reset_2bits

reset_2bits:

call reset_bit		#calls reset_bit

movl $31, %r8d		#moves 31 to r8d
subl %esi, %r8d		#subtracts r8d by esi, value stored in r8d
movl $0, %esi		#moves 0 to esi
movl %r8d, %esi		#moves r8d to esi

call reset_bit		#calls reset_bit

ret
