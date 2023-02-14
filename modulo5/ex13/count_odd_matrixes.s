.section .global

.section .text
.global count_odd_matrixes

count_odd_matrixes:
movl $1,%r8d                                    #move 1 to r8d (mask)
movl $0,%r11d                                   #move 0 ro r11d
movl $0,%eax                                    #move 0 to eax
movl $0,%r9d                                    #move 0 to r9d (index to run a line)
movl $0,%r10d                                   #move 0 to r10d (index to run all lines)

run_line:

movq (%rdi,%r10,8),%rcx                         #acess the line of matrix rdi[r10]
movl (%rcx,%r9,4),%r11d                         #whit the line acess the collum of matrix // matrix[r10][r9]


andl %r8d,%r11d                                 # use and and the mask to check if the first bit is 1 or 0 and clear all the other bits
cmpl $0,%r11d                                   # compare 0 to r11d
jne isOdd                                       # if r11d diff 0 the number i odd an do to isOdd

incl %r9d                                       #add 1 to r9d
cmpl %r9d,%edx                                  #check end of line
je next_line                                    #if equals go to next_line
jmp run_line                                    #go to run_line


isOdd:
incl %eax                                       #add 1 to eax 
incl %r9d                                       #add 1 to r9d
cmpl %r9d,%edx                                  #check end of line
je next_line                                    #if equals go to next_line
jmp run_line                                    #go to run_line

next_line:
movl $0,%r9d                                    #clear r9d (go to the initial of a line)
incl %r10d                                      #add 1 to r10d
cmpl %r10d,%esi                                 #compare r10d whit esi check if all lines were traveled
je end                                          #if r10d equals esi go to end
jmp run_line                                    #else go to run_line




end:

ret 
