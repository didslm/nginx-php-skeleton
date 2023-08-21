.PHONY: help

help:
	@echo "Available commands:"
	@sed -n 's/^##//p' Makefile | column -t -s ':' |  sed -e 's/^/  /'

##make hello - Say hello
hello:
	@echo "Hello"

##make up - Build docker image and run docker-compose up
up:
	make down
	make build
	docker-compose up -d

##make down - Stop running docker-compose containers
down:
	docker-compose down -v

##make build - Build docker-compsoe images
build:
	docker-compose build

##make tests - Run unit tests
tests:
	./vendor/bin/phpunit tests/unit

##make deps - Runs composer install through docker
deps:
	@(docker run --rm --interactive --tty --volume $$PWD:/app --volume ${COMPOSER_HOME:-$$HOME/.composer}:/tmp composer install --no-interaction --prefer-dist)
