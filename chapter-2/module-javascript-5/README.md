# JavaScript 5

## JavaScript Trivia

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
