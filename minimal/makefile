all: minimal

minimal: minimal.o
	ld minimal.o -o minimal
minimal.o: minimal.s
	as minimal.s -o minimal.o
