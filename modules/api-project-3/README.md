# API Project 3

---

## Requirements

Use NodeJs, ExpressJs, SequelizeJs to create a simple api to get data from existing [employees](https://github.com/datacharmer/test_db) database.

---

## Level 0

Create sequelizeJs model named employees, based on employees table.

## Level 1

Create API route to read employee data with this following specification:


```js
// --------------------------------------------------------------------------------
// 1. API request : GET yourapidomain.com/employees 
// Expected Response : 
{
    "data": [
        {
            "emp_no": 10001,
            "birth_date": "1953-09-02",
            "first_name": "Georgi",
            "last_name": "Facello",
            "gender": "M",
            "hire_date": "1986-06-26"
        },
        {
            "emp_no": 10002,
            "birth_date": "1964-06-02",
            "first_name": "Bezalel",
            "last_name": "Simmel",
            "gender": "F",
            "hire_date": "1985-11-21"
        },
        // etc ... (limit 100)
    ]
}

// --------------------------------------------------------------------------------
// 2. API request : GET yourapidomain.com/employees/10001
// Expected Response : 

{
    "data": {
        "emp_no": 10001,
        "birth_date": "1953-09-02",
        "first_name": "Georgi",
        "last_name": "Facello",
        "gender": "M",
        "hire_date": "1986-06-26"
    }
}

// 3. Request Example : GET api.com/employees/9999999
// Expected Response :
// --------------------------------------------------------------------------------

{
    "message": "data not fund"
}
```

---

## Level 2

Create API route to create employee data with this following specification:

```js
// --------------------------------------------------------------------------------
// 1. API request : POST yourapidomain.com/employees
// req.body : 
{	
	"emp_no" : 500001,
	"birth_date": "2004-09-02",
    "first_name": "Joshua",
    "last_name": "Suherman",
    "gender": "M",
    "hire_date": "1986-06-26"
}
// Expected response :
{
    "message": "insert data success",
    "data": {
        "emp_no": 500001,
        "birth_date": "2004-09-02",
        "first_name": "Joshua",
        "last_name": "Suherman",
        "gender": "M",
        "hire_date": "1986-06-26"
    }
}
```

---

## Level 3

Create API route to update employee data with this following specification:

```js
// --------------------------------------------------------------------------------
// 1. API request : PUT yourapidomain.com/employees/500001
// req.body : 
{
	"last_name": "ghozali"
}
// Expected response :
{
    "message": "update data success",
    "data": {
        "emp_no": 500001,
        "birth_date": "2004-09-02",
        "first_name": "Joshua",
        "last_name": "ghozali",
        "gender": "M",
        "hire_date": "1986-06-26"
    }
}
// --------------------------------------------------------------------------------
// 2. API request : PUT yourapidomain.com/employees/500001
// req.body : 
{
	"last_name": "ghozaliiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"
}
// Expected response :
{
    "message": "error",
    "error": {
        "name": "SequelizeDatabaseError",
        "parent": {
            "code": "ER_DATA_TOO_LONG",
            "errno": 1406,
            "sqlState": "22001",
            "sqlMessage": "Data too long for column 'last_name' at row 1",
            "sql": "UPDATE `employees` SET `last_name`='ghozaliiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii' WHERE `emp_no` = 500001"
        },
        "original": {
            "code": "ER_DATA_TOO_LONG",
            "errno": 1406,
            "sqlState": "22001",
            "sqlMessage": "Data too long for column 'last_name' at row 1",
            "sql": "UPDATE `employees` SET `last_name`='ghozaliiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii' WHERE `emp_no` = 500001"
        },
        "sql": "UPDATE `employees` SET `last_name`='ghozaliiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii' WHERE `emp_no` = 500001"
    }
}
```

---

## Level 4

Create API route to delete employee data with this following specification:

```js
// --------------------------------------------------------------------------------
// 1. API request : DELETE yourapidomain.com/employees/500001
// Expected Output : 
{
    "message": "delete data success",
    "data": {
        "emp_no": 500001,
        "birth_date": "2004-09-02",
        "first_name": "Joshua",
        "last_name": "GODZILA",
        "gender": "M",
        "hire_date": "1986-06-26"
    }
}
// --------------------------------------------------------------------------------
// 1. API request : DELETE yourapidomain.com/employees/999999
// Expected Output : 
{
    "message": "data not found"
}
```

---

## Level 5

Create search API route to do specify offset and limit of data with this following specification:

```js
// --------------------------------------------------------------------------------
// 1. API request : GET yourapidomain.com/employees/search?limit=3
// Expected Output : 
{
    "filter": {
        "limit": 3
    },
    "data": [
        {
            "emp_no": 10001,
            "birth_date": "1953-09-02",
            "first_name": "Georgi",
            "last_name": "Facello",
            "gender": "M",
            "hire_date": "1986-06-26"
        },
        {
            "emp_no": 10002,
            "birth_date": "1964-06-02",
            "first_name": "Bezalel",
            "last_name": "Simmel",
            "gender": "F",
            "hire_date": "1985-11-21"
        },
        {
            "emp_no": 10003,
            "birth_date": "1959-12-03",
            "first_name": "Parto",
            "last_name": "Bamford",
            "gender": "M",
            "hire_date": "1986-08-28"
        }
    ]
}
// --------------------------------------------------------------------------------
// 2. API request : GET yourapidomain.com/employees/search?offset=3&limit=3
// Expected Output : 
{
    "filter": {
        "limit": 3,
        "offset": 3
    },
    "data": [
        {
            "emp_no": 10004,
            "birth_date": "1954-05-01",
            "first_name": "Chirstian",
            "last_name": "Koblick",
            "gender": "M",
            "hire_date": "1986-12-01"
        },
        {
            "emp_no": 10005,
            "birth_date": "1955-01-21",
            "first_name": "Kyoichi",
            "last_name": "Maliniak",
            "gender": "M",
            "hire_date": "1989-09-12"
        },
        {
            "emp_no": 10006,
            "birth_date": "1953-04-20",
            "first_name": "Anneke",
            "last_name": "Preusig",
            "gender": "F",
            "hire_date": "1989-06-02"
        }
    ]
}
// --------------------------------------------------------------------------------
// 3. API request : GET yourapidomain.com/employees/search
// expected output :
{
    "filter": {
        "limit": 100
    },
    "data": [
        {
            "emp_no": 10001,
            "birth_date": "1953-09-02",
            "first_name": "Georgi",
            "last_name": "Facello",
            "gender": "M",
            "hire_date": "1986-06-26"
        },
        {
            "emp_no": 10002,
            "birth_date": "1964-06-02",
            "first_name": "Bezalel",
            "last_name": "Simmel",
            "gender": "F",
            "hire_date": "1985-11-21"
        },
        // etc ...
    ]
}
```

---

## Level 6

Create search API route to do data sorting with this following specification:


```js
// --------------------------------------------------------------------------------
// 1. API request : GET yourapidomain.com/employees/search?sort=emp_no_desc
// expected output :
{
    "filter": {
        "limit": 100,
        "order": [
            [
                "emp_no",
                "desc"
            ]
        ]
    },
    "data": [
        {
            "emp_no": 500008,
            "birth_date": "2004-09-02",
            "first_name": "Adi",
            "last_name": "Sumardissss",
            "gender": "M",
            "hire_date": "1986-06-26"
        },
        {
            "emp_no": 500007,
            "birth_date": "2004-09-02",
            "first_name": "abcdefg",
            "last_name": "Sumardissss",
            "gender": "M",
            "hire_date": "1986-06-26"
        },
        // etc ...
    ]
}
// --------------------------------------------------------------------------------
// 2. API request : GET yourapidomain.com/employees/search?sort=first_name_asc
// expected output :
{
    "filter": {
        "limit": 100,
        "order": [
            [
                "first_name",
                "asc"
            ]
        ]
    },
    "data": [
        {
            "emp_no": 86639,
            "birth_date": "1953-11-12",
            "first_name": "Aamer",
            "last_name": "Yavatkar",
            "gender": "M",
            "hire_date": "1985-03-16"
        },
        {
            "emp_no": 88553,
            "birth_date": "1958-04-06",
            "first_name": "Aamer",
            "last_name": "Matheson",
            "gender": "F",
            "hire_date": "1988-09-03"
        },
        // etc...
    ]
}
```

---

## Level 7

Create search API route to do data filtering with this following specification:

```js
// --------------------------------------------------------------------------------
// 1. API request : GET yourapidomain.com/employees/search?gender=M
// expected output :
{
    "filter": {
        "limit": 100,
        "where": {
            "gender": "M"
        }
    },
    "data": [
        {
            "emp_no": 10001,
            "birth_date": "1953-09-02",
            "first_name": "Georgi",
            "last_name": "Facello",
            "gender": "M",
            "hire_date": "1986-06-26"
        },
        {
            "emp_no": 10003,
            "birth_date": "1959-12-03",
            "first_name": "Parto",
            "last_name": "Bamford",
            "gender": "M",
            "hire_date": "1986-08-28"
        },
        // etc ...
    ]
}
// --------------------------------------------------------------------------------
// 2. API request : GET yourapidomain.com/employees/search?gender=M&first_name=Georgi
// expected output :
{
    "filter": {
        "limit": 100,
        "where": {
            "gender": "M",
            "first_name": "Georgi"
        }
    },
    "data": [
        {
            "emp_no": 10001,
            "birth_date": "1953-09-02",
            "first_name": "Georgi",
            "last_name": "Facello",
            "gender": "M",
            "hire_date": "1986-06-26"
        },
        {
            "emp_no": 10909,
            "birth_date": "1954-11-11",
            "first_name": "Georgi",
            "last_name": "Atchley",
            "gender": "M",
            "hire_date": "1985-04-21"
        },
        // etc ...
    ]
}
```

---

## Level 8

Make sure that you can combine filter,sort,limit, and offset inside search endpoint alltogether. 

```js
// --------------------------------------------------------------------------------
// 1. API request : GET yourapidomain.com/employees/search?gender=M&first_name=Georgi&limit=5&offset=3&sort=emp_no_desc
// expected output :
{
    "filter": {
        "limit": 5,
        "offset": 3,
        "order": [
            [
                "emp_no",
                "desc"
            ]
        ],
        "where": {
            "gender": "M",
            "first_name": "Georgi"
        }
    },
    "data": [
        {
            "emp_no": 497592,
            "birth_date": "1959-04-22",
            "first_name": "Georgi",
            "last_name": "Ariola",
            "gender": "M",
            "hire_date": "1986-03-27"
        },
        {
            "emp_no": 497046,
            "birth_date": "1959-12-15",
            "first_name": "Georgi",
            "last_name": "Rouquie",
            "gender": "M",
            "hire_date": "1987-10-15"
        },
        // etc ...
    ]
}

```


---

## Level 9

Use [sequelize-auto](https://github.com/sequelize/sequelize-auto) to generate all model based on all table on [employees](https://github.com/datacharmer/test_db) database.

