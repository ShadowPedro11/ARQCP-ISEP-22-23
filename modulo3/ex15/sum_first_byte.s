.section .data
.global ptrvec
.global num


.section .text
.global sum_first_byte            #int sum_first_byte(void)

sum_first_byte:
movq ptrvec(%rip),%rdi            # move the address pointed by ptrvec to rdi
movl $0,%eax                      # move 0 to eax
movslq num(%rip),%rcx             # move the value of num to rcx, num is lenght
cmpq $0,%rcx                      # compare 0 to rcx
je end                            # if rcx = 0 go to end


inc_loop:
movq (%rdi),%r9                   # move the value pointed by rdi to r9
movsbl %r9b,%edx                  # get the first byte of r9 and move it to edx
addl %edx,%eax                    # add edx to eax
addq $8,%rdi                      # add 8 to rdi, go to next long
loop inc_loop                     # loop inc_loop number of times of rcx
jmp end                           # go to end


end:

ret
