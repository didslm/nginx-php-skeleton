hello:
	echo "Hello"
up:
	make down
	docker-compose up -d
down:
	docker-compose down -v

build:
	docker-compose build
    
tests:
	./vendor/bin/phpunit tests/unit