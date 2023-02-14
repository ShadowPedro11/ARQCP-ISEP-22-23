.section .data
.global A                     # int (32 bits)
.global B                     # short (16 bits)
.global C                     # char (8 bits)
.global D                     # char (8 bits)

.section .text
.global sum_and_subtract      # long sum_and_subtract(void)

sum_and_subtract:
                              #C + A - D + B
movsxb C(%rip),%eax           #move C to eax (8bits -> 32bits)
movl A(%rip), %ecx            #move A to ecx (32bits -> 32bits)

addl %ecx,%eax                #add ecx to eax (eax=eax+ecx)

movsxb D(%rip),%edx           #move D to edx (8bits -> 32bits)

subl %edx,%eax                #sub edx to eax (eax=eax-edx)

movsxw B(%rip),%esi           #move B to eax (16bits -> 32bits)
   
addl %esi,%eax                #add esi to eax (eax=eax+esi)

movslq %eax,%rax              #(32bits to 64bits)



ret
