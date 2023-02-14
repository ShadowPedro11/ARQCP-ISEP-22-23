prog_capitalize: capitalize.o main.o
	gcc capitalize.o main.o -o prog_capitalize

capitalize.o: capitalize.c
	gcc -g -Wall -c capitalize.c -o capitalize.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_capitalize

run: prog_capitalize
	./prog_capitalize
