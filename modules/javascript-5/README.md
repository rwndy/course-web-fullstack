# JavaScript 5

## Built-in JavaScript Array Iteration Methods

Some of javascript array methods to do array operation or manipulation

| Array Method      | Description                                                                      |
| ----------------- | -------------------------------------------------------------------------------- |
| `filter`          | Creates a new array with every element in an array that pass a test              |
| `map`             | Creates a new array with the result of calling a function for each array element |
| `find`            | Returns the value of the first element in an array that pass a test              |
| `forEach`         | Calls a function for each array element                                          |
| and many more ... | <https://goo.gl/cZL2ra>                                                          |

### `filter`

```js
const words = [
  "spray",
  "limit",
  "elite",
  "exuberant",
  "destruction",
  "present",
  "happy"
];

let longWords = words.filter(word => word.length > 6);

// longWords: ["exuberant", "destruction", "present"]
```

### `map`

```js
var array1 = [1, 4, 9, 16];

// pass a function to map
const map1 = array1.map(x => x * 2);

// map1: Array [2, 8, 18, 32]
```

### `find`

```js
var array1 = [5, 12, 8, 130, 44];

var found = array1.find(function(element) {
  return element > 10;
});

// found: 12
```

### `forEach`

```js
var array1 = ["a", "b", "c"];
var text = "";

array1.forEach(function(element) {
  text += element + ",";
});

// text: a,b,c,
```

