// Create an array/list of todos
let todos = [
  "Create a new todo",
  "Learn JavaScript",
  "Experiment with computers"
];

// Loop over the list, then log them out
function printAll() {
  for (var index = 0; index < todos.length; index++) {
    let order = index + 1;
    let todo = `TODO ${order}: ${todos[index]}`;

    console.log(todo);

    todo += "<br>";
    document.write(todo);
  }
}

// Get a new todo then add it to the list
function add(text) {
  let input = text;

  todos.push(input);

  clear();

  printAll();
}

// First print all the current todo
printAll();
