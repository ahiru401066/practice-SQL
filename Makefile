hello:
	@echo "hello Makefile!"

up:
	@docker compose up -d

down:
	@docker compose down

migrate-up:
	@goose -dir ./migrations mysql "user:password@tcp(localhost:3306)/mydb" up

migrate-down:
	@goose -dir ./migrations mysql "user:password@tcp(localhost:3306)/mydb" down