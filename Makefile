ifneq (,$(wildcard ./.env))
	include .env
	export
endif 

.PHONY: node xvfb puppeteer

.EXPORT_ALL_VARIABLES:
COMPOSE_DOCKER_CLI_BUILD=1
DOCKER_BUILDKIT=1

node:
	docker-compose build node

xvfb:
	docker-compose build xvfb

puppeteer:
	docker-compose build puppeteer