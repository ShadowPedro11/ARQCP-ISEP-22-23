.section .data
.global i
.global j

.section .text
.global f   				#int f(void)
.global f2  				#int f2(void)
.global f3  				#int f3(void)
.global f4  				#int f4(void)

f:

movl i(%rip), %eax			#move i to eax
movl j(%rip), %ecx			#move j to ecx
cmpl %ecx, %eax				#compares eax to ecx
je equals					#jumps to equals if i equals to j

addl %ecx, %eax				#add ecx to eax
subl $1, %eax				#sub 1 to eax
jmp end						#jumps to end

equals:

subl %ecx, %eax				#sub ecx to eax
addl $1, %eax				#add 1 to eax
jmp end						#jumps to end

end:

ret

f2:

movl i(%rip), %eax			#move i to eax
movl j(%rip), %ecx			#move j to ecx
cmpl %ecx, %eax				#compares eax to ecx
jg bigger					#jumps to bigger if i is bigger than j

addl $1, %ecx				#add 1 to ecx
jmp end2					#jumps to end2

bigger:

subl $1, %eax				#sub 1 to eax
jmp end2					#jumps to end2

end2:

mull %ecx					#mul eax by ecx
ret

f3:

movl i(%rip), %eax			#move i to eax
movl j(%rip), %ecx			#move j to ecx
cmpl %ecx, %eax				#compares eax to ecx
jge biggerEqual				#jumps to biggerEqual if i is bigger or equal to j

movl %eax, %edx				#move eax to edx
addl %ecx, %edx				#add ecx to edx
addl %ecx, %eax				#add ecx to esi
addl $2, %eax				#add 2 to esi
jmp end3					#jumps to end3

biggerEqual:

movl %eax, %edx				#move eax to edx
imull %ecx, %edx			#mul edx by ecx
addl $1, %eax				#add 1 to esi
jmp end3					#jumps to end3

end3:

movl %edx, %edi				#move edx to edi
movl $0, %edx				#clears edx
cdq
idivl %edi					#div eax by edi
ret

f4:

movl i(%rip), %eax			#move i to eax
movl j(%rip), %ecx			#move j to ecx
movl $10, %edx				#move 10 to edx
movl %eax, %esi				#move eax to esi
addl %ecx, %esi				#add ecx to esi
cmpl %esi, %edx				#compares esi to edx
jg bigger10					#jumps to bigger10 if i+j is bigger than 10

movl %ecx, %eax				#move ecx to eax
mull %eax					#mul eax by eax (j²)
movl $3, %edi				#move 3 to edi
cdq
idivl %edi					#div eax by edi
jmp end						#jumps to end

bigger10:

mull %eax					#mul eax by eax (i²)
imull $4, %eax				#mul 4 by eax
jmp end						#jumps to end
