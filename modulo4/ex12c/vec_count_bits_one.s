.section .text

.global vec_count_bits_one

vec_count_bits_one:

movl %esi, %ecx			#moves esi to ecx
movl $0, %r8d			#moves 0 to r8d

cmpl $0, %ecx			#compares 0 to ecx
je end					#jumps to end if equal

loop_num:

movl $0, %eax			#moves 0 to eax
movzwl (%rdi), %r9d		#moves the value pointed by rdi to r9d, tranforming it from a short to an int, and keeping the signal

pushq %rdi
pushq %r8

movl %r9d,%edi			#moves r9d to edi
call count_bits_one		#calls count_bits_one

popq %r8

addl %eax, %r8d			#adds eax to r8d, value stored in r8d

popq %rdi

addq $2, %rdi			#adds 2 to rdi

loop loop_num			#loops to loop_num
jmp end					#jumps to end

end:

movl $0, %eax			#moves 0 to eax
movl %r8d, %eax			#moves r8 to eax, value stored in eax

ret
