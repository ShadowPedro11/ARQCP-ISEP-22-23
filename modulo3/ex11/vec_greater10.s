.section .data
.global ptrvec
.global num


.section .text
.global vec_greater10           # int vec_greater10(void)

vec_greater10:
movq ptrvec(%rip),%rdi          # move the address pointed by ptrvec to rdi          
movl $0,%eax                    # move 0 to eax
movslq num(%rip),%rcx           # move the value of num to rcx, num is lenght
cmpq $0,%rcx                    # compare 0 to rcx
je end                          # if rcx = 0 go to end

inc_loop:
cmpl $10,(%rdi)                 # compare 10 to rdi
jg isBiggest	                # if 10>rdi go to isBiggest			
addq $4,%rdi                    # add 4 to rdi, move to next int
loop inc_loop                   # loop inc_loop number of times of rcx
jmp end                         # go to end

isBiggest:
incl %eax                       # add 1 to eax
addq $4,%rdi                    # add 4 to rdi, move to next int
loop inc_loop                   # loop inc_loop number of times of rcx

end:

ret
