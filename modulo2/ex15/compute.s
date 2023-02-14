.section .data
.global A 
.global B     
.global C                     
.global D                    


.section .text
.global compute      # int compute(void)

compute:
                     # ((A * B) - C) / D
movl A(%rip),%eax    #move A to eax
movl B(%rip),%ecx    #move B to ecx

imull %ecx           #multiply eax and ecx. eax = eax*ecx

movl C(%rip),%edx    #move C to edx
subl %edx,%eax       #Sub edx to eax. eax=eax-edx

cdq                  #Extends he signal ->64bits
movl D(%rip),%esi    #move D to esi

cmpl $0,%esi         #compare 0 to esi
je isZero            #if esi=0, goes to ifZero

idivl %esi           #divide esi for eax. eax=eax/esi
jmp end              #Goes to the end

isZero:
movl $0,%eax         #Put 0 in eax

end:
             
ret
