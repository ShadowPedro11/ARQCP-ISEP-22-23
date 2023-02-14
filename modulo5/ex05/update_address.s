.section .data

.equ ADRESS_OFFSET, 84
	
.section .text

.global update_address

update_address:

cmpb $0, (%rsi)
je end

movb (%rsi), %al
movb %al, ADRESS_OFFSET (%rdi)

incq %rdi
incq %rsi
jmp update_address

end:
movb $0, ADRESS_OFFSET(%rdi)
ret
