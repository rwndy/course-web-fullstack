# Javascript 4

---

## JavaScript Block

A block statement (or compound statement in other languages) is used to group zero or more statements.

```js
{
  // statement
}
```

Example:

```js
const c = 1;

{
  const c = 2;
}

console.log(c); // logs 1 and does not throw SyntaxError...
```

---

## JavaScript Conditional

### `if`, `else` , `else if`

The if statement specifies a block of code to be executed if a condition is true, the else statement specifies a block of code to be executed if the condition is false, the else if statement specifies a new condition if the first condition is false.

```js
// if

if (condition) {
  // block of code to be executed if the condition is true
}

//if, else
if (condition) {
  // block of code to be executed if the condition is true
} else {
  // block of code to be executed if the condition is false
}

//if, else if, else
if (condition1) {
  // block of code to be executed if condition1 is true
} else if (condition2) {
  // block of code to be executed if the condition1 is false and condition2 is true
} else {
  // block of code to be executed if the repetition/loop condition 1 is false and condition2 is false
}
```

```js
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

### `switch case`

Use the switch statement to select one of many blocks of code to be executed

```js
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

```js
// example
var Animal = "Giraffe";
switch (Animal) {
  case "Cow":
  case "Giraffe":
  case "Dog":
  case "Pig":
    console.log("This animal will go on Noah's Ark.");
    break;
  case "Dinosaur":
  default:
    console.log("This animal will not.");
}
```

---

## JavaScript Repetition/Loop

Loops offer a quick and easy way to do something repeatedly

### Variety of loops

| Loops      | Description                                                      |
| ---------- | ---------------------------------------------------------------- |
| `for`      | loop through a block of code a number of times                   |
| `for in`   | loop through the properties of an object                         |
| `while`    | loop through a block of code while a specified condition is true |
| `do while` | loop through a block of code while a specified condition is true |

### `for`

```js
for ([initialExpression]; [condition]; [incrementExpression]) {
  statement;
}
```

```js
//example
var text = "";

for (i = 0; i < 5; i++) {
  text += i + ",";
}
//text: 0,1,2,3,4,
```

### `for in`

```js
for (variable in object) {
  statements;
}
```

```js
var person = { first_name: "John", last_name: "Doe", age: 25 };

var text = "";
for (var x in person) {
  text += person[x] + " ";
}

// John Doe 25
```

### `while`

```js
while (condition) {
    code block to be executed
}
```

```js
while (i < 5) {
  text += i + ",";
  i++;
}

// 0,1,2,3,4,
```

### `do while`

```js
do {
    code block to be executed
}
while (condition);
```

```js
var text = "";
var i = 0;

do {
  text += i + ",";
  i++;
} while (i < 5);
// 0,1,2,3,4,
```
