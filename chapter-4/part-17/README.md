# Part 17

---

* ▢ Node.js
  * Installation: `nvm`
  * `node` REPL
  * package manager: `npm`, `yarn`, `pnpm`
  * Semantic Versioning
* ▢ Node.js Development
  * `nodemon`, `node-dev`
  * Environment: `process.env`, `development`, `production`

---

## Install Node.Js

[Install via package manager](https://nodejs.org/en/download/package-manager/)

## NodeJs REPL

REPL stands for Read Eval Print Loop and it represents a computer environment like a Windows console or Unix/Linux shell.

start REPL by using node command

```
$ node
```

```
//node command list
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

SemVer is a 3-component system in the format of x.y.z where:

1.  x stands for a major version
1.  y stands for a minor version
1.  z stands for a patch

If you are mostly fixing bugs, then this would be categorized as a patch, in which case you should bump z.
If you are implementing new features in a backward-compatible way, then you will bump y because this is what’s called a minor version.
On the other hand, if you implement new stuff that is likely to break the existing API, you need to bump x because it is a major version.

Always start at 0.1.0 and before 1.0.0 is Only the Development Phase.

references:

https://www.tutorialspoint.com/nodejs/nodejs_repl_terminal.htm
https://www.sitepoint.com/semantic-versioning-why-you-should-using/
