prog_copyvec: copyvec.o main.o
	gcc copyvec.o main.o -o prog_copyvec

copyvec.o: copyvec.c
	gcc -g -Wall -c copyvec.c -o copyvec.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_copyvec

run: prog_copyvec
	./prog_copyvec
