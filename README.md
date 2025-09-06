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
Gooseを使用
```
# up
make migrate-up

# down
make migrate-down
```

## seed（Gooseを使用）
```
mysql -u user -ppassword -h 127.0.0.1 -P 3306 mydb < seeds/users.sql
```