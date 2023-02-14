.section .data
.global op1
.global op2

op3:
.int 5
op4:
.int 6

.global op3
.global op4

.section .text

.global sum_v3				# int sum_v3(void)

sum_v3:

movl op1(%rip), %esi       #place op1 in esi
movl op2(%rip), %ecx       #place op2 in ecx
movl op3(%rip), %eax       #place op3 in eax
movl op4(%rip), %edx       #place op4 in edx

addl %edx, %eax			#add edx to eax. Result is in eax
subl %ecx, %eax			#sub ecx to eax. Result is in eax
subl %ecx, %eax			#sub ecx to eax. Result is in eax
addl %esi, %eax			#add esi to eax. Result is in eax
addl %esi, %eax			#add esi to eax. Result is in eax

ret
