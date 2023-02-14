.section .data

length1:
.long 4
length2:
.long 6
height:
.long 2

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

mull %edx                 #mul eax and edx. eax=eax*edx  

movl $2,%esi              #move 2 to esi 

divl %esi                 #div eax and esi. eax=eax/esi   

ret
