docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker-compose build --build-arg user_uid=$$(id -u) --build-arg group_uid=$$(id -g)

test:
	docker-compose exec php-cli vendor/bin/phpunit

assets-install:
	docker-compose exec node yarn install

assets-rebuild:
	docker-compose exec node npm rebuild node-sass --force

assets-dev:
	docker-compose exec node yarn run dev

assets-watch:
	docker-compose exec node yarn run watch

composer-install:
	docker-compose exec php-cli composer install


dump-load:
	docker-compose exec mysql mysql /bin/bash -c 'mysql -u"app" -p"secret" app < /home/mysql/dump.sql'

init: docker-build composer-install dump-load


#	docker-compose exec mysql mysql --host=127.0.0.1 -P33063 -u"app" -p"secret" -f app < home/dump.sql
#	mysql --host=127.0.0.1 -P33063 -u"app" -p"secret" -f app < docker/dump.sql
#   docker exec -it iprt_mysql_1 sh -c "cat /home/dump.sql" | mysql -u"app" -p"secret"  -f app
# 	docker-compose exec mysql -uapp -psecret  -f app < docker/dump.sql
# 	docker exec -it ipr_mysql_1 bash sh -c "pv /home/dump.sql" | mysql -uapp -psecret  -f app
