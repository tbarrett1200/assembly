all: while

while: while.o
	ld while.o -lc -o while
while.o: while.s
	as while.s -o while.o
