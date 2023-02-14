.section .text
.global add_byte

add_byte:
movq $0,%r11                #clear r11==i
movl $0,%r10d               #clear r10d
movl $0,%r9d                #clear r9d
movl (%rsi,%r11,4),%ecx     #mov int rsi[r11] to ecx==number of integers

cmpl $0,%ecx                #compare whit 0
je end                      #if ecx ==0 go to end

                            #copy the first element(number of integers)
movl (%rsi,%r11,4),%r10d    #mov int rsi[r11] to r10d
movl %r10d,(%rdx,%r11,4)    #mov r10d to int rdx[r11]
incq %r11                   #add 1 to r11

func:
movl (%rsi,%r11,4),%r10d    #mov int rsi[r11] to r10d
pushq %r9                   #
movb %r10b,%r9b             #copy the value of r10b to r9b (the first byte)
addb %dil,%r9b              #add x to r9b
movb %r9b,%r10b             #move the value of r9b to r10b 
popq %r9                    #restore the value of r9

movl %r10d,(%rdx,%r11,4)    #move the value of r10d to rdx[r11]
incq %r11                   #add 1 to r11
loop func                   #go to func


end:

ret
