CONTAINER=docker compose exec app

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down --rmi local -v

rmi:
	docker rmi gradle:7.5.1-jdk17

start:
	docker compose start

stop:
	docker compose stop

access:
	$(CONTAINER) /bin/bash

prettier:
	$(CONTAINER) prettier --write src

lint:
	$(CONTAINER) npx eslint src --fix

ts-node:
	$(CONTAINER) ts-node
