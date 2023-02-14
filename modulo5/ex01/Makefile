prog_size: size.o main.o
	gcc size.o main.o -o prog_size

size.o: size.c
	gcc -g -Wall -c size.c -o size.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_size

run: prog_size
	./prog_size
