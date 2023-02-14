.section .data
.global ptr1
.global ptr2

.section .text
.global str_copy_porto2          #void str_copy_porto2(void)

str_copy_porto2:

movq ptr1(%rip),%rsi         # move address pointed of ptr1 to rsi 
movq ptr2(%rip),%rdi         # move address pointed of ptr2 to rdi 
cmpq $0,%rsi                 # compare 0 whit rdi
je end                       # mif rdi = 0, go to end


loop:
movb (%rsi),%cl              # move the values pointed by rsi to cl

cmpb $0,%cl                  # check if the values is null 0 is NULL is ASCII
je end                       # if cl = NULL go to end

cmpb $79,%cl                 # compare cl whit 79 (ASCII value of O)
je oUpper                    # if cl = 79 go to oUpper

cmpb $111,%cl                # compare cl whit 111 (ASCII value of o)
je oLower                    # if cl = 111 go to oUpper


movb %cl,(%rdi)              # copy the value of cl to the address pointed by rdi
incq %rsi                    # add 1 to rsi, go to next value 
incq %rdi                    # add 1 to rdi, go to next value 
jmp loop                     # go to end

oUpper:
movb $85,(%rdi)              # move 85(ASCII value of U) to the address pointed by rdi 
incq %rsi                    # add 1 to rsi, go to next value 
incq %rdi                    # add 1 to rdi, go to next value 
jmp loop                     # go to end

oLower:
movb $117,(%rdi)             # move 117(ASCII value of u) to the address pointed by rdi 
incq %rsi                    # add 1 to rsi, go to next value 
incq %rdi                    # add 1 to rdi, go to next value 
jmp loop                     # go to end

end:
movb $0,(%rdi)               # move 0 (ASCII value of null) to the addres pointed by rdi, "close" the array
ret
