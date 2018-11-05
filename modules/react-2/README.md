# React 2

---

- ▢ React Styling
  - Inline styling, CSS in JS
  - `styled-components`
- ▢ React UI Library
  - Reactstrap
- React-Wrapper Libraries
  - Google Maps
- ▢ React Router
  - `BrowserRouter` as `Router`, `Switch`, `Route`, `Link`
  - Use `Link` to change URL

---

## React Styling

Styling the components in React can use either in its own `.css` file, inline styling, or CSS in JS.

By popular convention, it's recommended to use CSS in JS solutions such as `styled-components`, `radium`, or `glamorous` if you want your style to be scalable.

Thinking in components  is no longer do you have to maintain bunch of style-sheets. CSS-in-JS abstracts the CSS model to the component level, rather than the document level. So we have more modularity.

YES, HTML and CSS are now like inside JavaScript.

```css
.App {
  color: black;
}
```

```jsx
<App className="App" style={{ color: black; }}></App>
```

```js
import React from "react"
import styled from "styled-components"

// Create a <Title> react component that renders an <h1>
const Title = styled.h1`
  font-size: 1.5em;
  text-align: center;
  color: green;
`

// Create a <App> react component that renders a <section>
const App = styled.section`
  padding: 4em;
  background: black;
`

// Use them like any other React component – except they're already styled!
;<App>
  <Title>Hello World!</Title>
</App>
```

### References

- [All You Need To Know About CSS-in-JS](https://hackernoon.com/all-you-need-to-know-about-css-in-js-984a72d48ebc)
- [`css-in-js` - React CSS in JS techniques comparison](https://github.com/MicheleBertoli/css-in-js)
- [styled-components - Visual primitives for the component age. Use the best bits of ES6 and CSS to style your apps without stress 💅](https://www.styled-components.com)
  - [`awesome-styled-components`](https://github.com/styled-components/awesome-styled-components)
  - [Styled System - Design system utilities for `styled-components`](http://jxnblk.com/styled-system)
  - [Rebass - React UI component library & design system, built with `styled-components` and `styled-system`](http://jxnblk.com/rebass)
- [Radium - A React Component Styling Library](https://formidable.com/open-source/radium)
- [`glamorous` - React component styling solved 💄](https://glamorous.rocks)
- [PostCSS - a tool for transforming CSS with JavaScript](http://postcss.org)

---

# React UI Library

There are various integrated UI library with most the most popular Bootstrap such as [Reactstrap](https://reactstrap.github.io).

Some alternatives are available as well.

## References

### UI

- [reactstrap - React Bootstrap 4 components](https://reactstrap.github.io)
- [Semantic UI React - The official Semantic-UI-React integration](https://react.semantic-ui.com)
- [Bloomer - A set of React Stateless Components](https://bloomer.js.org)
- [React + Foundation · Foundation as React components](https://react.foundation)

### Icons

- [React Icons - Include popular icons in your React projects easily. Font Awesome, Material ,Typicons, Octicons, Ionicons](https://gorangajic.github.io/react-icons)

---

# React-Wrapper Library

Google Maps

- [`react-google-maps` - React Google Maps Style Guide](https://tomchentw.github.io/react-google-maps)

---

## React Router

React Router is a collection of navigational components that compose declaratively with your application. Whether you want to have bookmarkable URLs for your React web app or a composable way to navigate in React Native, React Router works wherever React is rendering.

The latest version is React Router v4.

The main Router components are `Router`, `Route`, `Switch`, and `Link` respectfully based on where they're used.

Using `BrowserRouter` as `Router`:

```js
import { ReactDOM } from "react-dom"
import { BrowserRouter as Router, Route, Link } from "react-router-dom"

ReactDOM.render(
  <Router>
    <App />
  </Router>,
  appElement
)
```

Using Route:

```js
import { Route } from 'react-router-dom'

{/* when location = { pathname: '/about' } */}
<Route path='/about' component={About}/> // renders <About/>
<Route path='/contact' component={Contact}/> // renders null
<Route component={Always}/> // renders <Always/>
```

Using Switch:

```js
import { Route, Switch } from 'react-router-dom'

<Switch>
  <Route exact path='/' component={Home}/>
  <Route path='/about' component={About}/>
  <Route path='/contact' component={Contact}/>
  {/* when none of the above match, <NoMatch> will be rendered */}
  <Route component={NoMatch}/>
</Switch>
```

Use navigation `Link`, `NavLink`, or `Redirect` to change URL inside routed component.

```js
<Link to='/'>Home</Link>
// <a href='/'>Home</a>

// location = { pathname: '/about' }
<NavLink to='/about' activeClassName='active'>About</NavLink>
// <a href='/about' className='active'>About</a>

<Redirect to='/home'/>
```

For a quick start usage with `create-react-app` project, follow [their guide](https://reacttraining.com/react-router/web/guides/quick-start).

```js
import React from "react"
import { BrowserRouter as Router, Route, Link } from "react-router-dom"

const Home = () => (
  <div>
    <h2>Home</h2>
  </div>
)

const About = () => (
  <div>
    <h2>About</h2>
  </div>
)

const Topic = ({ match }) => (
  <div>
    <h3>{match.params.topicId}</h3>
  </div>
)

const Topics = ({ match }) => (
  <div>
    <h2>Topics</h2>
    <ul>
      <li>
        <Link to={`${match.url}/rendering`}>Rendering with React</Link>
      </li>
      <li>
        <Link to={`${match.url}/components`}>Components</Link>
      </li>
      <li>
        <Link to={`${match.url}/props-v-state`}>Props v. State</Link>
      </li>
    </ul>

    <Route path={`${match.path}/:topicId`} component={Topic} />
    <Route
      exact
      path={match.path}
      render={() => <h3>Please select a topic.</h3>}
    />
  </div>
)

const BasicExample = () => (
  <Router>
    <div>
      <ul>
        <li>
          <Link to="/">Home</Link>
        </li>
        <li>
          <Link to="/about">About</Link>
        </li>
        <li>
          <Link to="/topics">Topics</Link>
        </li>
      </ul>

      <hr />

      <Route exact path="/" component={Home} />
      <Route path="/about" component={About} />
      <Route path="/topics" component={Topics} />
    </div>
  </Router>
)

export default BasicExample
```

### References

- [React Training](https://reacttraining.com)
- [React Router v4](https://reacttraining.com/react-router)
  - [React Router Web](https://reacttraining.com/react-router/web)
  - [`react-router-dom`](https://npm.im/react-router-dom)
  - [Quick Start](https://reacttraining.com/react-router/web/guides/quick-start)
- [Learn React Router with Screencast Video Tutorials - egghead.io](https://egghead.io/browse/libraries/react-router)
  - [Add routing to React apps using React Router v4 from @joemaddalone on @eggheadio](https://egghead.io/courses/add-routing-to-react-apps-using-react-router-v4)
