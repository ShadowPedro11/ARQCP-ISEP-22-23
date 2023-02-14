.section .data
.global op1
.global op2

.section .text
.global test_flags      # char test_flags(void)

test_flags:

movl op1(%rip),%eax     #move op1 to eax
movl op2(%rip),%ecx     #move op2 to ecx
addl %ecx,%eax          #add eax to ecx. eax=eax+ecx 

jc ifCarry              #If carry flag is activated jumps to ifCarry
jo ifFlow               #If overflow flag is activated jumps to ifFlow

movl $0,%eax            #move 0 to eax (flags are not activated)
jmp end                 #jumps to the end

ifCarry:                
movl $1,%eax            #move 1 to eax

ifFlow:                 
movl $1,%eax            #move 1 to eax

end:                    
                 


ret
