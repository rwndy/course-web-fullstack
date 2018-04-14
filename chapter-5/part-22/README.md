# Part 22

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

There are various ORM libraries in Node.js ecosystem like waterline, Sequelize, Knex, and Bookshelf.

## Architecture

Usually when using an ORM, an API project will cover:

* Model that contains data schema and access the actual database
* Controller that access the model to CRUD the data
* Routes or View that access the controller

This approach is most often called MVC (Model-View-Controller).

## References

* [waterline - an adapter-based ORM for node.js](http://waterlinejs.org)
* [Sequelize - The node.js ORM for PostgreSQL, MySQL, SQLite and MSSQL](http://docs.sequelizejs.com)
  * [Migrations](http://docs.sequelizejs.com/manual/tutorial/migrations.html)
* [Knex.js - A SQL Query Builder for Javascript](http://knexjs.org)
* [Bookshelf is a JavaScript ORM for Node.js, built on the Knex SQL query builder](http://bookshelfjs.org)

---

# Database Auth

...

## References

* ...
