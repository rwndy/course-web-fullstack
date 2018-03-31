# JavaScript 2

---

## HTML + JavaScript

`script` only:

```html
<script type="text/javascript">
  // JavaScript code here
  console.log("JavaScript");
</script>
```

with `script src`:

```html
<script src="./index.js" charset="utf-8"></script>
```

```js
console.log("JavaScript");
```

---

## JavaScript Intro & Data Types

In JavaScript, there are several data types:

* `String`: is a text or set of characters
* `Number`: is a numeric types, in another programming language, they divided numeric type into different variables like Integers, Floats, Doubles, or Bignums.
* `Boolean`: is a data types that represents one or two value: true or false.
* `Array`: is a data type that used to store multiple values in a single variable.
* `Object` with `key` & `value`: is a data type that used to store a information of multiple values like a real life object
* `JSON`: is a is a lightweight data-interchange format. Using JavaScript `Object` Notation format

Examples:

```js
// String
let a = "this is a string";
let b = "another string";
let c = `${a} and this is ${b}`; // result: this is a string and this is another string

// Number
var d = 2;
var d = 2.24;
var d = 2 + 2; // result: 4
var d = 1 + 2 / 4; // result: 1.5

// Boolean
let e = true;

// Array
let o = ["a", 1, true, undefined, null];

// Object
let p = {
  number: 1,
  string: "This is String",
  boolean: true,
  undefined: undefined,
  null: null,
  array: ["a", 1, true, undefined, null]
};

// This is a comment line
```

---

## JavaScript Variable

Variable is a way to store a value that can be used later.

There are three ways to declare a variable.

Examples:

```js
var x = ""; // can be changed later

let y = ""; // can be changed later

const z = ""; // cannot be changed later
```

---

## JavaScript Symbols

### Arithmetic Operator

Arithmetic operators are used to perform arithmetic between variables and/or values.

Examples:

```js
let a = 2 + 2;

let b = 3 - 2;

let c = 3 * 3;

let d = 4 / 2;

let e = 7 % 2; // result:1

let f = 3 * 2 + 1; // result:7
```

### Comparison

Comparison operator is used to compare between two value and generate result between true or false.

Examples:

```js
var number = 7

var result = (number == 7) // result: true
var result = (number == 99) // result: false
var result = (number == "7") // result:t rue

var result = (number === 7) // result: true
var result = (number === "7") // result: false

var result = !true // result: false

var result = (number != 7) // result: false
var result = (number != 99) // result: true
var result = (number != "7") // result: false

var result = (number !== 7) // result: true
var result = (number !== "7") // result: false
var
var result = (number > 7)// result: false
var result = (number > 6)// result: true

var result = (number >= 7)// result: true
var result = (number >= 6)// result: true

var result = (number < 7)// result: false
var result = (number < 6)// result: false

var result = (number <= 7)// result: true
var result = (number <= 6)// result: false

var result = (true && false)// result: false
var result = (true && true)// result: true

var result = (true || false)// result: true
var result = (true || true)// result: true

var result = undefined || "string"// result: String
```

---

## JavaScript Built-In Objects & Methods

Examples:

```js
// Math
var result = Math.PI; // result: 3.141592653589793
var result = Math.round(4.7); // result: 5
var result = Math.round(4.4); // result: 4
```

```js
// Date
var result = new Date(); // result: [current date]

var result = new Date("October 13, 2018 11:13:00"); // result: Tue Mar 27 2018 11:13:00 GMT+0700 (WIB)

var year = result.getFullYear(); //year: 2018
```

```js
// Array
var alphabet = ["a", "b", "c", "d"];

var result = alphabet.toString(); // result: a,b,c,d
var result = alphabet.join("_"); // result: a_b_c_d
var result = alphabet.length(); // result: 5
var result = alphabet.includes("a"); // result: true
var result = alphabet.push("e"); // result: 5, with alphabet being ["a", "b", "c", "d", "e"]
var result = alphabet.pop(); // result: e, with alphabet being ["a", "b", "c", "d"] again
```

## JavaScript Date Methods

| Method            | Description                                       |
| ----------------- | :------------------------------------------------ |
| getDate()         | Get the day as a number (`1`-`31`)                |
| getDay()          | Get the weekday as a number (`0`-`6`)             |
| getFullYear()     | Get the four digit year (`yyyy`)                  |
| getHours()        | Get the hour (`0`-`23`)                           |
| getMilliseconds() | Get the milliseconds (`0`-`999`)                  |
| getMinutes()      | Get the minutes (`0`-`59`)                        |
| getMonth()        | Get the month (`0`-`11`)                          |
| getSeconds()      | Get the seconds (`0`-`59`)                        |
| getTime()         | Get the time (milliseconds since January 1, 1970) |
