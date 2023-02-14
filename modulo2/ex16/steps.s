.section .data

.global num

.section .text

.global steps			# int steps(void)

steps:

movl num(%rip),%eax		#move num to eax
imull $3, %eax			#mul eax by 3
addl $6,%eax			#add 6 to eax
cdq
movl $3, %ecx			#move 3 to ecx
idivl %ecx				#div eax by ecx
addl $12, %eax			#add 12 to eax
movl num(%rip), %edx	#move num to edx
subl %edx, %eax			#sub edx to eax
subl $1, %eax			#sub 1 to eax



ret
