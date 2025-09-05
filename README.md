# practice-SQL
2025.09 ~ DB練習用

## dockerコンテナの立ち上げ
```
# コンテナ立ち上げ
docker-compose up -d

# コンテナの起動確認
docker ps

# コンテナ停止
docker-compose down
```

#### adminer
GUIでテーブル操作ができる！
```
http://localhost:8080/
```

## マイグレーションの実行
Gooseを使用
```
# up
goose -dir ./migrations mysql "user:password@tcp(localhost:3306)/mydb" up

# down
goose -dir ./migrations mysql "user:password@tcp(localhost:3306)/mydb" down
```