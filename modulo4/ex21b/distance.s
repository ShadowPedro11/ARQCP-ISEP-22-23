.section .text
.global distance

distance:
movq $0,%r11                    #clear r11/ r11 = i = 0
movl $0,%r10d                   #clear r10d
movl $0,%r9d                    #clear r9d
movb $0,%r8b                    #clear r8b
movl $0,%eax                    #clear eax

func:
movb (%rdi,%r11,1),%r9b         #mov rdi[r11] to r9b
movb (%rsi,%r11,1),%r10b        #mov rsi[r11] to r10b
cmpb $0,%r9b                    #check if r9b is 0 (0 is null in ASCII)
je beforeEnd                    #if r9b == 0 go to beforeEnd
cmpb $0,%r10b                   #check if r10b is 0 (0 is null in ASCII)
je beforeEnd                    #if r10b == 0 go to beforeEnd

xor %r10b,%r9b                  #use operator xor if bits equals is 0 else is 1
cmpb $0,%r9b                    #compare r9b whit 0
jne incFunc                     # if r9b !=0 go to incFunc


incq %r11                       #add 1 to r11(i)
jmp func                        #go to func

incFunc:                        #If chars diff add 1 to eax
incq %r11                       #add 1 to r11(i)
incl %eax                       #add 1 to eax
jmp func                        #go to func


beforeEnd:                      
cmpb %r9b,%r10b                 #Compare r9b whit r10b
jne endDif                      #if they diff they have diff length
jmp end                         #go to end

endDif:                         #If they have diff length 
movl $-1,%eax                   #move -1 to eax
jmp end                         #go to end


end:
ret
