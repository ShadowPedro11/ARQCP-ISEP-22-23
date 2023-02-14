prog_whereIs: whereIs.o main.o
	gcc whereIs.o main.o -o prog_whereIs

whereIs.o: whereIs.c
	gcc -g -Wall -c whereIs.c -o whereIs.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_whereIs

run: prog_whereIs
	./prog_whereIs
