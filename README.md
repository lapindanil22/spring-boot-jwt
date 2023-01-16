# spring-boot-jwt

# Endpoints
```
POST /auth
GET /hello
```

`/hello` защищен, и без валидного токена возвращает пустой ответ.
Сначала необходимо отправить запрос на `/auth`, тело которого содержит логин/пароль:
```json
{
    "username":"username",
    "password":"password"
}
```
Вернется bearer токен, с которым отправляем запрос на `/hello` и получаем сообщение
`Hello World`

# Сборка и запуск

```
mvn clean install
java -jar target/spring-boot-jwt.jar
```

# Docker

## Готовый

```
docker run -p 8080:8080 lapindanil22/spring-boot-jwt
```

## Или вручную

```
docker build -t spring-boot-jwt .
docker run --name=spring-boot-jwt -p 8080:8080 spring-boot-jwt
```
