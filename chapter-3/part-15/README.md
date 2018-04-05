# Part 15

---

## Project/Product Management

* Key Steps: ideation, wireframe/mockup, data modeling, list of backlog or user stories
* Methodology: Waterfall, Agile, Lean, Scrum, Kanban
* Tools: GitHub Projects, Trello, Airtable

---

## JavaScript Trivia

* Callback, Promise, Async/Await
* `apply`, `call`, `bind`

---

## Functional Programming (FP)

* Pure first-class functions
* Data immutability, no dynamic variables, but constants
* No manual loop, recursion is preferred
* Pure function/component
* Closures
* Higher Order Component (HOC)

---

---

---

---

### Callback Functions

In Javascript, we can pass a function as an argument to another function. Then, the argument function can do a action as a callback function.

```javascript
//callback function example
function logName(name) {
  console.log(`My Name is ${name}`);
}

function insertCustomName(callback) {
  var name = "Haidar";
  callback(name);
}

insertCustomName(logName);
```

---

## Promise

What is promise?

> Promise: Imagine you are a kid. Your mom promises you that she'll get you a new phone next week.
>
> -- <cite>Jecelyn Yeen</cite>

A promise has 3 states :

1.  pending: initial state, neither fulfilled nor rejected.
1.  fulfilled: meaning that the operation completed successfully.
1.  rejected: meaning that the operation failed.

### Creating promises

We can create new promise using `Promise` built in object.
If the promise is fulfilled, use `resolve()` to pass your success value. If the promise is rejected, use `reject()` to pass your fail value.

After a proise is fulfilled/rejected, the success/faill falue will be hadled by `.then`/`.catch`.

syntax:

```js
//creating promise
var newPromise = new Promise(function(resolve, reject) {
  // put your code here
  //
  //   resolve(someValue); // use resolve if promise is fulfilled
  // or
  //   reject("failure reason"); // use reject is promise is rejected
});

//using promise
newPromise
  .then(sucessValue => {
    //do something with sucessValue
  })
  .catch(error => {
    //do something with error
  });
```

### Basic Example

Don't forget to use `Error` built-in object because `.catch` will catch an error from reject.

```js
//try it yourself, and change the condition to true/false
const condition = false;

let myFirstPromise = new Promise((resolve, reject) => {
  if (condition) {
    resolve("fulfilled!");
  } else {
    const reason = new Error("rejected!");
    reject(reason);
  }
});

myFirstPromise
  .then(successMessage => {
    console.log(".then >>> " + successMessage);
  })
  .catch(error => console.log(".catch >>> " + error.message));
//console output: .catch >>> rejected!
```

### Advanced Example

```js
//promise example from scotch.io (Jecelyn Yeen)
const isMomHappy = false;

// Promise
const willIGetNewPhone = new Promise((resolve, reject) => {
  // fat arrow
  if (isMomHappy) {
    const phone = {
      brand: "Samsung",
      color: "black"
    };
    resolve(phone);
  } else {
    const reason = new Error("mom is not happy");
    reject(reason);
  }
});

const showOff = function(phone) {
  const message =
    "Hey friend, I have a new " + phone.color + " " + phone.brand + " phone";
  return Promise.resolve(message);
};

// call our promise
const askMom = function() {
  willIGetNewPhone
    .then(showOff)
    .then(fulfilled => console.log(fulfilled)) // fat arrow
    .catch(error => console.log(error.message)); // fat arrow
};

askMom();
```

References : https://scotch.io/tutorials/javascript-promises-for-dummies
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise
