# Database ORM 1

---

# ORM (Object Relational Mapper)

ORM (Object Relational Mapper) is a programming technique for converting data between incompatible type systems using object-oriented programming languages.

Commonly used in database with relational table settings --such as RDBMS or SQL databases-- like MySQL, MariaDB, PostgreSQL, etc.

This way in JavaScript, we can change between table format and object format, easily.

**Table:**

```sh
| id | name
|----|-----
| 1  | "Alpha"
| 2  | "Beta"
```

**Object:**

```js
[
  {
    id: 1
    name: "Alpha"
  },
  {
    id: 2
    name: "Beta"
  }
]
```

## Libraries

There are various ORM libraries in Node.js ecosystem like Sequelize, TypeORM, waterline, Knex, Bookshelf, etc. Some platforms don't require ORM if there's a suitable SDK (Software Development Kit).

## Architecture

Usually when using an ORM, an API project will cover:

- Model that contains data schema and access the actual database
- Controller that access the model to CRUD the data
- Routes or View that access the controller

This approach is most often called MVC (Model-View-Controller).

## Getting Started

### Install Sequelize

```sh
npm install --save sequelize
```

### Create Connection to Database

```js
// Require sequelize
const Sequelize = require("sequelize")

// Create database connection
const sequelize = new Sequelize(
  "DB_NAME", // Database Name
  "DB_USER", // Database Username
  "DB_PASSWORD", // Database Password
  {
    host: "localhost", // Database host
    dialect: "mysql" // Database type
  }
)
```

### Create model

```js
// Create User model
const User = sequelize.define("user", {
  username: Sequelize.STRING,
  age: Sequelize.INTEGER
})
```

### Insert data to database

```js
User.create({
  username: "janedoe",
  birthday: 25
}).then(data => {
  console.log(data) // Will return user object
})
```

### Get data from database

```js
// Get all users
User.findAll().then(data => {
  console.log(data) // Will return user array
})
```

### Example with express

```js
const express = require("express")
const Sequelize = require("sequelize")

// Initialize express
const app = express()

// Create connection
const sequelize = new Sequelize(
  "DB_NAME", // Database Name
  "DB_USER", // Database Username
  "DB_PASSWORD", // Database Password
  {
    host: "localhost", // Database host
    dialect: "mysql" // Database type
  }
)

// Create user model
const User = sequelize.define("user", {
  username: Sequelize.STRING,
  age: Sequelize.INTEGER
})

// Synchronize database
sequelize.sync().then(() => {
  // Handle GET /users request
  app.get("/users", (req, res) => {
    // Get all users
    User.findAll().then(data => {
      res.send(data)
    })
  })

  // Start server on port 8000
  app.listen(8000)
})
```

---

## References

- [Sequelize - The node.js ORM for PostgreSQL, MySQL, SQLite and MSSQL](http://docs.sequelizejs.com)
  - [Migrations](http://docs.sequelizejs.com/manual/tutorial/migrations.html)
- [TypeORM - Amazing ORM for TypeScript and JavaScript (ES7, ES6, ES5). Supports MySQL, PostgreSQL, MariaDB, SQLite, MS SQL Server, Oracle, WebSQL databases. Works in NodeJS, Browser, Ionic, Cordova, and Electron platforms](http://typeorm.io)
- [waterline - an adapter-based ORM for node.js](http://waterlinejs.org)
- [Knex.js - A SQL Query Builder for JavaScript](http://knexjs.org)
- [Bookshelf is a JavaScript ORM for Node.js, built on the Knex SQL query builder](http://bookshelfjs.org)

---

# Database Auth

Encrypt user's credentials such as password with bcrypt.

## Authentication Flow

Register or signup for a new account:

1.  Encrypt the password body with bcrypt hash
2.  Create the user in the database
3.  Create the token with JWT sign
4.  Response with a token and user data (without password)

Login or signin for an existing account:

1.  Find the requested user email or username
    - If error, tell user is not found
2.  Validate the password with bcrypt compare
    - If error, tell password is invalid
3.  Create the token with JWT sign
4.  Response with a token and user data

---

## References

### Repositories

- TypeORM samples: https://github.com/impactbyte-learn/code-typeorm
- [Official Samples](http://typeorm.io/#/undefined/samples)
  - [Example how to use TypeORM with TypeScript](https://github.com/typeorm/typescript-example)
  - [Example how to use TypeORM with JavaScript](https://github.com/typeorm/javascript-example)
  - [Example how to use Express and TypeORM](https://github.com/typeorm/typescript-express-example)

### Documentations

- [`bcrypt`](https://npm.im/bcrypt)
- [`jsonwebtoken`](https://npm.im/jsonwebtoken)
- [JSON Web Tokens - jwt.io](https://jwt.io)
  - [JSON Web Token Introduction - jwt.io](https://jwt.io/introduction)
  - [JSON Web Token (JWT) explained](https://flaviocopes.com/jwt)
  - [JWT Analyzer & Inspector Chrome Extension](https://chrome.google.com/webstore/detail/jwt-analyzer-inspector/henclmbnehmcpbjgipaajbggekefngob?hl=en)
  - [JWT Debugger Chrome Extension](https://chrome.google.com/webstore/detail/jwt-debugger/ppmmlchacdbknfphdeafcbmklcghghmd?hl=en)

---

# API Project 3

- [API Project 3](../api-project-3/README.md)
