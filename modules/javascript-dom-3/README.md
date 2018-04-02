# JavaScript DOM 3

---

* ▢ Form Processing
  * Validation
  * Save data
* ▢ Web Browser Storage
  * `Storage`, `sessionStorage`, `localStorage`, `setItem`, `getItem`
  * `IndexedDB`
  * `cookie`

---

## Web storage

You can store data locally insode user's browser with web storage

## Web storage methods

1.  window.localStorage : store data locally without expiration date
1.  window.sessionStorage : stores data for one session (data is lost when the browser tab is closed)

## Local storage

```js
//store to local storage
localStorage.setItem("coding_bootcamp", "Impact Byte");
localStorage.coding_bootcamp = "Impact Byte";

//get data from local storage
var result = localStorage.getItem("coding_bootcamp"); //result:Impact Byte

//remove data from local storage
localStorage.removeItem("coding_bootcamp");
var result = localStorage.getItem("coding_bootcamp"); //result:null

//clear all local storage
localStorage.clear();
```

## Session storage

```js
//store to session storage
sessionStorage.setItem("coding_bootcamp", "Impact Byte");
sessionStorage.coding_bootcamp = "Impact Byte";

//get data from session storage
var result = sessionStorage.getItem("coding_bootcamp"); //result:Impact Byte

//remove data from session storage
sessionStorage.removeItem("coding_bootcamp");
var result = sessionStorage.getItem("coding_bootcamp"); //result:null

//clear all session storage
sessionStorage.clear();
```
