.section .text

.global changes_vec

changes_vec:

movl %esi, %ecx		#moves esi to ecx

cmpl $0, %ecx		#compares 0 to ecx
je end				#jumps to end if equal

call_vec:

pushq %rdi

call changes		#calls changes

popq %rdi

addq $4, %rdi		#adds 4 to rdi

loop call_vec		#loops to call_vec

end:

ret

