# Javascript Project 4

---

## Requirements

Write a simple Javascript program using Javascript Promise

---

### Process

Use `new Promise()`, `Promise.resolve()`, `Promise.reject()` to create JavaScript promise.

## Level 0

Create a JavaScript promise called `numberOrNot` using `new Promise` syntax to check if an input variable is number or not. 

Promise usage example:

```js
numberOrNot(2).then(response => console.log(response)).catch(error => console.log(error))
numberOrNot(555).then(response => console.log(response)).catch(error => console.log(error))
numberOrNot(true).then(response => console.log(response)).catch(error => console.log(error))
```

Output:

```console
input is a number
input is a number
Error: input is not a number
    at Promise (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:8:20)
    at new Promise (<anonymous>)
    at numberOrNot (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:4:12)
    at Object.<anonymous> (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:16:1)
    at Module._compile (module.js:652:30)
    at Object.Module._extensions..js (module.js:663:10)
    at Module.load (module.js:565:32)
    at tryModuleLoad (module.js:505:12)
    at Function.Module._load (module.js:497:3)
    at Function.Module.runMain (module.js:693:10
```

## Level 1

Rewrite `numberOrNot` promise using `Promise.resolve()` using `Promise.reject()`

Promise usage example:

```js
numberOrNot(2).then(response => console.log(response)).catch(error => console.log(error))
numberOrNot(555).then(response => console.log(response)).catch(error => console.log(error))
numberOrNot(true).then(response => console.log(response)).catch(error => console.log(error))
```

Output:

```console
input is a number
input is a number
Error: input is not a number
    at Promise (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:8:20)
    at new Promise (<anonymous>)
    at numberOrNot (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:4:12)
    at Object.<anonymous> (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:16:1)
    at Module._compile (module.js:652:30)
    at Object.Module._extensions..js (module.js:663:10)
    at Module.load (module.js:565:32)
    at tryModuleLoad (module.js:505:12)
    at Function.Module._load (module.js:497:3)
    at Function.Module.runMain (module.js:693:10
```

## Level 2

Create promise called `checkVariableType` to check variable input type.

```js
checkVariableType("abc").then(res => console.log(res)).catch(err => console.log(err))
checkVariableType(2).then(res => console.log(res)).catch(err => console.log(err))
checkVariableType([]).then(res => console.log(res)).catch(err => console.log(err))
checkVariableType().then(res => console.log(res)).catch(err => console.log(err))
```

```console
input is a string
input is a number
input is a boolean
Error: please input a variable
    at checkVariableType (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:57:35)
    at Object.<anonymous> (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:65:1)
    at Module._compile (module.js:652:30)
    at Object.Module._extensions..js (module.js:663:10)
    at Module.load (module.js:565:32)
    at tryModuleLoad (module.js:505:12)
    at Function.Module._load (module.js:497:3)
    at Function.Module.runMain (module.js:693:10)
    at startup (bootstrap_node.js:191:16)
    at bootstrap_node.js:612:3
```

## Level 3

Create 3 JavaScript promise.

1. numberValidation : a promise that returns an input if it's a number and rejects an error if it's not a number.
1. multipleByTwo: multiply any input by 2.
1. multipleByThree: multiply any input by 3.

Using 3 promises create chaining promise like this:

Input:

```js
numberValidation(2).then(multipleByTwo).then(multipleByTwo).then(multipleByThree).then(res => console.log(res)).catch(err => console.log(err))
numberValidation("").then(multipleByTwo).then(multipleByTwo).then(multipleByThree).then(res => console.log(res)).catch(err => console.log(err))
```

Output:

```console
24
Error: input is not a number
    at numberValidation (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:73:35)
    at Object.<anonymous> (/home/haekal/Documents/impactbyte/meterials/playground/promiseCalculator.js:86:1)
    at Module._compile (module.js:652:30)
    at Object.Module._extensions..js (module.js:663:10)
    at Module.load (module.js:565:32)
    at tryModuleLoad (module.js:505:12)
    at Function.Module._load (module.js:497:3)
    at Function.Module.runMain (module.js:693:10)
    at startup (bootstrap_node.js:191:16)
    at bootstrap_node.js:612:3
```

---



## Level 4

The JavaScript promise is asynchronous so if we `console.log()` after promise, there is a high possibility that the promise executed after `console.log()`.

Current code (using `numberValidation` promise from level 3):

```js
console.log("before promise")
numberValidation(2).then(multipleByTwo).then(multipleByTwo).then(multipleByThree).then(res => console.log(res)).catch(err => console.log(err))
console.log("after promise")
```
Current output:

```console
before promise
after promise
24
```

Please modify the code using `async` and `await`.

Expected Output: 

```console
before promise
24
after promise
```


## Level 5

By using return inside `then()` or `catch()` we can store promise result into variable. Because the promise is asynchronous, javascript will execute line after promise even if the promise is still pending. And we cant see promise result

Current code (using `numberValidation` promise from level 3):

```js
let result = numberValidation(2).then(multipleByTwo).then(multipleByTwo).then(multipleByThree).then(res => {return res}).catch(err => {return err})
console.log(result)
```

Current output:

```console
Promise { <pending> }
```

please modify the code using `async` and `await`.

expected output: 

```console
24
```