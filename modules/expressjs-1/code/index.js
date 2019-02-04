// const express = require("express");

// const app = express();

// app.get("/", (req, res) => {
//   res.send("Hello World");
// });

// app.listen(3000);

const express = require('express')

const app = express()

// Handle GET / request
app.get('/', (req, res) => {
  res.send('My API')
})

// Handle GET / request
app.get('/profile', (req, res) => {
  // Send JSON object
  res.send({
    name: 'John Doe',
    email: 'text@gmail.com'
  })
})

app.listen(3000)
