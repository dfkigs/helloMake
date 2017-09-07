VPATH = ./: ./src

main : main.c
	cc     $^   -o main

clean :
	-rm main
