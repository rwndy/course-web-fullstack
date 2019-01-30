# JavaScript Array Method

Requirements:

Write a JavaScript program to modify the items of an array

Initial Variable:

```js
const names = [
  'Mr. Fahri',
  'Mr. Abdul',
  'Mrs. Josephhine',
  'Mr. Joseph',
  'Mr. Paul',
  'Mrs. Paula',
  'Mr. Hakim'
]
```

Process:

Use Array built-in functions to do array manipulation such as `map()`, `filter()`, or `find()`

## Display all names

Display every single name on `console.log`.

```js
Mr. Fahri
Mr. Abdul
Mrs. Josephhine
Mr. Joseph
...
```

## Filter names with title

Display all names with Mr. title.

```js
Mr. Fahri
Mr. Abdul
Mr. Joseph
...
```

## Filter and display names with gender

Identify every name (male/female) based on Mr./Mrs. title.

```js
1. Mr. Fahri (male)
2. Mr. Abdul (male)
3. Mrs. Josephhine (female)
4. Mr. Joseph (male)
...
```

## Function to search

Build a function to search name value inside the names array.

Input:

```js
console.log(searchName('abdul'))
```

Output:

```js
Mr.Abdul
```

## Combine two arrays

Merge 2 arrays into 1 array and then display all names.

Variables:

```js
const names1 = ['Mr. Fahri', 'Mr. Abdul', 'Mrs. Josephhine']
const names2 = ['Mr. Joseph', 'Mr. Paul', 'Mrs. Paula', 'Mr. Hakim']
```

Output:

```js
Mr.Fahri, Mr.Abdul, Mrs.Josephhine, Mr.Joseph, Mr.Paul, Mrs.Paula, Mr.Hakim
```

## Filter non-string value

Remove non-string value in the array

```js

Initial variable:

const names = [
  'Mr. Fahri',
  null,
  undefined,
  'Mr. Abdul',
  24,
  'Mrs. Josephhine',
  'Mr. Joseph',
  'Mr. Paul',
  32,
  'Mrs. Paula',
  7,
  22,
  'Mr. Hakim'
]
```

Output:

```
Mr. Fahri, Mr. Abdul, Mrs. Josephhine, Mr. Joseph, Mr. Paul, Mrs. Paula, Mr. Hakim
```
