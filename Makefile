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
install: $(DEST_DIR)/git-util $(DEST_DIR)/docker-util $(DEST_DIR)/ecs

# CMD: uninstall - uninstall scripts
uninstall:
	rm $(DEST_DIR)/ecs
	rm $(DEST_DIR)/git-util
	rm $(DEST_DIR)/docker-util

# Files to copy

$(DEST_DIR)/git-util: $(SRC_DIR)/git-util
	cp $< $@


$(DEST_DIR)/docker-util: $(SRC_DIR)/docker-util
	cp $< $@

$(DEST_DIR)/ecs: $(SRC_DIR)/ecs
	cp $< $@


# CMD: help - list availible commands/targets
help:
	@cat ${MAKEFILE} | grep '^${HELP_PREFIX}' | sed -e "s/^${HELP_PREFIX}//"

