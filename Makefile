# 環境変数読み込み
ifneq (,$(wildcard .env))
	include .env
	export 
endif

# DB URL
db = "$(MYSQL_USER):$(MYSQL_PASSWORD)@tcp(localhost:3306)/$(MYSQL_DATABASE)"

hello:
	@echo "hello Makefile!"

up:
	@docker compose up -d

down:
	@docker compose down

migrate-up:
	@goose -dir ./migrations mysql $(db) up

migrate-down:
	@goose -dir ./migrations mysql $(db) down