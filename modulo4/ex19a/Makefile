prog_add_byte: add_byte.o main.o
	gcc add_byte.o main.o -o prog_add_byte

activate.o: add_byte.c
	gcc -g -Wall -c add_byte.c -o add_byte.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_add_byte

run: prog_add_byte
	./prog_add_byte
