# React 4

---

- ▢ Static Typing
  - Flow static type checker
  - vs PropTypes, TypeScript
- ▢ React Testing
  - Jest, Enzyme
- ▢ State Management
  - Redux
  - Component state vs Redux state
  - vs Flux vs Redux vs MobX
  - Browser Extensions: Redux DevTools
- ▢ React & Redux
  - Integrate Redux into React
  - React Redux boilerplate

---

# Static Typing

Flow is a static type checker for your JavaScript code. It does a lot of work to make you more productive. Making you code faster, smarter, more confidently, and to a bigger scale.

Flow checks your code for errors through static type annotations. These types allow you to tell Flow how you want your code to work, and Flow will make sure it does work that way.

```js
// @flow
function square(n: number): number {
  return n * n
}

square("2") // Error!
```

Because Flow understands JavaScript so well, it doesn’t need many of these types. You should only ever have to do a minimal amount of work to describe your code to Flow and it will infer the rest. A lot of the time, Flow can understand your code without any types at all.

```js
// @flow
function square(n) {
  return n * n // Error!
}

square("2")
```

Usually in React, we can also use PropTypes, the built-in typechecking abilities. But PropTypes usually only support props, so it's not as powerful as Flow or TypeScript. Therefore, Flow is useful when you don't use TypeScript.

To use Flow with Atom, use recommended packages:

```sh
apm install atom-ide-ui ide-flowtype autocomplete-flow linter-flow
```

## References

- [Flow - A Static Type Checker for JavaScript](https://flow.org)
  - [Installation](https://flow.org/en/docs/install)
  - [Learn how to setup React with Flow](https://flow.org/en/docs/react)
  - [Learn how to use Flow with Create React App](https://flow.org/en/docs/tools/create-react-app)
  - [Flow integration for the Atom editor](https://flow.org/en/docs/editors/atom)
- [TypeScript - JavaScript that scales](https://www.typescriptlang.org)
- [Typechecking With PropTypes](https://reactjs.org/docs/typechecking-with-proptypes.html)
- [Validating Props easily with React PropTypes](https://codeburst.io/validating-props-easily-with-react-proptypes-96e80208207)

---

# React Testing

Jest built by Facebook, is a complete JavaScript testing solution. It works with and without React. Jest is used by Facebook, Oculus, Instagram, Twitter, Pinterest, The New York Times, and more. It also [works in TypeScript](https://github.com/kulshekhar/ts-jest).

While Enzyme built by Airbnb, is a JavaScript Testing utility for React that makes it easier to assert, manipulate, and traverse your React Components' output.

Jest is more for unit or functional testing, Enzyme is more for visual regression testing.

We can also use them with other testing libraries.

## References

- [Jest 🃏 Delightful JavaScript Testing](https://facebook.github.io/jest)
  - [Testing React Apps](https://facebook.github.io/jest/docs/en/tutorial-react.html)
  - [End to End Testing with Google's Puppeteer and Jest from @iamtylerwclark on @eggheadio](https://egghead.io/courses/end-to-end-testing-with-google-s-puppeteer-and-jest)
- [Enzyme - Airbnb Engineering](http://airbnb.io/projects/enzyme)
  - [Enzyme: JavaScript Testing utilities for React – Airbnb Engineering & Data Science – Medium](https://medium.com/airbnb-engineering/enzyme-javascript-testing-utilities-for-react-a417e5e5090f)
  - [An introduction to testing React components with Enzyme 3](https://javascriptplayground.com/introduction-to-react-tests-enzyme)
  - [Enzyme - JavaScript Testing utility for React](http://airbnb.io/enzyme)

---

# State Management Solution

# Redux

Redux is a predictable state container for JavaScript apps.
It is a better state management solution when we have a lot of state in our app.

It helps you write applications that behave consistently, run in different environments (client, server, and native), and are easy to test. On top of that, it provides a great developer experience, such as live code editing combined with a time traveling debugger.
You can use Redux by its own, together with React, or with any other view library.

React's Component state vs Redux store differs in how they're located and managed. Traditional state is located in each components, while store is located in the outest root component but accessible to any components inside.
Redux is an easier alternative for Flux, the application architecture that Facebook uses for building client-side web applications.

There's also some alternatives called React's Context API, Flux, MobX, etc.

## React's Context API

React has its own solution to manage complex state, called `Context`.
Context provides a way to pass data through the component tree without having to pass props down manually at every level.

- [Context - React](https://reactjs.org/docs/context.html)
- [Here's how React's New Context API Works - YouTube](https://www.youtube.com/watch?v=XLJN4JfniH4)
  - [`wesbos/React-Context` - Quick demo of how to use React's new Context API](https://github.com/wesbos/React-Context)
- [Pass Data through a Component Tree using Context Providers and Consumers in React 16.3 - egghead.io](https://egghead.io/lessons/react-pass-data-through-a-component-tree-using-context-providers-and-consumers-in-react-16-3)
- [Use React Context to Manage Application State Through Routes from @avanslaars on @eggheadio](https://egghead.io/lessons/react-use-react-context-to-manage-application-state-through-routes)
- [React’s ⚛️ new Context API – DailyJS – Medium](https://medium.com/dailyjs/reacts-%EF%B8%8F-new-context-api-70c9fe01596b)
- [Exploring the React Context API with Provider and Consumer - RWieruch](https://www.robinwieruch.de/react-context-api)

## React & Redux

To integrate Redux into React, there's [`react-redux`](https://github.com/reactjs/react-redux), the official React bindings for Redux.

## References

### Redux

- [Redux Documentation](https://redux.js.org)
  - [Redux Basics](https://redux.js.org/basics)
- [Learn Redux Video Tutorial Course - 20 video tutorials to help you learn how to build JavaScript apps with React.js and Redux](https://learnredux.com)
- [Redux Tutorial - LearnCode.academy - YouTube](https://www.youtube.com/watch?v=1w-oQ-i1XB8&list=PLoYCgNOIyGADILc3iUJzygCqC8Tt3bRXt)
- [Learn Redux with Screencast Video Tutorials - egghead.io](https://egghead.io/browse/libraries/redux)
  - [Getting Started with Redux - Course by @dan_abramov @eggheadio](https://egghead.io/courses/getting-started-with-redux)
  - [Building React Applications with Idiomatic Redux](https://egghead.io/courses/building-react-applications-with-idiomatic-redux)
- [Component State vs Redux Store – Netscape – Medium](https://medium.com/netscape/component-state-vs-redux-store-1eb0c929277)
- [React State vs. Redux State: When and Why?](https://spin.atomicobject.com/2017/06/07/react-state-vs-redux-state)
- [`notrab/create-react-app-redux` - React Router, Redux, Redux Thunk & Create React App boilerplate](https://github.com/notrab/create-react-app-redux)
  - [Getting started with create-react-app, Redux, React Router & Redux Thunk](https://medium.com/@notrab/getting-started-with-create-react-app-redux-react-router-redux-thunk-d6a19259f71f)
  - [Example Application](https://cra-redux-router-thunk.herokuapp.com)

### React Redux

- [`react-redux`](https://github.com/reactjs/react-redux)
- [Usage with React - Redux](https://redux.js.org/basics/usage-with-react)

### Browser Extensions

- [Redux DevTools - DevTools for Redux with hot reloading, action replay, and customizable UI](https://github.com/reduxjs/redux-devtools)
- [Redux DevTools Extension Guide](http://extension.remotedev.io)
- [Redux DevTools Chrome Extension](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)

### Redux Plugins

- [Redux Form - The best way to manage your form state in Redux](https://redux-form.com)
- [`davidkpiano/react-redux-form` - Create forms easily in React with Redux](https://davidkpiano.github.io/react-redux-form)

### Examples

- [`r-park/todo-react-redux` - Todo app with Create-React-App • React-Redux • Firebase • OAuth](https://github.com/r-park/todo-react-redux)

### Alternatives

- [MobX - Simple, scalable state management](https://mobx.js.org)
  - [Ten minute introduction to MobX and React](https://mobx.js.org/getting-started.html)
- [Learn MobX with Screencast Video Tutorials - egghead.io](https://egghead.io/browse/libraries/mobx)
  - [Manage Complex State in React Apps with MobX from @mweststrate on @eggheadio](https://egghead.io/courses/manage-complex-state-in-react-apps-with-mobx)
  - [Manage Application State with Mobx-state-tree from @mweststrate on @eggheadio](https://egghead.io/courses/manage-application-state-with-mobx-state-tree)
- [Flux - Application Architecture for Building User Interfaces](https://facebook.github.io/flux)
  - [Fluxxor is a set of tools to facilitate building JavaScript data layers using the Flux architecture](http://fluxxor.com)
