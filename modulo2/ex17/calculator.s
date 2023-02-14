.section .data
.global num1
.global num2

.section .text
.global sum
.global subt
.global mult
.global divi
.global mod
.global power2
.global power3
#==============================================================       
sum:
movl num1(%rip),%eax                 #moves num1 to eax
movl num2(%rip),%ecx                 #moves num2 to ecx
addl %ecx,%eax                       #add ecx to eax. eax=eax+ecx
ret
#==============================================================
subt:
movl num1(%rip),%eax                 #moves num1 to eax
movl num2(%rip),%ecx                 #moves num2 to ecx
subl %ecx,%eax                       #sub ecx to eax. eax=eax-ecx                                   
ret
#==============================================================
mult:
movl num1(%rip),%eax                 #moves num1 to eax
movl num2(%rip),%ecx                 #moves num2 to ecx
imull %ecx                           #multiply ecx to eax. eax=eax*ecx            
ret
#==============================================================
divi:

movl num1(%rip),%eax                 #moves num1 to eax
cdq                                  #converts the signed long in eax to the signed double long in ead:eax
movl num2(%rip),%ecx                 #moves num2 to ecx

cmpl $0,%ecx                         #compare 0 to ecx
je isZero                            #if ecx=0 goes to isZero

idivl %ecx                           #divide ecx to eax. eax=eax/ecx

jmp end                              #goes to end

isZero:
movl $0,%eax                         #move 0 to eax

end:
              
ret
#==============================================================
mod:
movl num1(%rip),%eax                 #moves num1 to eax
movl num2(%rip),%ecx                 #moves num2 to ecx
cdq                                  #converts the signed long in eax to the signed double long in ead:eax
cmpl $0,%ecx                         #compare 0 to ecx
je isZero2                           #if ecx=0 goes to isZero2
idivl %ecx                           #divide ecx to eax. eax=eax/ecx
movl %edx, %eax                      #move edx to eax. In edx it is the modulus of the division 

jmp end2                             #goes to end2

isZero2:
movl $0,%eax                         #move 0 to eax

end2:
                  
ret
#==============================================================
power2:
movl num1(%rip),%eax                 #moves num1 to eax
movl num1(%rip),%ecx                 #moves num1 to ecx
imull %ecx                            #multiply ecx to eax.eax=eax*ecx        
ret
#==============================================================
power3:
movl num1(%rip),%eax                 #moves num1 to eax
movl num1(%rip),%ecx                 #moves num1 to ecx
imull %ecx                            #multiply ecx to eax.eax=eax*ecx  
imull %ecx                            #multiply ecx to eax.eax=eax*ecx    
ret
#==============================================================
