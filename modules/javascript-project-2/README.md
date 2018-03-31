# Javascript Project 2

---

## Requirements

Write a JavaScript program to modify the items of an array

---

### Initial Variable

```js
var names = [
  "Mr. Fahri",
  "Mr. Abdul",
  "Mrs. Josephhine",
  "Mr. Joseph",
  "Mr. Paul",
  "Mrs. Paula",
  "Mr. Hakim"
];
```

### Process

* Use Array built-in functions to do array manipulation (`map()`,`filter()`,`find()` or `foreach()`)

## level 0

* Display every single name on console log

```js
//Output:

Mr. Fahri
Mr. Abdul
Mrs. Josephhine
Mr. Joseph
...
```

## level 1

* Display all names with Mr. title

```js
//Output:

Mr. Fahri
Mr. Abdul
Mr. Joseph
...
```

## level 2

* Identify every name (male/female) based on Mr. / Mrs. title

```js
//Output:

1. Mr. Fahri (male)
2. Mr. Abdul (male)
3. Mrs. Josephhine (female)
4. Mr. Joseph (male)
...
```

## level 3

* Build function to search array value

```js
//input
console.log(search_name("abdul"));
```

```js
//Output:

Mr.Abdul;
```

---

### Initial Variable

```js
var names1 = ["Mr. Fahri", "Mr. Abdul", "Mrs. Josephhine"];
var names2 = ["Mr. Joseph", "Mr. Paul", "Mrs. Paula", "Mr. Hakim"];
```

## level 4

* Merge 2 arrays into 1 array and then display all names.

```js
//Output:

Mr.Fahri, Mr.Abdul, Mrs.Josephhine, Mr.Joseph, Mr.Paul, Mrs.Paula, Mr.Hakim;
```

---

### Initial Variable

```js
var names = [
  "Mr. Fahri",
  null,
  undefined,
  "Mr. Abdul",
  24,
  "Mrs. Josephhine",
  "Mr. Joseph",
  "Mr. Paul",
  32,
  "Mrs. Paula",
  7,
  22,
  "Mr. Hakim"
];
```

## level 5

* Modify names and remove non String array value

```
Output:

Mr. Fahri,Mr. Abdul,Mrs. Josephhine,Mr. Joseph,Mr. Paul,Mrs. Paula,Mr. Hakim
```
