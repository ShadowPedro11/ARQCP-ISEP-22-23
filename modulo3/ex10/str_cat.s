.section .data

.global ptr1
.global ptr2
.global ptr3

.section .text

.global str_cat				#void str_cat(void)

str_cat:

movq ptr1 (%rip), %rdi		#moves ptr1 to rdi
movq ptr2 (%rip), %rsi		#moves ptr2 to rsi
movq ptr3 (%rip), %rax		#moves ptr3 to rax

str1:

cmpb $0,(%rdi)				#compares 0 to the value stored in rdi
je str2						#if its equal, jumps to str2

movb (%rdi), %cl			#moves the value stored in rdi to cl
movb %cl, (%rax)			#moves cl into the value stored in rax

incq %rdi					#increments 1 to rdi
incq %rax					#increments 1 to rax
jmp str1					#jumps to str1

str2:

cmpb $0,(%rsi)				#compares 0 to the value stored in rsi
je end						#if its equal, jumps to end

movb (%rsi), %cl			#moves the value stored in rsi to cl
movb %cl, (%rax)			#moves cl into the value stored in rax

incq %rsi					#increments 1 to rsi
incq %rax					#increments 1 to rax
jmp str2					#jumps to str2

end:

movb $0, (%rax)				#moves 0 into the value stored in rax
ret
