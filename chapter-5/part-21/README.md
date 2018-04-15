# Part 21

---

# Relational Database

The most common database structure is build upon relational model.

The data modeling itself contains tables of fields and values, consisted in rows and columns.

In each table, data schema can be created to give the requirement of the data.

**Table View**

```sh
Users
+----+-------+------------------+
| id | name  | email            | # Field
+----+-------+------------------+
|  1 | Alpha | alpha@domain.com | # Record/Row
|  2 | Beta  | beta@domain.com  |
+----+-------+------------------+
# Column

Addresses
+----+------------+-----------+
| id | address    | person_id |
+----+------------+-----------+
|  1 | Ex Street  |  1        |
|  2 | Way Street |  2        |
+----+------------+-----------+
```

**Schema View**

![](./assets/database-schema.svg)

* Field = Every table is broken up into smaller entities called fields. The fields in the `Users` table consist of `id`, `name`, `email`.
* Record/Row = A record is also called as a row of data is each individual entry that exists in a table.
* Column = A column is a vertical entity in a table that contains all information associated with a specific field in a table.

---

# SQL (Structured Query Language)

SQL itself is a query language that often used for storing, manipulating, and retrieving data stored in a relational database.

It allows to:

* access data in the relational database management systems.
* describe the data.
* define the data in a database and manipulate that data.
* within other languages using SQL modules, libraries, and pre-compilers.
* create and drop databases and tables.
* create view, stored procedure, functions in a database.
* set permissions on tables, procedures, and views.

## References

* [A Gentle Introduction to SQL and NoSQL Databases – Jimmy Farrell’s Blog – Medium](https://medium.com/jimmy-farrell/a-gentle-introduction-to-sql-and-nosql-databases-347e53056b06)
* [SQL Tutorial - TutorialsPoint](https://www.tutorialspoint.com/sql/index.htm)
  * [SQL Syntax](https://www.tutorialspoint.com/sql/sql-syntax.htm)
* [SQL Tutorial - w3schools](https://www.w3schools.com/sql/default.asp)

---

# DBMS (Database Management System)

To actually use a SQL database in our program, we need a DBMS or database server; such as SQLite, MySQL/MariaDB, PostgreSQL, Oracle, Informix, Microsoft SQL Server, etc.

## References

* [SQLite](https://www.sqlite.org)
  * [SQLite Tutorial](https://www.tutorialspoint.com/sqlite/index.htm)
  * [DevDocs — SQLite documentation](http://devdocs.io/sqlite)
* [MySQL](https://www.mysql.com)
  * [MySQL Tutorial](https://www.tutorialspoint.com/mysql/index.htm)
* [MariaDB](https://mariadb.org)
  * [MariaDB Tutorial](https://www.tutorialspoint.com/mariadb/index.htm)
* [PostgreSQL](https://www.postgresql.org)
  * [PostgreSQL Tutorial](https://www.tutorialspoint.com/postgresql/index.htm)
  * [DevDocs — PostgreSQL 10 documentation](http://devdocs.io/postgresql~10)
* [Google Cloud SQL - MySQL & PostgreSQL Relational Database Service](https://cloud.google.com/sql)
* [Amazon Relational Database Service (RDS) – AWS](https://aws.amazon.com/rds)
* [Microsoft Azure SQL Database – Cloud Database as a Service](https://azure.microsoft.com/en-us/services/sql-database)

---

# SQL Database Tools

Then in order to access and use the installed database, we have to use a CLI or GUI tool.

## References

* [`mysql` — The MySQL Command-Line Tool](https://dev.mysql.com/doc/refman/5.7/en/mysql.html)
* [`mycli` - A Terminal Client for MySQL with AutoCompletion and Syntax Highlighting](http://www.mycli.net)
* [MySQL Workbench](https://www.mysql.com/products/workbench)
* [TeamSQL - Cross-platform SQL Client for MySQL, PostgreSQL, Microsoft SQL Server, Amazon Redshift and Redis](https://teamsql.io)

---

# SQL Database Hosting

There are various hosting solutions for SQL database that available for free. But for customized solution, we still need to install them in our own server or use a cloud service.

## References

* [Heroku Postgres - SQL Database Service on Heroku](https://www.heroku.com/postgres)
* [A Basic MySQL Tutorial | DigitalOcean](https://www.digitalocean.com/community/tutorials/a-basic-mysql-tutorial)
* [Caspio - Free Online Database | Create Easy Cloud Applications](https://free.caspio.com)

---

# Table Essentials

* Tables, relations, connections
* Table relationship
* 1 to 1, 1 to many, many to many

## References

---

# SQL query

* `CREATE`, `SELECT`, `INSERT`

---

# SQL Tools

* MySQL Workbench

---

# SQL Hosted

* Heroku Postres

---

# Table Join

* `FULL`, `INNER`, `OUTER`, `LEFT`, `RIGHT`

---

# Database Trivia

* Entity Relationship Diagram (ERD)
* Data Flow Diagram (DFD)
* Extract, Transform, Load (ETL)
* Indexing
