docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker-compose up --build -d

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


perm:
	sudo chgrp -R www-data storage bootstrap/cache
	sudo chmod -R ug+rwx storage bootstrap/cache
	sudo chmod -R 775 storage

composer-install:
	docker-compose exec php-cli composer install


dump-load:
	mysql --host=127.0.0.1 -P33063 -u"app" -p"secret" -f app < docker/dump.sql

create-dirs:
	sudo mkdir storage/framework
	sudo mkdir storage/framework/sessions
	sudo mkdir storage/framework/views
	sudo mkdir storage/framework/cache
	sudo mkdir storage/framework/cache/data

init: docker-build create-dirs perm composer-install dump-load


#	docker-compose exec mysql mysql --host=127.0.0.1 -P33063 -u"app" -p"secret" -f app < home/dump.sql
#	mysql --host=127.0.0.1 -P33063 -u"app" -p"secret" -f app < docker/dump.sql
#   docker exec -it iprt_mysql_1 sh -c "cat /home/dump.sql" | mysql -u"app" -p"secret"  -f app
# 	docker-compose exec mysql -uapp -psecret  -f app < docker/dump.sql
# 	docker exec -it ipr_mysql_1 bash sh -c "pv /home/dump.sql" | mysql -uapp -psecret  -f app
