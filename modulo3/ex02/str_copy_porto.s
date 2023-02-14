.section .data
.global ptr1
.global prt2

.section .text
.global str_copy_porto		#void str_copy_porto(void)

str_copy_porto:
movq ptr1 (%rip), %rdi		#moves ptr1 to rdi
movq ptr2 (%rip), %rsi		#moves ptr2 to rsi

checkChar:

cmpb $0, (%rdi)				#compares 0 to the value stored in rdi
je end						#if its equal, jumps to end

movb (%rdi), %cl			#moves the value stored in rdi to cl
movb %cl, (%rsi)			#moves cl to the value stored in rsi

cmpb $'o', (%rdi)			#compares 'o' to the value stored in rdi
je change					#if its equal, jumps to change

jmp nextPosition			#jumps to nextPosition

change:

movb $'u', (%rsi)			#moves 'u' to the value stored in rsi
jmp nextPosition			#jumps to nextPosition

nextPosition:

incq %rdi					#increments 1 to rdi
incq %rsi					#increments 1 to rsi
jmp checkChar				#juymps to checkChar

end:

movb $0, (%rsi)				#moves 0 to the last value of rsi to end the array
ret
