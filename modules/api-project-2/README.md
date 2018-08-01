# API Project 2

---

## Requirements

Create a simple JavaScript API using Express and test the API using Postman

---

## Level 0

1. Create simple API server using express.js that returns the information about the API. 
1. Use get `/` endpoint to handle API request.
1. Save the request into postman collections named API Project 2.
1. Save the request as API Info.

Expected response using postman:

[Level-0](./images/api-project-2-level-0.gif)

---

## Level 1

1. Create more API response based on this routing model.
1. Save every single request into API Project 2 collection.

| Route         | HTTP Verb | API Response (string)
|---------------|-----------|------------
| /todos        | GET       | Get all todo list
| /todos/search | GET       | Search todo
| /todos/:id    | GET       | Get one todo
| /todos        | POST      | Save one todo
| /todos        | DELETE    | Remove all todo list
| /todos/:id    | DELETE    | Remove one todo
| /todos/:id    | PUT       | Update one todo




Expected response using postman:

[Level-1](./images/api-project-2-level-1.gif)

---

## Level 2

1. Use `express application-level middleware` to log every endpoint request and HTTP verb to terminal.
1. Add `req.prefixResponse` that contain string `"User Request:"` inside middleware.
1. Display `req.prefixResponse` before every main response.

Expected output:

[Level-2](./images/api-project-2-level-2.gif)

## Level 3

Use `req.params` (Route Parmeters), display every id parameter that user pass from client.

| Route      | HTTP Verb | Request URL Example  | Expected response
|------------|-----------|----------------------|------------
| /todos/:id | GET       | /todos/123           |  User request: Get one todo with id 123
| /todos/:id | DELETE    | /todos/222           |  User request: Delete one todo with id 222
| /todos/:id | PUT       | /todos/acde          |  User request: Update one todo with id acde

Expected response for route  `/todos/:id` with HTTP Verb `GET`: 

[Level-3](./images/api-project-2-level-3.gif)

## Level 4

Use `req.body` to get an object that user submitted in request body and display it inside API response.

| Route      | HTTP Verb | Request URL Example    | Expected response
|------------|-----------|------------------------|------------
| /todos/    | POST      | /todos/                |  User request: Save one todo {request body}
| /todos/:id | PUT       | /todos/222             |  User request: Update one todo with id 222 {request body}

Expected response for route  `/todos` with HTTP Verb `POST`: 

[Level-4](./images/api-project-2-level-4.gif)

## Level 5

Use `req.query` to get the data that user submitted inside query URL and display it inside API response.

| Route            | HTTP Verb | URL Example                                | Expected response
|------------------|-----------|--------------------------------------------|------------
| /todos/search    | GET       | /todos/search?description=learn&done=false |  User request: Search todo {query URL}

Expected response for route  `/todos/search` with HTTP Verb `GET`: 

[Level-5](./images/api-project-2-level-5.gif)

## Level 6

Create simple todo list API  that can do create, read, update, delete, and search todo.

[Level-6-create](./images/api-project-2-level-6-create.gif)

[Level-6-read](./images/api-project-2-level-6-read.gif)

[Level-6-update](./images/api-project-2-level-6-update.gif)

[Level-6-delete](./images/api-project-2-level-6-delete.gif)

[Level-6-search](./images/api-project-2-level-6-search.gif)




