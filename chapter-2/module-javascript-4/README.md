- JavaScript Block

  - `( )`
  - `{ }`

- JavaScript Conditional

  - `if`, `else`, `if else`
  - `switch case`

- JavaScript Repetition/Loop

  - `for`, `for in`, `for of`,
  - `do while`
  - `map`, `filter`, `find`, `foreach`

# Javascript 4

## JavaScript Block

A block statement (or compound statement in other languages) is used to group zero or more statements.

* sytax

```javascript
{
  StatementList
}
```

- example

```javascript
const c = 1;
{
  const c = 2;
}
console.log(c); // logs 1 and does not throw SyntaxError...
```

## JavaScript Conditional

* `if`, `else` , `else if`

The if statement specifies a block of code to be executed if a condition is true, the else statement specifies a block of code to be executed if the condition is false, the else if statement specifies a new condition if the first condition is false.

```javascript
//if
if (condition) {
    block of code to be executed if the condition is true
}

//if, else
if (condition) {
    block of code to be executed if the condition is true
} else {
    block of code to be executed if the condition is false
}

//if, else if, else
if (condition1) {
    block of code to be executed if condition1 is true
} else if (condition2) {
    block of code to be executed if the condition1 is false and condition2 is true
} else {
    block of code to be executed if the conJavaScript Repetition/Loopdition1 is false and condition2 is false
}
```

```javascript
// Set the current grade of the student
let grade = 87;

// Check if grade is an A, B, C, D, or F
if (grade >= 90) {
  console.log("A");
} else if (grade >= 80) {
  console.log("B");
} else if (grade >= 70) {
  console.log("C");
} else if (grade >= 60) {
  console.log("D");
} else {
  console.log("F");JavaScript Repetition/Loop
}
```

* `switch case`

Use the switch statement to select one of many blocks of code to be executed

```javascript
switch(expression) {
    case n:
        code block
        break;
    case n:
        code block
        break;
    default:
        code block
}
```

```javascript
// example
var Animal = 'Giraffe';
switch (Animal) {
  case 'Cow':
  case 'Giraffe':
  case 'Dog':
  case 'Pig':
    console.log('This animal will go on Noah\'s Ark.');
    break;
  case 'Dinosaur':
  default:
    console.log('This animal will not.');
}
```

## JavaScript Repetition/Loop

Loops offer a quick and easy way to do something repeatedly
* Kinds of loops

| Loops    | Description                                                            |
|----------|-:----------------------------------------------------------------------|
| for      | loops through a block of code a number of times                        |
| for/in   | loops through the properties of an object                              |
| while    | loops through a block of code while a specified condition is true      |
| do/while | also loops through a block of code while a specified condition is true |
* `for`

```js
for ([initialExpression]; [condition]; [incrementExpression]){
  statement
}
```

```js
//example
var text = "";

for (i = 0; i < 5; i++) {
    text +=  i + ",";
}
//text: 0,1,2,3,4,
```

* `for/in`

```js
for (variable in object) {
  statements
}
```

```js
//example
var person = {fname:"John", lname:"Doe", age:25};

var text = "";
for (var x in person) {
    text += person[x] + " ";
}
//text: John Doe 25
```

* `while`

```js
while (condition) {
    code block to be executed
}
```

```js
//example
while (i < 5) {
    text += i + ",";
    i++;
}
//text: 0,1,2,3,4,
```

* `do/while`

```js
do {
    code block to be executed
}
while (condition);
```

```js
var text = ""
var i = 0;

do {
    text += i + ",";
    i++;
}
while (i < 5);
//text: 0,1,2,3,4,
```

## Javascript array 'looping' methods

Some of javascript array methods to do array operation or manipulation

| Array Method    | Description                                                            |
|----------|-:----------------------------------------------------------------------|
| filter()      | Creates a new array with every element in an array that pass a test                        |
| map()   | Creates a new array with the result of calling a function for each array element                             |
| find()    | Returns the value of the first element in an array that pass a test      |
| forEach() | Calls a function for each array element |
| and many more ... | https://goo.gl/cZL2ra |

* `filter()` method

```js
const words = ["spray", "limit", "elite", "exuberant", "destruction", "present", "happy"];

let longWords = words.filter(word => word.length > 6);
//longWords:["exuberant", "destruction", "present"]

```

* `map()` method

```js
var array1 = [1, 4, 9, 16];

// pass a function to map
const map1 = array1.map(x => x * 2);
//map1: Array [2, 8, 18, 32]
```

* `find()` method

```js
var array1 = [5, 12, 8, 130, 44];

var found = array1.find(function(element) {
  return element > 10;
});
//found: 12
```

* `forEach()`

```js
var array1 = ['a', 'b', 'c'];
var text = "";

array1.forEach(function(element) {
  text += element + ","
});
//text: a,b,c,
```
