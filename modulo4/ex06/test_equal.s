.section .text

.global test_equal

test_equal:

movl $0, %eax			#moves 0 to eax

equalString:

cmpb $0, (%rdi)			#compares the value pointed by rdi to 0
je string1finshed		#jumps to string1finshed if equal

movb (%rdi), %cl		#moves the value pointed by rdi to cl
cmpb %cl,(%rsi)			#compares cl to the value pointed by rsi
jne end					#jumps to end if different

incq %rdi				#increments rdi by 1
incq %rsi				#increments rsi by 1
jmp equalString			#jumps to equalString

string1finshed:

cmpb $0, (%rsi)			#compares 0 to the value pointed by rsi
je string2finished		#jumps to string2finished if equal

jmp end					#jumps to end

string2finished:

movl $1, %eax			#moves 1 to eax
jmp end					#jumps to end

end:

ret
