.section .text
.global count_odd

count_odd:  

movq $0,%r9                    # move 0 to r9, i=0
movw $2,%r11w                  # move 2 to r11w    
movw $0,%r10w                  # move 0 to r10w   
movl $0,%r8d                   # move 0 ro r8d

loop:
cmpq %r9,%rsi                  # compare r9(i) with rsi(size of array)  
je end                         # if i=size go to end
movl $0,%eax                   # clear eax
movl $0,%edx                   # clear edx
movsbw (%rdi,%r9,1),%ax        # move the char at rdi[r9] to ax -> 8bits to 16bits
cmpw %r10w,%ax                 # compare r10w(0) whit ax(rdi[r9])    
je isZero                      # if ax = 0 go to isZEro
idivw %r11w                    # div ax/r11w
cmpw %r10w,%dx                 # compare r10w(0) whit dx, in dx is the remainder 
je isOdd                       # if dx = 0, go to isOdd
incq %r9                       # add 1 to r9(i)
jmp loop                       # go to loop

isZero:
incq %r9                       # add 1 to r9(i) 
jmp loop                       # go to loop

isOdd:                         
incq %r9                       # add 1 to r9(i)
incl %r8d                      # add 1 to r8, number of odd numbers
jmp loop                       # go to loop


end:                           
movl %r8d,%eax                 # move r8(number of odd number) to eax
           
ret 
