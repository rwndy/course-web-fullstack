# Part 17

---

* ▢ Node.js
  * Installation: `nvm`
  * `node` REPL
  * Using JavaScript in Node environment
  * package manager: `npm`, `yarn`, `pnpm`
  * Semantic Versioning
* ▢ Node.js Development
  * `nodemon`, `node-dev`
  * Environment: `process.env`, `development`, `production`

---

## Install Node.Js

[Install via package manager](https://nodejs.org/en/download/package-manager) or via [nvm](https://github.com/creationix/nvm#installation).

## Node REPL

REPL stands for Read Eval Print Loop and it represents a computer environment like a Windows console or Unix/Linux shell.

Start REPL by using node command

```sh
node
```

```sh
# node command list
ctrl + c − terminate the current command.
ctrl + c twice − terminate the Node REPL.
ctrl + d − terminate the Node REPL.
Up/Down Keys − see command history and modify previous commands.
tab Keys − list of current commands.
.help − list of all commands.
.break − exit from multiline expression.
.clear − exit from multiline expression.
.save filename − save the current Node REPL session to a file.
.load filename − load file content in current Node REPL session.
```

## Semantic versioning

SemVer is a 3-component system in the format of `x.y.z` where:

1. `x` stands for a major version
2. `y` stands for a minor version
3. `z` stands for a patch

A change in patch represents a bugfix that doesn’t break anything. A change in minor version represents a new functionality that doesn’t break anything. A change in major version represents a large change that breaks compatibility. If users don’t adapt to a major version change, stuff won’t work.

Always start at `0.1.0` and before `1.0.0` is only the development phase.

## References

* [Slide: JavaScript & Node 101](http://bit.ly/js-node-101)
* [Repo: `module-nodejs`](https://github.com/impactbyte-learn/module-nodejs)
* [Node.js Tutorial - TutorialsPoint](https://www.tutorialspoint.com/nodejs)
* [Semantic Versioning: Why You Should Be Using it — SitePoint](https://www.sitepoint.com/semantic-versioning-why-you-should-using)
