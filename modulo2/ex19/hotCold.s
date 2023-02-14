.section .data
.global current
.global desired

.section .text
.global needed_time                 #int needed_time(void)
      
needed_time:

movsxb current(%rip),%eax           #move current to eax (8bits -> 32bits)
movsxb desired(%rip),%ecx           #move desired to ecx (8bits -> 32bits)

cmpl %ecx, %eax                     #compare ecx whit eax
jg higher                           #if eax>ecx goes to higher  
jl lower                            #if eax<ecx goes to lower 
je equals                           #if eax=ecx goes to equals
jmp end                             #goes to end
#=======================================================================
higher:
subl %ecx,%eax                      #eax=eax-ecx
imull $4,%eax                       #eax=eax*4
imull $60,%eax                      #eax=eax*60(minutes to second)
jmp end                             #goes to end
ret
#=======================================================================
lower:
subl %eax,%ecx                      #ecx=ecx-eax
imull $3,%ecx                       #ecx=ecx*3
movl %ecx,%eax                      #move ecx to eax
imull $60,%eax                      #eax=eax*60(minutes to second)
jmp end                             #goes to end
#=======================================================================
equals:
movl $0,%eax                        #move 0 to eax
jmp end                             #goes to end
#=======================================================================
end:


ret
