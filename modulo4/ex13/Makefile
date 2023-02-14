INCLUDES = rotate.h
SOURCES =  main.c rotate_right.c rotate_left.c
OBJFILES = main.o rotate_right.o rotate_left.o
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
