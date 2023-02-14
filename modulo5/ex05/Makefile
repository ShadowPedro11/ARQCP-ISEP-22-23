INCLUDES = fill_student.h
SOURCES =  main.c fill_student.c update_address.s update_grades.s
OBJFILES = main.o fill_student.o update_address.o update_grades.o
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
