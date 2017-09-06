# 	[target] : [prerequisites]
#		[command]
#	target : file or .o or TAG NAME ......
#	prerequisites : can be empty, or some files ......
# 	command : shell command ,  start with [TAB], if start with space, error will be shown like below: 
#	HelloWorld1.mk:9: *** missing separator.  Stop.
#	@ in command, disable cmd show.

ALL :
	echo "Hello Makefile!"
	echo "Hello Makefile 2!"
	@echo "Hello Makefile 3!"

#echo "Hello Makefile!"
#Hello Makefile!
#echo "Hello Makefile 2!"
#Hello Makefile 2!
#Hello Makefile 3!

