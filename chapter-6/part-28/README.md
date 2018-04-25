# Part 28

---

* ▢ React Environment
  * `.env`, `REACT_APP_VARIABLE`, `process.env.REACT_APP_VARIABLE`
* ▢ React Form
  * Working with forms
  * Retrieving data from DOM inputs
  * Get value from form inputs
  * Fetching data from an AJAX endpoint
  * Send data from state to API
  * Persisting data with `localStorage`/`sessionStorage`
* ▢ React & REST API
  * HTTP request to REST API

---

## React Environment

By default, `react-scripts` in `create-react-app` support environment variable through `.env` file.

We can define such `REACT_APP_VARIABLE` then access it as `process.env.REACT_APP_VARIABLE`.

```sh
REACT_APP_VARIABLE=example
REACT_APP_NAME=impactodo
REACT_APP_API_URL=http://localhost:3000
```

```js
const VARIABLE = process.env.REACT_APP_VARIABLE;
const NAME = process.env.REACT_APP_NAME;
const API_URL = process.env.REACT_APP_API_URL;
```

Yes, you need the `REACT_APP_` precedent in order to make it work in `react-scripts`.

If you have a custom build solution, then the `REACT_APP_` naming convention is not needed.

---

## React Form

Form handling in React is actually pretty simple.

1.  Get value from form inputs when event `onChange`, `onClick`, or `onSubmit` is triggered.
2.  Set a new state with `setState` based on the `event.target.value` when event `onClick` or `onSubmit` is triggered again.

Plain HTML:

```html
<form>
  <label>
    Name:
    <input type="text" name="name" />
  </label>
  <input type="submit" value="Submit" />
</form>
```

Usage in React with JSX:

```js
class SimpleForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { value: "" };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({ value: event.target.value });
  }

  handleSubmit(event) {
    alert("A name was submitted: " + this.state.value);
    event.preventDefault();
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <label>
          Name:
          <input
            type="text"
            value={this.state.value}
            onChange={this.handleChange}
          />
        </label>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}
```

### References

* [Working with Forms in React](https://reactjs.org/docs/forms.html)

---

## React & REST API

After setting the data in state via any kind of method like form handling, we can send it from the `state` to the REST API backend. From `handleChange` to `handleSubmit`.

We can perform it using an HTTP request via `fetch`, `axios`, or any kind of `http` client library to a REST API.

```js
import React, { Component } from "react";

import * as axios from "axios";

const API_URL = process.env.REACT_APP_API_URL || `http://localhost:3000`;

class App extends Component {
  state = {
    text: "",
    todos: []
  };

  constructor() {
    super();
    this.findAll = this.findAll.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.findAll();
  }

  findAll() {
    axios.get(`${API_URL}/todos`).then(res => {
      this.setState({ todos: res.data });
    });
  }

  handleChange(event) {
    this.setState({ text: event.target.value });
  }

  handleSubmit(event) {
    axios
      .post(`${API_URL}/todos`, {
        text: this.state.text
      })
      .then(res => {
        this.findAll();
      });
    event.preventDefault();
  }

  render() {
    const todos = this.state.todos;

    return (
      <div>
        <ul>
          {todos &&
            todos.map(todo => {
              return <li key={todo.id}>{todo.text}</li>;
            })}
        </ul>

        <form onSubmit={this.handleSubmit}>
          <input
            type="text"
            placeholder="New todo text"
            value={this.state.text}
            onChange={this.handleChange}
          />
          <input type="submit" value="Submit" />
        </form>
      </div>
    );
  }
}

export default App;
```

After fetching the data, we can also persist the data with `localStorage` or `sessionStorage` as well. Although it's not necessary if most of the data is stored inside the backend database.

We only need to store some local data like authentication, authorization, or session key.

---

## References

* [Formik - Build forms in React, without the tears](https://npm.im/formik)
* [`formsy-react` - A form input builder and validator for React.](https://npm.im/formsy-react)
* [React Form - Extensive, simple, and efficient solution for creating basic to complex forms in reactxtensive, simple, and efficient solution for creating basic to complex forms in React](https://react-form.js.org)
