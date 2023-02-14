prog_fill_students: fill_students.o main.o
	gcc fill_students.o main.o -o prog_fill_students

fill_students.o: fill_students.c
	gcc -g -Wall -c fill_students.c -o fill_students.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_fill_students

run: prog_fill_students
	./prog_fill_students
