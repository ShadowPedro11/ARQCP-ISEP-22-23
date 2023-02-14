INCLUDES = multiplication_table.h
SOURCES = line.c main.c multiplication_table.c multiplication_table_n.c
OBJFILES = line.o main.o multiplication_table.o multiplication_table_n.o
EXEC = prog_mult

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
