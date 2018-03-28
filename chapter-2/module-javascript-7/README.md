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

* Variables can be re-declared and updated

```js
var greeter = "hey hi";
var greeter = "say Hello instead";
```

* It is available and can be accessed only within that function.

```js
var tester = "hey hi";

function newFunction() {
  var hello = "hello";
}

console.log(hello); // error: hello is not defined
```

* Declare on the top, before execution.

```js
console.log(greeter);
var greeter = "say hello"; // error: greater is not defined
```

**let**

* Can be updated but not redeclared.

```js
let greeting = "say Hi";
greeting = "say Hello instead";
```

* Block scoped.

```js
let greeting = "say Hi";
let times = 4;

if (times > 3) {
  let hello = "say Hello instead";
  console.log(hello); //"say Hello instead"
}
console.log(hello); // hello is not defined
```

**const**

* const declarations are block scoped
* const cannot be updated or re-declared

```js
const greeting = "say Hi";
const greeting = "say Hello instead"; //error : Identifier 'greeting' has already been declared
```

* summary

```
1.var declarations are globally scoped or function scoped while let and const are block scoped.

2.var variables can be updated and re-declared within its scope; let variables can be updated but not re-declared; const variables can neither be updated nor re-declared.

3.They are all hoisted to the top of their scope but while varvariables are initialized with undefined, let and const variables are not initialized.

4.While var and let can be declared without being initialized, const must be initialized during declaration.
```
