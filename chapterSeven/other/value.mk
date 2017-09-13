FOO = $PATH

all :
	@echo $(FOO)
	echo $(value FOO)

# 
# $echo $PATH
# $/sbin/:/usr/local/bin:/usr/bin:/bin
