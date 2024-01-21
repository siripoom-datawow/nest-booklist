migrations:
	npm migration:generate src/db/migrations/${name}

migrate:
	npm migration:run

up:
	docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down --remove-orphans
