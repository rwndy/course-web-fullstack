# SQL Project 1

---

## Level 0

1. Create database named `employees_demo`.
1. `Create table` named `employees` with the specified table schema below.
1. Fill `employees` table with specified table content below.


```sh
# employee table schema :
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| emp_no     | int(11)       | NO   | PRI | NULL    | auto_increment |
| birth_date | date          | NO   |     | NULL    |                |
| first_name | varchar(14)   | NO   |     | NULL    |                |
| last_name  | varchar(16)   | NO   |     | NULL    |                |
| gender     | enum('M','F') | NO   |     | NULL    |                |
| hire_date  | date          | NO   |     | NULL    |                |
+------------+---------------+------+-----+---------+----------------+

# employee table content :
+--------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date  |
+--------+------------+------------+-----------+--------+------------+
|      1 | 1991-12-01 | Surya      | Raja      | M      | 2004-02-02 |
|      2 | 2010-12-01 | Jonathan   | Sugiarto  | M      | 2015-02-02 |
|      3 | 2010-12-01 | Komarudin  | Yaochuan  | M      | 2015-02-02 |
|      4 | 1994-12-01 | Gommaar    | Jonker    | M      | 2014-02-02 |
|      5 | 1977-01-01 | Susi       | Susanti   | F      | 2014-02-02 |
+--------+------------+------------+-----------+--------+------------+
```

---

## Level 1

1. `Create table` named `titles` with specified table schema below.
1. Fill `titles` table with specified table content below.

```sh
# titles table schema :
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| emp_no    | int(11)     | NO   | PRI | NULL    |       |
| title     | varchar(50) | NO   | PRI | NULL    |       |
| from_date | date        | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

# titles table content :
+--------+-----------------+------------+
| emp_no | title           | from_date  |
+--------+-----------------+------------+
|      1 | Senior Engineer | 2004-02-02 |
|      2 | Staff           | 2015-02-02 |
|      3 | Senior Engineer | 2015-02-02 |
|      4 | Senior Staff    | 2014-02-02 |
|      5 | Staff           | 2014-02-02 |
+--------+-----------------+------------+
```

---

## Level 2

1. Use `alter table` statement to add new column named `to_date` with default value '9999-01-01'.
1. Use `alter table` statement to add `to_date` column as primary key.


```sh
# titles table schema :
+-----------+-------------+------+-----+------------+-------+
| Field     | Type        | Null | Key | Default    | Extra |
+-----------+-------------+------+-----+------------+-------+
| emp_no    | int(11)     | NO   | PRI | NULL       |       |
| title     | varchar(50) | NO   | PRI | NULL       |       |
| from_date | date        | NO   | PRI | NULL       |       |
| to_date   | date        | YES  |     | 9999-01-01 |       |
+-----------+-------------+------+-----+------------+-------+

# titles table content :
+--------+-----------------+------------+------------+
| emp_no | title           | from_date  | to_date    |
+--------+-----------------+------------+------------+
|      1 | Senior Engineer | 2004-02-02 | 9999-01-01 |
|      2 | Staff           | 2015-02-02 | 9999-01-01 |
|      3 | Senior Engineer | 2015-02-02 | 9999-01-01 |
|      4 | Senior Staff    | 2014-02-02 | 9999-01-01 |
|      5 | Staff           | 2014-02-02 | 9999-01-01 |
+--------+-----------------+------------+------------+
```

---

## Level 3

Use the `update` statement to update data like specified table content below.

```sh
# titles table content :
+--------+-----------------+------------+------------+
| emp_no | title           | from_date  | to_date    |
+--------+-----------------+------------+------------+
|      1 | Senior Engineer | 2004-02-02 | 9999-01-01 |
|      2 | Staff           | 2015-02-02 | 9999-01-01 |
|      3 | Senior Engineer | 2015-02-02 | 9999-01-01 |
|      4 | Senior Staff    | 2014-02-02 | 9999-01-01 |
|      5 | Staff           | 2014-02-02 | 2014-02-22 | # <- update to_date where emp_no = 5
+--------+-----------------+------------+------------+
```

## Level 4

1. Import MySql database named `employees` [example-db](https://github.com/datacharmer/test_db)(read the documentation).
2. After that open the view database ERD using MySQL Workbench.

Database ERD :
[example-db](./images/sql-project-1-level-4.png)


## Level 5

Using `employees` db, perform query to get `emp_no`,`first_name`,`last_name`,`title`,`from_date`,`to_date` of current date active employee.

```sh
# Query result:
+--------+------------+-----------+-----------------+------------+------------+
| emp_no | first_name | last_name | title           | from_date  | to_date    |
+--------+------------+-----------+-----------------+------------+------------+
|  10001 | Georgi     | Facello   | Senior Engineer | 1986-06-26 | 9999-01-01 |
|  10002 | Bezalel    | Simmel    | Staff           | 1996-08-03 | 9999-01-01 |
|  10003 | Parto      | Bamford   | Senior Engineer | 1995-12-03 | 9999-01-01 |
|  10004 | Chirstian  | Koblick   | Senior Engineer | 1995-12-01 | 9999-01-01 |
|  10005 | Kyoichi    | Maliniak  | Senior Staff    | 1996-09-12 | 9999-01-01 |
|  10006 | Anneke     | Preusig   | Senior Engineer | 1990-08-05 | 9999-01-01 |
|  10007 | Tzvetan    | Zielinski | Senior Staff    | 1996-02-11 | 9999-01-01 |
|  10009 | Sumant     | Peac      | Senior Engineer | 1995-02-18 | 9999-01-01 |
|  10010 | Duangkaew  | Piveteau  | Engineer        | 1996-11-24 | 9999-01-01 |
|  10012 | Patricio   | Bridgland | Senior Engineer | 2000-12-18 | 9999-01-01 |
+--------+------------+-----------+-----------------+------------+------------+
```

## Level 6

Using `employees` DB, perform a query to get a total of the current active employee (use `count` function).

```sh
# Query result:
+-------------------------+
| current_active_employee |
+-------------------------+
|                  240125 |
+-------------------------+
```

## Level 7

Using `employees` DB, perform a query to get a total of the current active employee (use `count` function) based on job title.

```sh
# Query result:
+--------------------+-------+
| title              | total |
+--------------------+-------+
| Assistant Engineer |  3588 |
| Engineer           | 30983 |
| Manager            |     9 |
| Senior Engineer    | 85939 |
| Senior Staff       | 82025 |
| Staff              | 25526 |
| Technique Leader   | 12055 |
+--------------------+-------+
```


## Level 8

Perform a query to get current active male/female employee based on departement name.

```sh
# Query result:
+--------------------+-------+--------+
| dept_name          | Male  | Female |
+--------------------+-------+--------+
| Marketing          |  8978 |   5864 |
| Finance            |  7423 |   5014 |
| Human Resources    |  7751 |   5147 |
| Production         | 31911 |  21393 |
| Development        | 36853 |  24533 |
| Quality Management |  8674 |   5872 |
| Sales              | 22702 |  14999 |
| Research           |  9260 |   6181 |
| Customer Service   | 10562 |   7007 |
+--------------------+-------+--------+
```


## Level 9

Add total in the and of the query result table.

```sh
# Query result:
+--------------------+--------+--------+
| dept_name          | Male   | Female |
+--------------------+--------+--------+
| Marketing          |   8978 |   5864 |
| Finance            |   7423 |   5014 |
| Human Resources    |   7751 |   5147 |
| Production         |  31911 |  21393 |
| Development        |  36853 |  24533 |
| Quality Management |   8674 |   5872 |
| Sales              |  22702 |  14999 |
| Research           |   9260 |   6181 |
| Customer Service   |  10562 |   7007 |
| TOTAL              | 144114 |  96010 | # <- total
+--------------------+--------+--------+
```




