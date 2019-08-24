# 启动mysql

```shell script
# 第一次启动
docker run --restart=always --name mysql -p 3306:3306 -p 33060:33060 -v ~/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123123 -d mysql:8.0.17 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
# 再次启动
docker run --restart=always --name mysql -p 3306:3306 -p 33060:33060 -v ~/mysql:/var/lib/mysql -d mysql:8.0.17
```
