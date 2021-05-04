## Makefile directory ##
ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

## Colors ##
BLACK := $(shell tput -Txterm setaf 0)
RED := $(shell tput -Txterm setaf 1)
GREEN := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
BLUE := $(shell tput -Txterm setaf 4)
MAGENTA := $(shell tput -Txterm setaf 5)
CYAN := $(shell tput -Txterm setaf 6)
WHITE := $(shell tput -Txterm setaf 7)
RESET := $(shell tput -Txterm sgr0)

## Help function ##
HELP_FUN = \
    %help; \
    while(<>) { push @{$$help{$$2 // 'Targets'}}, [$$1, $$3] if /^([a-zA-Z\-]+)\s*:.*\#\#(?:@([a-zA-Z\-]+))?\s(.*)$$/ }; \
    print "Usage: make ${BLUE}TARGET${RESET} ${MAGENTA}[ARGUMENTS]${RESET}\n\n"; \
    for (sort keys %help) { \
    print "${WHITE}$$_:${RESET}\n"; \
    for (sort {$$a->[0] cmp $$b->[0]} @{$$help{$$_}}) { \
    $$sep = " " x (15 - length $$_->[0]); \
    print "  ${YELLOW}$$_->[0]${RESET}$$sep${GREEN}$$_->[1]${RESET}\n"; \
    }; \
    print "\n"; }

## Docker commands ##
DOCKER := docker
DOCKER_COMPOSE := docker-compose
DOCKER_COMPOSE_FILE := $(ROOT_DIR)/docker-compose.yml

## Set 'sh' as default shell
SHELL = /bin/sh
## Set 'help' target as the default goal
.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)

.PHONY: up
start: ## Start Marsel
	@$(DOCKER_COMPOSE) up -d

.PHONY: down
stop: ## Stop Marsel
	@$(DOCKER_COMPOSE) down

.PHONY: mariadb-health
mariadb-health: ## Check MariaDB health
	@@$(DOCKER) exec marsel-db mysqladmin --user=root --password=marsel-rp --host "127.0.0.1" ping --silent 2>/dev/null | grep -q "mysqld is alive" && echo "MariaDB is up!" || echo "MariaDB is down!"
