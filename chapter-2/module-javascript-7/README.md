* JavaScript Functions
  * `function name() {}`
  * `const x = function() {}`
  * `const x = () => {}`
  * Function arguments and default parameters
    * `function (input = "default") {}`
* Recursion
  * `function name() { name() }`

---

### `var` vs `let` vs `const` in function

**var**

Variables can be re-declared and updated

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

**let**

Block scoped.

```js
let greeting = "say Hi";
let times = 4;

if (times > 3) {
  let hello = "say Hello instead";
  console.log(hello); //"say Hello instead"
}
console.log(hello); // hello is not defined
```

Can be updated but not redeclared.

```js
let greeting = "say Hi";
greeting = "say Hello instead";
```
