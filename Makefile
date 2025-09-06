# 環境変数読み込み
ifneq (,$(wildcard .env))
	include .env
	export 
endif

# DB
db = mysql -u $(MYSQL_USER) -p$(MYSQL_PASSWORD) -h 127.0.0.1 -P 3306 $(MYSQL_DATABASE)

hello:
	@echo "hello Makefile!"

# docker container
up:
	@docker compose up -d

down:
	@docker compose down

#DB
migrate-up:
	@for file in $(sort $(wildcard migrations/up/*.sql)); do \
		echo "Applying $$file"; \
		$(db) < $$file; \
	done

migrate-down:
	@for file in $(shell ls -r migrations/down/*.sql); do \
		echo "Reverting $$file"; \
		$(db) < $$file; \
	done

seed-user:
	@$(db) < seeds/users.sql