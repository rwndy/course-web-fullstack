# JavaScript Async

---

## Synchronous vs Asynchronous

In a **synchronous** programming model, things happen one at a time. When you call a function that performs a long-running action, it returns only when the action has finished and it can return the result. This stops your program for the time the action takes.

An **asynchronous** model allows multiple things to happen at the same time. When you start an action, your program continues to run. When the action finishes, the program is informed and gets access to the result (for example, the data read from disk).

In other term, asynchronous programming is a means of parallel programming in which a unit of work runs separately from the main application thread and notifies the calling thread of its completion, failure, or progress.

Most PHP programs are synchronous, while most Node.js programs are asynchronous.

![PHP vs Node.js](./assets/php-vs-nodejs.jpg)

---

## Callback Functions

In JavaScript, we can pass a function as an argument to another function. Then, the argument function can do a action as a callback function.

```js
// callback function example
const logName = name => {
  console.log(`My Name is ${name}`)
}

const insertCustomName = callback => {
  const name = 'Haidar'
  callback(name)
}

insertCustomName(logName)
```

---

## Promise

Promise is an alternative way of using callback.

A promise has 3 states:

1. `pending`: initial state, neither fulfilled nor rejected.
2. `fulfilled`: meaning that the operation completed successfully.
3. `rejected`: meaning that the operation failed.

### Creating promises

We can create new promise using `Promise` built in object.
If the promise is fulfilled, use `resolve()` to pass your success value. If the promise is rejected, use `reject()` to pass your fail value.

After a proise is fulfilled/rejected, the success/faill falue will be handled by `.then` or `.catch`.

syntax:

```js
// creating promise
const newPromise = new Promise((resolve, reject) => {
  // resolve(someValue); // use resolve if promise is fulfilled
  // or
  // reject("failure reason"); // use reject is promise is rejected
})

// using promise
newPromise
  .then(sucessValue => {
    // do something with sucessValue
  })
  .catch(error => {
    // do something with error
  })
```

### Basic Example

Don't forget to use `Error` built-in object because `.catch` will catch an error from reject.

```js
// try to change the condition to true or false
const condition = false

const myFirstPromise = new Promise((resolve, reject) => {
  if (condition) {
    resolve('Fulfilled!')
  } else {
    reject(new Error('Rejected!'))
  }
})

myFirstPromise
  .then(successMessage => {
    console.log(successMessage)
  })
  .catch(error => {
    console.log(error.message)
  })
```

### Advanced Example

```js
const isHappy = false

// Promise
const getPhone = new Promise((resolve, reject) => {
  // fat arrow
  if (isHappy) {
    const phone = {
      brand: 'iPhone',
      color: 'white'
    }
    resolve(phone)
  } else {
    const reason = new Error('I am not happy')
    reject(reason)
  }
})

const showPhone = function(phone) {
  const message = `I have a new ${phone.color} ${phone.brand} phone.`
  return Promise.resolve(message)
}

// call our promise
getPhone
  .then(showPhone)
  .then(fulfilled => console.log(fulfilled))
  .catch(error => console.log(error.message))
```

---

# Async Await (async/await)

## Async

Async is a modification of `Promise` syntax, you can write `Promise` with `async` syntax easier.

The return value of an async function is recognized as a promise `resolve()`

example:

```js
// async function
async function myAsyncFunction() {
  return 'theValue'
}

// is equal to
function myAsyncFunction() {
  return Promise.resolve('theValue')
}

// so you can call it like this
myAsyncFunction().then(returnedVal => console.log(returnedVal))
```

And the throw of an async function is recognized as a promise `reject()`.

```js
// async function
async function my2ndAsyncFunction() {
  throw 'error'
}

// is equal to
function my2ndAsyncFunction() {
  return Promise.reject('error')
}

// so you can call it like this
my2ndAsyncFunction().catch(error => console.log(error))
```

## Await

Await is only used with an async function. The await keyword is used in an async function to ensure that all promises returned in the async function are synchronized.

```js
async function orderTaxiWithSchedule() {
  try {
    const dateDetails = await date
    const message = await orderTaxi(dateDetails)
    // only continue after orderTaxi() is finished
    return message
  } catch (error) {
    return error
  }
}

orderTaxiWithSchedule
  .then(message => {
    console.log(message)
  })
  .catch(error => {
    console.error(error)
  })
```

---

## References

- https://scotch.io/tutorials/javascript-promises-for-dummies
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise
- https://scotch.io/courses/10-need-to-know-javascript-concepts/callbacks-promises-and-async#async-and-await
- [dotJS 2017 - Wes Bos - Async + Await](https://www.youtube.com/watch?v=9YkUCxvaLEk)

<!--
* Prevent regression
* Abstraction
* Decomposition
* Method chaining
* Data parsing and serialization
* Hoisting, Closures, Prototypes
* Function inside function, return object with function
-->
