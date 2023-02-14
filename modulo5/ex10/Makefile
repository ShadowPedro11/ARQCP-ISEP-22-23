INCLUDES = new_str.h
SOURCES =  main.c new_str.c
OBJFILES = main.o new_str.o
EXEC = prog_steps

.SUFFIXES : .c .o .s

.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
