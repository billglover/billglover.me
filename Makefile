SHELL := /bin/bash
.POSIX:
.PHONY: help

help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

dev: ## Run the local development server
	hugo serve --enableGitInfo --disableFastRender --environment development --buildDrafts --buildFuture