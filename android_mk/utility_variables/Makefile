
# Utility variables.
empty :=
space := $(empty) $(empty)
comma := ,


# Note that make will eat the newline just before endef.
define newline


endef

# Unfortunately you can't simply define backslash as \ or \\.
backslash := \a
backslash := $(patsubst %a,%,$(backslash))

all :
	@echo "$(backslash)$(space)$(backslash)$(comma)"
	@echo $(newline)
