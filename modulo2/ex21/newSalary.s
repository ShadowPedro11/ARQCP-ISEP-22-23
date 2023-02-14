.section .data
.global code
.global currentSalary

.section .text
.global new_salary         #int new_salary(void)    
      
new_salary:

movsxw currentSalary(%rip),%eax     #move currentSalary to eax (16bits -> 32bits)
movsxw code(%rip),%ecx              #move code to ecx (16bits -> 32bits)
cmpl $20,%ecx                       #compare 20 whit ecx(code)
je manager                          #if 20=ecx goes to manager   
cmpl $21,%ecx                       #compare 21 whit ecx(code)
je engineer                         #if 21=ecx goes to engineer 
cmpl $22,%ecx                       #compare 22 whit ecx(code)
je technician                       #if 22=ecx goes to technician
addl $150, %eax                     #add 150 to eax
jmp end                             #goes to end 
#===================================================================================
manager:
addl $400, %eax                     #add 400 to eax
jmp end                             #goes to end 
#===================================================================================
engineer:
addl $300, %eax                     #add 300 to eax
jmp end                             #goes to end 
#===================================================================================
technician:
addl $200, %eax                     #add 200 to eax
jmp end                             #goes to end 
#===================================================================================
end:

 
ret
