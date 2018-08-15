# Paradigm 2

---

## Object-Oriented Programming (OOP)

 The basic idea of OOP is that we use objects to model real world things that we want to represent inside our programs, and/or provide a simple way to access functionality that would otherwise be hard or impossible to make use of.

 OOP Concept:

 * Encapsulation
 * Abstraction
 * Instantiation
 * Inheritance
 * Class

---
## `Class` Declaration 

Class is a bluepirnt of object. To declare a class, you use the class keyword with the name of the class. Use a constructor for creating and initializing an object created with a class.

```js
class Human {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
}
```

---

## Methods in `Class`

```js
//Encapsulation
class Human {
    constructor(name, year_born) {
        this.name = name;
        this.year_born = year_born;
    }

    //Static Method
    static arms() {
        return 2
    }

    //Getter
    get getAge() {
        return this.calculateAge()
    }

    //Method
    calculateAge() {
        return 2018 - this.year_born
    }
}
```

## Using `Class`

```js
//Instantiating Class to an Object
const haidar = new Human("Haidar", 1993);
const fadhil = new Human("Fadhil", 2004);

//Using Object properties, getter, and method
console.log(haidar.getAge)//Getter
console.log(haidar.calculateAge())//Method
console.log(Human.arms())//Static Method

console.log(haidar.name)
console.log(haidar.year_born)

console.log(fadhil.name)
console.log(fadhil.calculateAge())
```

---

## `extends`

The extends keyword is used in class declarations or class expressions to create a class as a child of another class.

```js
class Employee extends Human {
    constructor(name, age, profession, salary) {
        super(name, age);
        this.profession = profession;
        this.salary = salary;
    }

    updateSalary(salary) {
        this.salary = salary
    }
}

const budi = new Employee("Budi", 1945, "Senior Developer", 20000)
const untung = new Employee("Untung", 1990, "Junior Developer", 10000)


console.log(budi.name)
console.log(budi.profession)
console.log(budi.salary)
console.log(budi.calculateAge())
console.log("UPDATE SALARY -----------------")
budi.updateSalary(30000)
console.log(budi.salary)
```

