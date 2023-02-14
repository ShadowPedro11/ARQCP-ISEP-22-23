INCLUDES = activate.h
SOURCES =  main.c activate.s invert.s
OBJFILES = main.o activate.o invert.o
EXEC = prog_activate_invert

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
