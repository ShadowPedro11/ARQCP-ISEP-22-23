.section .data
.global ptr1

.section .text
.global seven_count          #int seven_count(void)

seven_count:

movq ptr1(%rip),%rdi         # move address pointed to rdi
movl $0,%eax                 # move 0 to eax

cmpq $0,%rdi                 # compare 0 to rdi
je end                       # if rdi = 0 go to end


loop:
movb (%rdi),%cl              # move the value pointed to cl
cmpb $0,%cl                  # check if the values is null 0 is NULL is ASCII
je end                       # if cl = NULL go to end

cmpb $55,%cl                 # compare cl whit 55 (ASCII of 7)
je isSeven                   # if cl = 55 go to end

incq %rdi                    # add 1 to edi, go to next value 
jmp loop                     # go to loop


isSeven:

incl %eax                    # add 1 to eax
incq %rdi                    # add 1 to edi, go to next value 
jmp loop                     # go to loop

end:

ret
