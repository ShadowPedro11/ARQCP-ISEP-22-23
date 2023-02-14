.section .data
.global ptr1
.section .text
.global decrypt           #int decrypt(void)


decrypt:
movq ptr1(%rip),%rdi      # move address pointed of ptrvec to rdi
movl $0,%eax              # move 0 to eax

loop:
movb (%rdi),%cl           # move the values pointed by rdi to cl
cmpb $0,%cl               # check if the values is null 0 is NULL is ASCII
je end                    # if cl = NULL go to end

cmpb $97,%cl              # compare cl whit 97 (ASCII value of a)
je notChange              # if cl = 97 go to notChange
cmpb $32,%cl              # compare cl whit 32 (ASCII value of A)
je notChange              # if cl = 97 go to notChange

subq $3,(%rdi)            # remove 3 to the values pointed by rdi
incl %eax                 # add 1 to eax
incq %rdi                 # add 1 to rdi, go to the next value
jmp loop                  # go to loop

notChange:                
incq %rdi                 # add 1 to rdi, go to the next value
jmp loop                  # go to loop

end:

ret


