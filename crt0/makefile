all: crt0

crt0: crt0.o
	ld crt0.o -lc -o crt0
crt0.o: crt0.s
	as crt0.s -o crt0.o
