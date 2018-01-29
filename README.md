# Data Schema Design

---

## Requirements

Visualize your data design with schema before you use a database.

### Input

* Your desired data source you want to build and use

### Process

* Designing the schema of your data source

### Output

* Prepared data schema design

--------------------------------------------------------------------------------

## Level 0

* Think about a data source you want to build
* For example: list of foods, drinks, users, players, animals, places, etc
* Sketch about the important properties for a schema about that data source
* Type in your plan in a documentation like README

### Example

```markdown
list of animals

* name: Affen / Vark / Hound
* race: Cat / Dog / Mouse / Bird
* color: Black / White / Gray / Brown
* diet: Carnivore / Herbivore / Omnivore
* legs: 2 / 4
```

--------------------------------------------------------------------------------

## Level 1

* Transform that schema into an actual data sample

### Example

```js
[
  {
    name: "Hound",
    race: "Dog",
    color: "Black",
    diet: "Carnivore",
    legs: 4
  },
  ...
]
```

--------------------------------------------------------------------------------

## Level 2

* Standardize that data sample into a schema with data types

```js
AnimalSchema = {
  name: String,
  race: String,
  color: String,
  diet: String,
  legs: Number
}
```
