# Part 30

---

* ▢ Server Side Rendering
  * Plain method
  * Next.js vs GatsbyJS vs Nuxt.js
* ▢ React Native
  * Mobile App Development
  * vs Ionic, PhoneGap, Cordova

---

# Server Side Rendering

Server Side Rendering (SSR) is a way to pack up your frontend and served from the backend. Without having the browser render them all initially. So, it can be a huge performance boost. Sometimes it's called universal/isomorphic React rendering.

The easiest way to get started with SSR is to use premade framework for it such as React's Next.js or GatsbyJS, or Vue's Nuxt.js.

## References

* [`zeit/next.js` - Framework for server-rendered or statically-exported React apps](https://github.com/zeit/next.js)
  * [ZEIT – Next.js](https://zeit.co/blog/next)
  * [ZEIT – Next.js 5](https://zeit.co/blog/next5)
  * [Learn Next.js - Create SSR Enabled React Apps Easily](https://learnnextjs.com)
  * [Build a universal React application with Next.js - YouTube](https://www.youtube.com/playlist?list=PLs2PzMqLzi7Va81SVtvEpGCCx0YQJqoRH)
* [GatsbyJS - Blazing-fast static site generator for React](https://www.gatsbyjs.org)
* [Nuxt.js - Universal Vue.js Applications](https://nuxtjs.org)
* [Client-side vs. server-side rendering: why it’s not all black and white](https://medium.freecodecamp.org/what-exactly-is-client-side-rendering-and-hows-it-different-from-server-side-rendering-bd5c786b340d)
* [The simple guide to server-side rendering React with styled-components](https://medium.com/styled-components/the-simple-guide-to-server-side-rendering-react-with-styled-components-d31c6b2b8fbf)

---

# React Native

React Native (RN) is one of the most popular mobile app development library to build Android or iOS app.

It lets you build mobile apps using only JavaScript. It uses the same design as React, letting you compose a rich mobile UI from declarative components.

React Native is used by Facebook, Instagram, Airbnb, Skype, Tesla, Walmar, and more.

```js
import React, { Component } from "react";
import { Text, View } from "react-native";

class WhyReactNativeIsSoGreat extends Component {
  render() {
    return (
      <View>
        <Text>If you like React on the web, you will like React Native.</Text>
        <Text>
          You just use native components like 'View' and 'Text', instead of web
          components like 'div' and 'span'.
        </Text>
      </View>
    );
  }
}
```

React Native vs NativeScript, Weex, Flutter, Ionic, PhoneGap, Cordova.

To start learning React Native, we can use:

* [`create-react-native-app`](https://npm.im/create-react-native-app) installer
* [Expo](https://expo.io) with its [development tools](https://expo.io/tools) to run our app via the web. So we don't need to use a mobile device directly at the beginning.
  * We have to install the Expo client on either [Android](https://play.google.com/store/apps/details?id=host.exp.exponent) or [iOS](https://itunes.apple.com/app/apple-store/id982107779).

```sh
npm install -g create-react-native-app

create-react-native-app example

cd example

npm start

npm run android

npm run ios
```

We can also use NativeBase or React Native Elements, an ssential cross-platform UI components for React Native. It's like Bootstrap, for RN.

---

## References

### React Native

* [React Native - A framework for building native apps using React](https://facebook.github.io/react-native)
* [Expo](https://expo.io)
  * [Quick Start - Expo Documentation](https://docs.expo.io)
  * [Expo development tools](https://expo.io/tools)
* [Learn React Native with Screencast Video Tutorials - egghead.io](https://egghead.io/browse/libraries/react-native)
  * [Fundamentals of React Native Video from @browniefed on @eggheadio](https://egghead.io/courses/fundamentals-of-react-native-video)
* [React Navigation](https://reactnavigation.org)
* [Building a Simple ToDo App With React Native and Firebase](https://youtube.com/watch?v=3ab0K6viEp0)
* [An iOS Developer on React Native](https://medium.com/ios-os-x-development/an-ios-developer-on-react-native-1f24786c29f0)

### Libraries

* [React Native Elements - Cross Platform React Native UI Toolkit](https://react-native-training.github.io/react-native-elements)
* [NativeBase - Essential cross-platform UI components for React Native](https://nativebase.io)
  * [Components · NativeBase](https://docs.nativebase.io/Components.html)
* [react-native-vector-icons directory](https://oblador.github.io/react-native-vector-icons)
* [Native Directory is a curated list of React Native libraries to help you build your projects](https://www.native.directory)

### Alternatives

* [NativeScript - Cross-Platform Native Development with JavaScript](https://nativescript.org)
* [Apache Weex](https://weex.apache.org)
* [Flutter](Flutter - Beautiful native apps in record time)
* [Ionic - Build Amazing Native Apps and Progressive Web Apps with Ionic Framework and Angular](https://ionicframework.com)
* [PhoneGap - Build amazing mobile apps powered by open web tech](https://phonegap.com)
* [Apache Cordova - Mobile apps with HTML, CSS, & JS](https://cordova.apache.org)
