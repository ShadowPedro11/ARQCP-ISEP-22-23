.section .data
.global length1
.global length2
.global height


.section .text
.global getArea      # int getArea(void)

getArea:

movl length1(%rip),%eax   #move length1 to eax
movl length2(%rip),%ecx   #move length2 to ecx
addl %ecx,%eax            #add length2 to length1. length1=length2+length1 

movl height(%rip),%edx    #move height to edx

mull %edx                 #multiply eax and edx. eax=eax*edx  

movl $2,%esi              #move 2 to esi 

divl %esi                 #divide eax and esi. eax=eax/esi   

ret
