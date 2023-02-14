.section .text

.global incr

incr:

movswl (%rdi), %eax	#moves the value pointed by rdi to eax, transforming the value from a short to a int
movsbl %sil, %ecx	#moves sil to ecx, transforming the value from a byte to a int

addl %eax, %ecx		#adds eax to ecx, value stored in ecx
movw %cx, (%rdi)	#moves cx to the value pointed by rdi

ret
