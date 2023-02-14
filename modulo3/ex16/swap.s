.section .data

.global ptr1
.global ptr2
.global num

.section .text

.global swap				#void swap()

swap:

movq ptr1 (%rip), %rdi		#moves ptr1 to rdi
movq ptr2 (%rip), %rsi		#moves ptr2 to rsi
movslq num (%rip), %rcx		#moves num to rcx
cmpq $0, %rcx				#compares 0 to rcx
je end						#jumps to end if equal

copy:

movb (%rdi), %dl			#moves the value stored in rdi to dl
movb (%rsi), %al			#moves the value stored in rsi to al
movb %dl, (%rsi)			#moves dl to the value stored in rsi
movb %al, (%rdi)			#moves al to the value stored in rdi
incq %rdi					#increments 1 to rdi
incq %rsi					#increments 1 to rsi

loop copy

jmp end						#jumps to end

end:

ret
