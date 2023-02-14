.section .text

.global mixed_sum

mixed_sum:

movl $0, %r8d		#moves 0 to r8d
movl $0, %r9d		#moves 0 to r9d

pushq %rdi
pushq %rsi
pushq %rdx
pushq %r8
pushq %r9

call join_bits		#calls join_bits

popq %r9

movl %esi, %r9d		#moves esi to r9d

popq %r8
popq %rdx
popq %rsi
popq %rdi

movl %edi, %r8d		#moves edi to r8d
movl $0, %edi		#moves 0 to edi
movl %esi, %edi		#moves esi to edi
movl $0, %esi		#moves 0 to esi
movl %r8d, %esi		#moves r8d to esi

pushq %r9

call join_bits		#calls join_bits

popq %r9

addl %esi, %r9d		#adds esi to r9d, value stored in r9d
movl $0, %eax		#moves 0 to eax
movl %r9d, %eax		#moves r9d to eax

ret

