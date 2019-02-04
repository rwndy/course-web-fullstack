# JavaScript DOM 3

---

## Form Processing

Some of the most important features of a form:

- Validate the data when inputting or submitting
- Save the data locally
- Send the data into the backend database server

---

## Web storage

You can store data locally inside user's browser with web storage with these 3 main methods:

|                        | Cookie             | Local Storage | Session Storage |
| ---------------------- | ------------------ | ------------- | --------------- |
| **Capacity**           | 4kb                | 10mb          | 5mb             |
| **Browsers**           | HTML4 / HTML5      | HTML5         | HTML5           |
| **Accessible From**    | Any Window         | Any Window    | Same Tab        |
| **Expires**            | Manually set       | Never         | On Tab Close    |
| **Storage Location**   | Browser and Server | Browser       | Browser         |
| **Sent with Requests** | Yes                | No            | No              |

### Web storage methods

1. `window.localStorage`: store data locally without expiration date
2. `window.sessionStorage`: stores data for one session (data is lost when the browser tab is closed)

### `localStorage`

You can use `setItem()`, `getItem()`, `removeItem()`, or `clear()` method to manage local/session storage data. Directly accessing and modifying the data key is also possible.

```js
// store data
localStorage.setItem('name', 'Nikola Tesla')
localStorage.name = 'Nikola Tesla'

// get data
const result = localStorage.getItem('name') // result: Nikola Tesla

// remove data
localStorage.removeItem('name')
const result = localStorage.getItem('name') // result: null

// clear data
localStorage.clear()
```

### `sessionStorage`

```js
// store data
sessionStorage.setItem('name', 'Nikola Tesla')
sessionStorage.name = 'Nikola Tesla'

// get data
const result = sessionStorage.getItem('name') // result: Nikola Tesla

// remove data
sessionStorage.removeItem('name')
const result = sessionStorage.getItem('name') // result: null

// clear data
sessionStorage.clear()
```

---

## Cookies

Cookies is small text that stored locally inside user's browser.

### Initialize and retrieve cookies

JavaScript can create, read, and delete cookies with the `document.cookie`property.

```js
// initialize cookies
document.cookie = 'first_name=Nikola'
document.cookie = 'last_name=Tesla'

// delete cookies
document.cookie = 'first_name='
document.cookie = 'last_name='

// update cookies
document.cookie = 'first_name=Nikola'
document.cookie = 'last_name=Tesla'

// retreive all cookies
const result = document.cookie
```

### Read specific cookies

There are many methods to retrieve a specific cookie. We will see an example of how we retrieve specific cookie using regex.

```js
document.cookie = 'first_name=Nikola'

const cookieValue = document.cookie.replace(
  /(?:(?:^|.*;\s*)first_name\s*\=\s*([^;]*).*$)|^.*$/,
  '$1'
) // cookieValue: Nikola
```

### Set cookie expiration date

You can specify cookies expiration date in `expires=` with date in GMTString format.

```js
const d = new Date()
const exdays = 8
d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000)

document.cookie = 'expires=' + d.toGMTString()
// "expires=Tue, 10 Apr 2018 16:58:30 GMT"
```

You can delete a cookie by simply updating its expiration time to zero.
