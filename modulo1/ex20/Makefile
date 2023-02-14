prog_findAllWords: findAllWords.o main.o findWord.o
	gcc findWord.o findAllWords.o main.o -o prog_findAllWords
	
findWord.o: findWord.c
	gcc -g -Wall -c findWord.c -o findWord.o

findAllWords.o: findAllWords.c
	gcc -g -Wall -c findAllWords.c -o findAllWords.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_findAllWords

run: prog_findAllWords
	./prog_findAllWords
