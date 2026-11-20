CC = g++
CFLAGS = -Wall -g

all: calculator_app

calculator_app: main.o libcalculator.a
	$(CC) $(CFLAGS) -o calculator_app main.o -L. -lcalculator

libcalculator.a: calculator.o
	ar rcs libcalculator.a calculator.o

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) -c main.cpp

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) -c calculator.cpp

clean:
	rm -f *.o *.a calculator_app
