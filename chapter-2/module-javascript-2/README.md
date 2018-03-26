* HTML + JavaScript
  * `script`, `script src`
* JavaScript Intro & Data Types
  * `String`
  * `Number`
  * `Boolean`
  * `Array`
  * `Object`, `key`, `value`
  * `JSON`
  * `Comments`
* JavaScript Variable
  * `var`, `let`, `const`
* JavaScript Symbols
  * Operator: `+`, `-`, `*`, `/`, `%`, `!`, `? =`
  * Comparison: `==`, `===`, `!`, `!=`, `!==`, `>`, `>=`, `<`, `<=`, `&&`, `||`
  * `eval`, `postfix`, `prefix`
* JavaScript Object
  * `Object`, `Math`, `Date`, `Array`, etc

---
## var vs let vs const

* var

variables can be re-declared and updated

```
var greeter = "hey hi";
var greeter = "say Hello instead";
```

It is available and can be accessed only within that function.

```
var tester = "hey hi";

   function newFunction() {
       var hello = "hello";
   }

console.log(hello); // error: hello is not defined
```

Declare on the top, before execution

```
  console.log (greeter);
  var greeter = "say hello" // error: greater is not defined
```

* let

Block scoped

```
  let greeting = "say Hi";
  let times = 4;

  if (times > 3) {
       let hello = "say Hello instead";
       console.log(hello);//"say Hello instead"
   }
  console.log(hello) // hello is not defined
```

Can be updated but not re-declared.

```
   let greeting = "say Hi";
  greeting = "say Hello instead";
```
