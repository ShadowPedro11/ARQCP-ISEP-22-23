INCLUDES = reset_bit.h
SOURCES =  main.c reset_bit.s reset_2bits.s
OBJFILES = main.o reset_bit.o reset_2bits.o
EXEC = prog_steps

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
