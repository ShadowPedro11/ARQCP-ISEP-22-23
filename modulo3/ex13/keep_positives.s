.section .data
.global ptrvec
.global num


.section .text
.global keep_positives            # void keep_positives(void)

keep_positives:
movq ptrvec(%rip),%rdi            # move the addresss pointed by ptrvec to rdi
movl $0,%eax                      # move 0 to eax
movzwq num(%rip),%rcx             # move the value of num to rcx, num is lenght
cmpq $0,%rcx                      # compare 0 to rcx
je end                            # if rcx = 0 go to end

inc_loop:
cmpw $0,(%rdi)                    # compare 0 whit the value pointed by rdi
jl isNegative                     # if rdi<0 go to isNegative
incw %ax	                      #	add 1 to aw
addq $2,%rdi                      # add 2 to rdi, go to next next short
loop inc_loop                     # loop inc_loop number of times of rcx
jmp end                           # go to end

isNegative:
movw %ax,(%rdi)                   # move ax ( index ) to the address pointed by rdi
incw %ax                          # add 1 to aw
addq $2,%rdi                      # add 2 to rdi, go to next next short
loop inc_loop                     # loop inc_loop number of times of rcx


end:

ret
