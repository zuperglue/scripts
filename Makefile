MAKEFILE := $(firstword $(MAKEFILE_LIST))
HELP_PREFIX = \# CMD:

SRC_DIR = ./scripts
DEST_DIR = /usr/local/bin

FILES= git-info
TARGETS = $(addprefix $(DEST_DIR)/,$(FILES))
SOURCES = $(addprefix $(SRC_DIR)/,$(FILES))


targets=$(addprefix $(TARGETDIR)/,$(FILES))

default: help

# CMD: install - install scripts
install: $(DEST_DIR)/git-info

# CMD: uninstall - uninstall scripts
uninstall:
	rm $(DEST_DIR)/git-info


$(DEST_DIR)/git-info: $(SRC_DIR)/git-info
	cp $< $@




# CMD: help - list availible commands/targets
help:
	@cat ${MAKEFILE} | grep '^${HELP_PREFIX}' | sed -e "s/^${HELP_PREFIX}//"

