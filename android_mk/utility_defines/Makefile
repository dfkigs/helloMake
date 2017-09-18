# 1)  abbreviate <----> full name 
PATH_MAPS := \
    camera:system/media/camera/include

define include-path-for
$(foreach n,$(1),$(patsubst $(n):%,%,$(filter $(n):%,$(PATH_MAPS))))
endef

ABB_NAME := camera
FULL_PATH := $(call include-path-for,$(ABB_NAME))

all :
	@echo "full path for $(ABB_NAME) : $(FULL_PATH)"


# 2)  variables depends on goal
ifneq (,$(strip $(filter goals,$(MAKECMDGOALS))))
GOALS := true
else
GOALS := false
endif

goals :
	@echo $(GOALS) $(MAKECMDGOALS)

# 3) case-insensitive filesystems check
OUT_DIR := out
ifneq (a,$(shell mkdir -p $(OUT_DIR) ; \
                echo a > $(OUT_DIR)/casecheck.txt; \
                    echo B > $(OUT_DIR)/CaseCheck.txt; \
                cat $(OUT_DIR)/casecheck.txt))
$(warning ************************************************************)
$(warning You are building on a case-insensitive filesystem.)
$(warning Please move your source tree to a case-sensitive filesystem.)
$(warning ************************************************************)
$(error Case-insensitive filesystems not supported)
endif


# 4) space check
# Make sure that there are no spaces in the absolute path; the
# build system can't deal with them.
ifneq ($(words $(shell pwd)),1)
$(warning ************************************************************)
$(warning You are building in a directory whose absolute path contains)
$(warning a space character:)
$(warning $(space))
$(warning "$(shell pwd)")
$(warning $(space))
$(warning Please move your source tree to a path that does not contain)
$(warning any spaces.)
$(warning ************************************************************)
$(error Directory names containing spaces not supported)
endif
