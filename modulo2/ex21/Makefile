prog_newSalary: newSalary.o main.o
	gcc  newSalary.o main.o -o prog_newSalary

newSalary.o: newSalary.s
	gcc -g -Wall -c newSalary.s -o newSalary.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_newSalary

run: prog_newSalary
	./prog_newSalary
