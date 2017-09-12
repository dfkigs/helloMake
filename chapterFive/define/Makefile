# rule:
# 1) makefile variable, use $(VAR) $(V),  not $VAR $V
# 2) variable in cmd line is a shell variable, use $$VAR , not $VAR or $$(VAR)
# 3) $$ --> $

all :
	echo $PATH
	echo $$PATH
	-echo $$(PATH)

test1 :
	echo $(foo)

# 1) Recursive variable
#  variable expended util final use
foo = $(bar)
bar = $(hei)
hei = Hello

# fatal error for 1) 
# $Makefile:15: *** Recursive variable `foo' references itself (eventually).  Stop
# $hei = $(foo)


# 2) := 
# 
test2 :
	echo $(x)
	echo $(y)

x := foo
y := $(x) bar
x := later


cur-dir := $(shell pwd)
whoami := $(shell whoami)
host-type := $(shell arch)

# 3) space
nullstring :=
space = $(nullstring) # space

test3 :
	echo "__"$(space)"__"


# 4) ?= 
FOO ?= foo

BAR := bar
BAR ?= foo

test4 :
	@echo FOO = $(FOO)
	@echo BAR = $(BAR)


# ?= just like below:
#ifeq ($(origin FOO),undefined)
#    FOO = foo
#endif
# fallible error :
# 1) [TAB] befor FOO = foo ;   space is ok
# 2) space after "," before undefined   ,  like :  ifeq ($(origin FOO), undefined)
