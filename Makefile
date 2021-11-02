build:
	docker-compose -f docker-compose.yml build

start:
	docker-compose up -d

stop:
	docker-compose down

exec:
	docker-compose exec ansible bash
