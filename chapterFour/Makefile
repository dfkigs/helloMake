# make -s or --slient, == @echo "helloworld"
# make -n or --just-print,only show the command ,but not execute 
# make -i or --ignore-errors, ignore cmd runtime error
# make -k or --keep-going, ignore make runtime error

# makefile's CURDIR
# make[1]: Entering directory `make/chapterFour/test'
# hello in dir:Test
# make[1]: Leaving directory `make/chapterFour/test'

one:
	echo "helloworld1" $(value)
#	cd test; make;
	$(MAKE) -C test


two:
	echo "helloworld1:" $(value)
	make -C test

