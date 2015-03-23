AUTHOR = frdmn
NAME = docker-ghost
VERSION = 1.0.0
SHELL := /bin/bash

.PHONY: all pull stop remove run

all: pull run

pull:
	@docker pull dockerfile/ghost

stop:
	@if [[ "$(shell docker inspect -f {{.State.Running}} "$(NAME)" 2> /dev/null)" == "true" ]]; then \
		printf "INFO: Stopping running container '$(NAME)' ..."; \
		docker stop "$(NAME)" &> /dev/null && printf " done!\n" || printf " failed!\n"; \
	else \
		printf "WARN: container '$(NAME)' is not running.\n"; \
	fi

remove:
	@if [[ "$(shell docker inspect -f {{.State.Running}} "$(NAME)" 2> /dev/null)" == "false" ]]; then \
		printf "INFO: Removing existing container '$(NAME)' ..."; \
		docker rm "$(NAME)" &> /dev/null && printf " done!\n" || printf " failed!\n"; \
	else \
		printf "WARN: container '$(NAME)' doesn't exist.\n"; \
	fi

run: stop remove
	@printf "INFO: Starting new container '$(NAME)' ..."
	@docker run --name="$(NAME)" --restart=always -d -p 8091:2368 -v $(shell pwd):/ghost-override dockerfile/ghost
