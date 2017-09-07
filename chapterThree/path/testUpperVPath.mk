# very important: VPATH is valid in Makefile !!
# so you can look at error and ok .
# and think !

VPATH = ./: ./src

# main.c in prerequisites is ok.  will replaced it with ./src/main.c
error : main.c
# main.c in below line is not ok, it will be passed to shell as main.c
	cc     main.c   -o main

ok : main.c
	cc     $^   -o main

clean :
	-rm main
