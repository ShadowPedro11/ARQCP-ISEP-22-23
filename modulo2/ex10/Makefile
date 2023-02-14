INCLUDES = sum3ints.h
SOURCES =  main.c sum3ints.s
OBJFILES = main.o sum3ints.o
EXEC = prog_sum3ints

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
