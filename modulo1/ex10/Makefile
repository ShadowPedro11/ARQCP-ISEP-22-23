prog_oddSum: oddSum.o main.o
	gcc oddSum.o main.o -o prog_oddSum

oddSum.o: oddSum.c
	gcc -g -Wall -c oddSum.c -o oddSum.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_oddSum

run: prog_oddSum
	./prog_oddSum
