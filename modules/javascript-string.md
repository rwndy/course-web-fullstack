# JavaScript String

## Requirements

Play around with various kind of string manipulation capabilities in JavaScript.

Input:

- Mostly texts

Process:

- Concatination
- Upper case
- Lower case
- Title case

Output:

- Transformed texts

## Using Variables

- Create some simple sentences that stored in different variables
- Those values inside those variables should not be changed
- If you want to create a new value, you should create a new variable
- Log those strings to the console

```js
const sentenceA = "Hello World!"
const sentenceB = "Good Bye!"

console.log(sentenceA)
console.log(sentenceB)
```

- For all the programs you write in the following days, use concise comments and indentation to better serve your code

```js
// This is a comment
/*
 * Also a comment
 * with multiple lines
 */
```

## Using Operators

- Combine those different sentences into one sentence

```js
const sentenceC = sentenceA + " " + sentenceB
```

- Try to use string template literals to save time

```js
const sentenceD = `${sentenceA} ${sentenceB}`
```

- Again, log those strings to the console

## Using Transformations

- Transform all the characters of a string into different case of letters: uppercase and lowercase

Input example:

```js
"Hello World"
"Good Bye"
```

Output example:

```js
"HELLO WORLD"
"GOOD BYE"
```
