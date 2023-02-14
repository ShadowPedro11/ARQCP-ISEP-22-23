INCLUDES = call_proc.h
SOURCES =  main.c call_proc.s proc.s
OBJFILES = main.o call_proc.o proc.o
EXEC = prog_call_proc

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
