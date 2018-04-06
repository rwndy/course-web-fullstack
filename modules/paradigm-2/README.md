# Paradigm 2

---

## Object-Oriented Programming (OOP)

---

## `class` & constructor

```js
class Human {
  constructor(name, age) {
    this.name = name;
    this.age = age || 1;
  }
}

const haidar = new Human("Haidar", 24);

console.log(haidar);
// Human {name: "Haidar", age: 24}
```

---

## `extends`

```js
class Employee extends Human {
  constructor(name, age, profession, salary) {
    super(name, age);
    this.profession = profession;
    this.salary = salary;
  }
}

class Boss extends Human {
  constructor(name, age, power, income) {
    super(name, age);
    this.power = power;
    this.income = income;
  }
}

const fuad = new Employee("Fuad", 23, "Developer", 99999);
const dody = new Boss("Dody", 31, "Frying Vegetables", 123456789);

console.log(fuad);
// Employee {name: "Fuad", age: 23, profession: "Developer", salary: 99999}

console.log(dody);
// Boss {name: "Dody", age: 31, power: "Frying Vegetables", income: 123456789}
```

---

## `methods` in `class`

```js
class Human {
  constructor(name, age) {
    this.name = name;
    this.age = age || 1;
  }
  walk() {
    console.log(`${this.name} is walking`);
  }
  run() {
    console.log(`${this.name} is running`);
  }
}

const haidar = new Human("Haidar", 24);

haidar.run();
// Haidar is running
```
