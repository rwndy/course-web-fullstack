# Auth Project 1

---

## Level 0

Create new table named `accounts` inside `employees` database, this table have no association with another tables inside `employees` database.

```sh
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| email         | varchar(50)  | NO   | PRI | NULL    |       |
| password      | varchar(100) | NO   |     | NULL    |       |
| password_salt | varchar(50)  | NO   |     | NULL    |       |
| first_name    | varchar(45)  | NO   |     | NULL    |       |
| last_name     | varchar(45)  | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+

```

## Level 1

Create new api route `POST yourapidomain.com/accounts/register` to register new account :

1. display hashed password and password salt temporary for development only.
2. create hashed password and password salt using bycript.

request body example :
```js
{
	"first_name": "admin",
	"last_name": "system",
	"email": "admin@admin.com",
	"password": "admin"
}
```

expected api response :
```js
{
    "message": "insert account data success",
    "data": {
        "first_name": "admin",
        "last_name": "system",
        "email": "admin@admin.com",
        "password": "$2a$10$4OELp2paiE4QUwIPVi2VyugtS0nt2g9ZUnMTq14QUdByMDgPn4vOC", 
        "password_salt": "$2a$10$agwS2dQwSVoV6GvgM5cHpe"
    }
}

```

## Level 2

Create new api route `POST yourapidomain.com/accounts/login` to login and get token :

1. Use `bcrypt.compareSync()` to compare password from body and password from accounts table.
1. Put accounts full name and email inside `JSON Web Token` payload.
1. Set unique string as `JSON Web Token` secret.
1. Set `JSON Web Token` expiration in 30 days.

request body example :
```js
{
	"email": "admin@admin.com",
	"password": "admin"
}
```

expected api response :
```js
{
    "message": "You are logged in",
    "email": "admin@admin.com",
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiYWRtaW4gc3lzdGVtIiwiZW1haWwiOiJhZG1pbkBhZG1pbi5jb20iLCJpYXQiOjE1MzI3NjM0MjAsImV4cCI6MTUzNTM1NTQyMH0.dV6gjI4kPq_gENpGqNta-Sae-hwPUVcB_M-nI_1cPlI"
}
```

---

## Level 3

Create middleware to protect all api route that start with `/employees` from invalid token, that middleware should able to:

1. Decode the token using `jwt.verify()` and check if the token is valid.
1. Validate token from header. ([validate-from-header-example](./images/auth-project-1-level-4-1.gif))
1. Validate token from request body. ([validate-from-request-body-example](./images/auth-project-1-level-4-2.gif))
1. Validate token from query url. ([validate-from-query-url-example](./images/auth-project-1-level-4-3.gif))

