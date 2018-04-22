# Part 26

---

* ▢ Website Structure
  * Think in component
* ▢ React
  * Who uses React?
  * The main reasons and philosophy
  * vs jQuery, Vue, Angular, Preact, Web Components, Elm, etc
  * Creating components and writing HTML with `class` in JSX (JavaScript Extension)
  * JSX is a DSL (Domain Specific Language) over JavaScript
  * React lifecycle (`componentWillMount`, `render`, `componentDidMount`)
* ▢ React Installation
  * `npm install -g create-react-app`
  * `create-react-app` project structure
* ▢ React Component `class` vs stateless component
  * Building blocks of React, `react`, `react-dom`
  * Import modules or another components
  * JSX `className` vs HTML `class`
  * `state`, `setState`, `getState`
    * initial state vs changed state
  * `props`, `propTypes`, and `defaultProps`
* ▢ React State
  * Passing state to child component
* ▢ React Props
  * Get props from parent component
* ▢ React Render
  * Display `state`/`props`/`variable` inside `render` function
  * Handle `undefined` or unstructured variable with condtional `if`/`||`
  * Conditional rendering
  * Looped rendering using `map`/`filter`
* ▢ React Method
  * `.bind(this)` in constructor
* ▢ React Toolkit
  * Component and virtual DOM
  * Editor Packages: `react`, `jsx`
  * Browser Extensions: React DevTools
* ▢ React Trivia
  * Complete lifecycle of a component
  * Element naming
  * Class-based components
  * Stateless functional components
  * Component-based development
  * Parent and child relationship between components
  * Build system with Webpack
  * Transpilation with Babel

---

# React.js UI Library

## Website Structure

Let's think in component-based design.

---

## React Basics

Who uses React? A lot. Especially Facebook, Instagram, Airbnb, etc.

The main reasons and philosophy of React is to improve both developer and designer productivity, by using a component-based approach when building a complex web application.

The important thing about React is that it uses: Component and virtual DOM.

What if we compare React vs jQuery, Vue, Angular, Preact, Web Components, Elm, etc?

By convention, creating components and writing HTML in React is using JSX (JavaScript Extension) syntax.

The main component can be either written using `class` or plain `function`.

JSX is a DSL (Domain Specific Language) over JavaScript. So it's not plain programming language.

Should we always React? Depends. If our application has some complexity, it's recommended. But if it's just a simple website, just use plain HTML, CSS, JavaScript & jQuery like usual.

### References

* [React.js]()
* [React Learning Journey](https://github.com/adhywiranata/react-tinkering-manual)

---

## React Installation

To quickly learn React, we can use `create-react-app` installer.

```sh
npm install -g create-react-app
```

```sh
create-react-app app-name
```

`create-react-app` project structure:

```sh
package.json
```

The `react-scripts` actually contains:

* webpack module bundler
* babel JavaScript transpiler

### References

* [`create-react-app`]()
* [webpack]()
* [babel-jsx]()

---

## React Components

Building blocks of React: `react` and `react-dom` are separated.

---

## React Lifecycle

React has some important lifecycles that determine the condition when the app is running:

* `componentWillMount`
* `render`
* `componentDidMount`

---

## React Data

Import modules or another components

JSX `className` vs HTML `class`

`state`, `setState`, `getState`

initial state vs changed state

`props`, `propTypes`, and `defaultProps`

## React State

Passing state to child component

---

## React Props

Get props from parent component

---

## React Render

Display `state`/`props`/`variable` inside `render` function

Handle `undefined` or unstructured variable with condtional `if`/`||`

Conditional rendering

Looped rendering using `map`/`filter`

---

## React Stateless Component

React component can use modern `class` or just a `function` (stateless component).

---

## React Method

Custom method

`.bind(this)` in constructor

---

## React Toolkit

Editor Packages:

* atom `react`
* atom `jsx`

Browser Extensions:

* [React DevTools]()
* [React Sight]()

---

## React Trivia

Complete lifecycle of a component.

Element naming.

Class-based components.

Stateless functional components.

Component-based development.

Parent and child relationship between components.

Build system with Webpack.

Transpilation with Babel.

---

## References

* [React]()
