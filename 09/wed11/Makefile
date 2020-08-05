CC = gcc

all: test

test: test.o anotherTest.o
	$(CC) -Wall test.o anotherTest.o -o test

test.o: test.c
	$(CC) -c -Wall test.c

anotherTest.o: anotherTest.c
	$(CC) -c -Wall anotherTest.c

clean:
	rm -rf *.o test
