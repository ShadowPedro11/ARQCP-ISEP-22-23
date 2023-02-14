prog_arraySort2: arraySort2.o main.o
	gcc arraySort2.o main.o -o prog_arraySort2

arraySort2.o: arraySort2.c
	gcc -g -Wall -c arraySort2.c -o arraySort2.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_arraySort2

run: prog_arraySort2
	./prog_arraySort2
