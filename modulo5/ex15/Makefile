INCLUDES = stack.h
SOURCES =  main.c stack.c update_stack.c
OBJFILES = main.o stack.o update_stack.o
EXEC = prog_stack

.SUFFIXES : .c .o 

.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC} 
