prog_activate: activate.o main.o
	gcc activate.o main.o -o prog_activate

activate.o: activate.c
	gcc -g -Wall -c activate.c -o activate.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_activate

run: prog_activate
	./prog_activate
