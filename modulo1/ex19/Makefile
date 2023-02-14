prog_findWord: findWord.o main.o
	gcc findWord.o main.o -o prog_findWord

findWord.o: findWord.c
	gcc -g -Wall -c findWord.c -o findWord.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_findWord

run: prog_findWord
	./prog_findWord
