# JavaScript 7

## JavaScript Functions

### with regular `function` keyword

Syntax:

`function name() {}`

```js
function myFunction(total_price, name) {
  total_tax = total_price * 0.1;

  detail_tax = `name: ${name}, tax:${total_tax}`;
  return detail_tax;
}
```

### with variable function

Syntax:

`const x = function() {}`

```js
const myFunction = function(total_price, name) {
  total_tax = total_price * 0.1;

  detail_tax = `name: ${name}, tax:${total_tax}`;
  return detail_tax;
};
```

### with arrow function

Syntax:

`const x = () => {}`

```js
//example 1
var names = ["Budi", "Joni", "Tono", "Jaka"];

var modified_name = names.map(name => "Mr." + name);

// with function inside var
var funct = name => "Mr." + name;

var modified_name = names.map(funct);
```

### Function arguments and default parameters

Syntax:

`function (input = "default") {}`

```js
function myFunction(total_price, name) {
  total_tax = total_price * 0.1;

  detail_tax = `name: ${name}, tax:${name}`;
  return detail_tax; // The function returns the product of p1 and p2
}
```

### Recursive function

Syntax:

`function name() { name() }`

```js
function factorial(n, accumulator) {
  if (n === 0) {
    return accumulator
  }
  return factorial(n — 1, n * accumulator)
}
factorial(5, 1)
```

---

## `var` vs `let` vs `const` in function

### **var**

Variables can be re-declared and updated.

```js
var greeter = "hey hi";
var greeter = "say Hello instead";
```

It is available and can be accessed only within that function.

```js
var tester = "hey hi";

function newFunction() {
  var hello = "hello";
}

console.log(hello); // error: hello is not defined
```

Declare on the top, before execution.

```js
console.log(greeter);

var greeter = "say hello"; // error: greater is not defined
```

### **let**

Can be updated but not redeclared.

```js
let greeting = "say Hi";
greeting = "say Hello instead";
```

Block scoped.

```js
let greeting = "say Hi";
let times = 4;

if (times > 3) {
    let hello = "say Hello instead";
    console.log(hello);//"say Hello instead"
}
console.log(hello) // hello is not defined
```

### **const**

`const` declarations are block scoped, cannot be updated or re-declared.

```js
const greeting = "say Hi";
const greeting = "say Hello instead"; //error : Identifier 'greeting' has already been declared
```

---

## Summary

1.  `var` declarations are globally scoped or function scoped while `let` and `const` are block scoped.
2.  `var` variables can be updated and re-declared within its scope; `let` variables can be updated but not re-declared; `const` variables can neither be updated nor re-declared.
3.  They are all hoisted to the top of their scope but while varvariables are initialized with undefined, `let` and `const` variables are not initialized.
4.  While `var` and `let` can be declared without being initialized, `const` must be initialized during declaration.

---

## Function Tips

### Don't Repeat Yourself (DRY)

Bad:

```js
let position = 0;

position += 1;
position += 1;
position += 1;
position += 1;
position += 1;

console.log(position);
// 5
```

Good:

```js
let position = 0;

function walk(distance) {
  position += distance;
}

walk(1);
walk(1);
walk(1);
walk(1);
walk(1);

console.log(position);
// 5
```

### Single Responsibility Principle (SRP)

Bad:

```js
let latitude = 0;
let longitude = 0;

function move(distance) {
  latitude += distance;
  longitude += distance;
}

move(20);

console.log(latitude); // 20
console.log(longitude); // 20
```

Good:

```js
let latitude = 0;
let longitude = 0;

function moveLatitude(distance) {
  latitude += distance;
}

function moveLongitude(distance) {
  longitude += distance;
}

moveLatitude(10);
moveLongitude(20);

console.log(latitude); // 10
console.log(longitude); // 20
```