.section .data

A:
.int 6
B:
.int 2

.global A
.global B
.global i
.global n

.section .text

.global function		#int function()

function:

movl A(%rip), %eax		#move A to eax
movl B(%rip), %ecx		#move B to ecx
imull %eax, %eax		#mul eax by eax (A²)
cdq
idivl %ecx				#div eax by ecx
movl $0, %ecx			#clears ecx
movl n(%rip), %edx		#moves n to edx
movl i(%rip), %edi		#moves i to edi

sum:

movl $0, %esi			#clears esi
movl %edi, %esi			#moves edi to esi
imull %esi, %esi		#mul esi by esi (i²)
imull  %eax, %esi		#mul eax by esi
addl %esi, %ecx			#add esi to ecx
cmpl %edx, %edi			#compares edx to edi
je end					#jumps to end

addl $1, %edi			#add 1 to edi
jmp sum					#jumps to sum

end:

movl %ecx, %eax			#moves ecx to eax

ret
