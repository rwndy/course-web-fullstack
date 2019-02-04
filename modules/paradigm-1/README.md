# Paradigm 1

---

## Programming paradigms

There are several popular programming paradigms. Basically, the way how we structure and use our program code.

- **Imperative**
  - Procedural
  - etc
- **Structured**
  - Object-oriented
  - ...
- **Declarative**
  - Functional
  - ...

### Imperative

In imperative programming, we give instructions to the computer what to do and in which order to do it. Every time we tell the computer to remember something by storing it in a variable we are using statements to change the global state of the program. You can already see how this could get messy in big programs with lots of developers because all of them are directly changing the global state the chance of making bugs and overriding data is high.

```js
for (let index = 0; index < array.length; index++) {
  const item = array[index]
  // do something with item
}
```

### Procedural

Procedural programming, although often used as a synonym for imperative programming, is actually an extension of the imperative paradigm. In procedural programming, we group aforementioned instructions into procedures, also known as subroutines or functions. Procedures are just a set of instructions, a modular unit, that we can reuse in our program just by calling it without having to rewrite the specific steps all over again. But at this point, you already know this ;) Procedural programming brought us the concepts of blocks and scopes, which gave us a new type of state, local. Local state means that is valid only in the context of that specific procedure.

```js
function doSomething() {
  // code here
}

doSomething()
```

### Declarative

Declarative paradigm tells the computer what we want, not the steps how to get it. A perfect example of a declarative programming language is SQL.

```sql
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;
```

### Functional

Functional paradigm is a subset of the declarative paradigm and it uses declarations/expressions unlike statements in the imperative family, but like its counterparts, it also tries to solve this issue of manipulating the global state. In functional programming, programs are thought of as a collection of pure functions. Pure functions are functions which take input and always return new values. They never have side effects, they never mutate the state and they are always expected to give the same result given the same input. So in the functional paradigm, the state is immutable.

```js
const newItems = items.map(item => {
  // do something with item
})
```

---

## References

- [Object Oriented Programming - DEV Community](https://dev.to/blackcat_dev/object-oriented-programming--1oie)
