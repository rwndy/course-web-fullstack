# Javascript Project 2

---

## Requirements

Write a JavaScript program to modify the items of an array

---

### Initial Variable

```js
const names = [
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

Use Array built-in functions to do array manipulation such as `map()`,`filter()`,`find()`

## Level 0

Display every single name on `console.log`

```js
Mr. Fahri
Mr. Abdul
Mrs. Josephhine
Mr. Joseph
...
```

## Level 1

Display all names with Mr. title

```js
Mr. Fahri
Mr. Abdul
Mr. Joseph
...
```

## Level 2

* Identify every name (male/female) based on Mr. / Mrs. title

```js
1. Mr. Fahri (male)
2. Mr. Abdul (male)
3. Mrs. Josephhine (female)
4. Mr. Joseph (male)
...
```

## Level 3

Build a function to search array value

Input:

```js
console.log(search_name("abdul"));
```

Output:

```js
Mr.Abdul;
```

---

### Initial Variable

```js
const names1 = ["Mr. Fahri", "Mr. Abdul", "Mrs. Josephhine"];
const names2 = ["Mr. Joseph", "Mr. Paul", "Mrs. Paula", "Mr. Hakim"];
```

## Level 4

Merge 2 arrays into 1 array and then display all names.

```js
Mr.Fahri, Mr.Abdul, Mrs.Josephhine, Mr.Joseph, Mr.Paul, Mrs.Paula, Mr.Hakim;
```

---

### Initial Variable

```js
const names = [
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

## Level 5

Modify names and remove non String array value

```
Mr. Fahri,Mr. Abdul,Mrs. Josephhine,Mr. Joseph,Mr. Paul,Mrs. Paula,Mr. Hakim
```
