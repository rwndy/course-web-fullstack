# React Training Week Schedule

**Setup and Preparation**

* Install NodeJS (LTS version) from [nodejs.org](http://nodejs.org/)
* run `npm install -g create-react-native-app flow-bin@0.53.0`
* Install Yarn from https://yarnpkg.com/en/docs/install
* Install Expo from the Apple App store or Google Play store on at least one mobile device
* Install Google Chrome (for debugging), React Dev Tools extension, and Redux Dev Tools extension
* Install Atom from [https://atom.io](https://atom.io/)
* Install Nuclide `apm install nuclide`
* Open Atom and wait for Nuclide to install all its dependencies
* Open Settings → Packages → Nuclide Settings → Install Recommended Packages on Startup
* `apm install linter linter-eslint prettier-atom`
* Create a folder `~/projects`
* Open a Terminal/CmdLine inside that folder and try
    `create-react-native-app MyTestProject`
* `cd ~/projects/MyTestProject && atom .`
* Make sure that your editor opens
* Please watch the following JS videos to prepare (also on USB flash drive provided)
    * https://egghead.io/courses/learn-es6-ecmascript-2015
    * https://egghead.io/courses/understand-javascript-arrays
    * https://egghead.io/courses/asynchronous-programming-the-end-of-the-loop (1 through 5 only)
    * Also might be helpful: my talk on Async/Await at BandungJS:
        https://www.youtube.com/watch?v=BQnGPzTKBS4


**Monday**

* JS Fundamentals and ES6
* Data Structures (Arrays and Objects)
* Destructuring
* Intro to React/ReactNative and JSX
* Component vs Element
* Module system, imports
* Functions, Events, callback functions
* React Stateless Functional Components (when to use)
* Quick review of using Git
* Intro to layout: box model and Flex

**Tuesday**

* Advanced JS Concepts
    * Mutable vs Immutable (reassign binding vs mutation)
    * Pure Functions and Side Effects
    * Classes, handling “this” binding, arrow function
    * Iterating Objects and Arrays
    * Static typing using Flow
* React Classes, setState, and lifecycle methods
* Intro to promises, event loop and async programming
* Using fetch() to make HTTP requests
* React class component that needs to fetch data
* Composition (composite components vs primitive components)

**Wednesday**

* Understanding state vs props
* Controlled vs Uncontrolled inputs
* Redux
    * Single immutable root state
    * App state and how to update store
    * Dispatching actions and using Reducers
    * Reducers should be pure
* Avoiding mutation
* How to connect Redux using Higher Order Component (connect)
* Building a basic interface using React Native + Redux

**Thursday**

* Advanced layout using Flex
* Intro to Animation
    * Declarative animations
    * Achieving 60fps using nativeDriver
    * Only animate styles that don't cause re-layout
* More on state management
    * When to use setState vs Redux
    * Where to put side-effects
    * Using Middleware
    * Action Creators
    * Lifecycle fetching vs Middleware vs Thunks vs Sagas
* Testing
    * Enzyme vs Snapshots
    * Mocks
    * View tests vs Logic tests
    * Where to focus your testing effort

**Friday**

* Navigation
    * Integration with Redux
* Advanced React Native
    * Images: ratios and source prop; local vs remote
    * Keyboard management
    * Photo upload
    * Focus management
    * React.Children helpers
    * FlatList
    * Overview of the Bridge, message passing and integrating with Native code
* Tips and Tricks
    * Handling Dates (tip: use ISO strings)
    * Avoid classes unless needed
    * Use composition
    * Testing a fetching API using factor + mock
* Publishing using Expo
* Best practices and how to find answers to questions
    * Simple ways to speed up your react native app
    * How to work with native modules?
* Wrapping up


