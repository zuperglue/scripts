MAKEFILE := $(firstword $(MAKEFILE_LIST))
HELP_PREFIX = \# Help:


default: help

# Help: help - list availible commands/targets
help:
	@cat ${MAKEFILE} | grep '^${HELP_PREFIX}' | sed -e "s/^${HELP_PREFIX}//"


# Help: clean - clean-up any artifacts
clean:
	@echo "clean"

# Help: install - install artifacts
install:
	@echo "install"

# Help: build - clean and build artifacts
build: clean
	@echo "build"

# Help: deploy - build and deploy artifacts
deploy: build
	@echo "deploy"