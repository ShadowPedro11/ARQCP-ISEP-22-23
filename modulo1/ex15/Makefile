INCLUDES = sets.h
SOURCES = check.c main.c nSets.c populate.c
OBJFILES = check.o main.o nSets.o populate.o
EXEC = prog_sets

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
