all: print

print: print.o
	ld print.o -lc -o print
print.o: print.s
	as print.s -o print.o
