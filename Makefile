docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker-compose build --build-arg user_uid=$$(id -u) --build-arg group_uid=$$(id -g)

test:
	docker-compose exec -u www-data php-cli vendor/bin/phpunit

assets-install:
	docker-compose exec -u www-data node yarn install

assets-rebuild:
	docker-compose exec -u www-data node npm rebuild node-sass --force

assets-dev:
	docker-compose exec -u www-data node yarn run dev

assets-watch:
	docker-compose exec -u www-data node yarn run watch

composer-install:
	docker-compose exec -u www-data php-cli composer install


dump-load:
	docker-compose exec mysql /bin/bash -c 'mysql -u"app" -p"secret" app < /var/backups/dump.sql'

init: docker-build docker-up composer-install dump-load


