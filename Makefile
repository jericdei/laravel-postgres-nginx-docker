build:
	docker compose build

start:
	docker compose up -d

stop:
	docker compose down

fresh:
	docker compose build --no-cache && docker compose up -d --force-recreate

api:
	docker exec -it $(shell docker compose ps -q api | awk 'NR==1{print $1}') sh	

