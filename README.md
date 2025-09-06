# practice-SQL
2025.09 ~ DB練習用

## dockerコンテナの立ち上げ
```
# コンテナ立ち上げ
make up

# コンテナの起動確認
docker ps

# コンテナ停止
make down
```

#### adminer
GUIでテーブル操作ができる！
```
http://localhost:8080/
```

## マイグレーションの実行
```
# up
make migrate-up

# down
make migrate-down
```

## seed
```
make seed-user
```