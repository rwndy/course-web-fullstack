# Javascript 6

## Built-In Functions

* syntax

```javascript
//variable can be String, Array, etc.. Object can be self declared Object Or Built-In Object like Math
[variable/object].[builtin Functions/properties](param1, param2, etc ...)
```

## String Built-In Functions

Javascript's string has various built-in function like`charAt`,`length`,`toUpperCase`,`toLowerCase`,`split`,`replace`,`substr`

```javascript
//charAt Example
var string = "Impact Byte";
var result = string.charAt(0); //result:I["Impact", "Byte"]
result = string.charAt(1); //result:m
result = string.charAt(6); //result:" "(space)

//length Example
var string = "Impact Byte";
var result = string.length; //result:I

//toUpperCase example
var string = "Impact Byte";
var result = string.toUpperCase(); //result:IMPACT BYTE`random`,

//toLowerCase example
var string = "Impact Byte";
var result = string.toLowerCase(); //result:impactbyte

//split example
var split = "Impact Byte Charizard";
var result = string.split(" "); //result:["Impact", "Byte", "Charizard"]
var result = string.split(" ", 2); //result:["Impact", "Byte"]

//replace example
var split = "Impact Byte Charizard";
var result = str.replace("Charizard", "Bahamut"); //result:Impact Byte Bahamut

//substr example
var split = "Impact Byte Charizard";
var result = str.substr(0, 5); //result:Impact
var result = str.substr(0, 3); //result:Impa
```

## Array Methids

javascript's array has various built-in function like `length`, `random`, `indexOf`, `push`, `pop`, `join`, `slice`, `splice`, `sort`, `reverse`

```javascript
//length Example
var array = ["Impact", "Byte", "Charizard"];
var result = array.length; //result:3

//indexOf Example
var array = ["Impact", "Byte", "Charizard"];
var result = array.indexOf("Byte"); //result:1
var result = array.indexOf("Charizard"); //result:2

//push Example
var array = ["Impact", "Byte", "Charizard"];
var result = array.push("Bahamut"); //result:["Impact", "Byte", "Charizard","Bahamut"]

//pop Example
var array = ["Impact", "Byte", "Charizard"];
var result = array.pop(); //result:["Impact", "Byte"]

//join Example
var array = ["Impact", "Byte", "Charizard"];
var result = array.join("--"); //result:Impact--Byte--Charizard

//slice Example
var array = ["Impact", "Byte", "Charizard"];
var result = array.slice(1); //result:["Byte", "Charizard"]
var result = array.slice(1, 2); //result:["Impact", "Byte"]

//sort Example
var array = ["Impact", "Byte", "Charizard"];
var result = array.sort(); //result:["Byte", "Charizard", "Impact"]

//reverse Example
var array = ["Impact", "Byte", "Charizard"];
var result = array.reverse(); //result:["Charizard", "Byte", "Impact"]
```

## Math Methods

javascript's Math has various built-in function like `random`, `ceil`, `floor`

```javascript
//random Example
var result = Math.random(); //result:0.5451840492285749(random number)

//ceil Example
var result = Math.ceil(2.5); //result:3

//floor Example
var result = Math.floor(1.8); //result:1
```

## Object Methods

javascript's Object has various built-in function like `assign` and `keys`

```javascript
//assign example
var object1 = { fname: "John" };
var object2 = { lname: "Doe" };
var object3 = { age: 30 };

var object4 = Object.assign(object1, object1, object1);
/*
object4:{
  fname: "John",
  lname: "Doe",
  age: 30
}
object1:{
  fname: "John",
  lname: "Doe",
  age: 30
}
*/

var object1 = {
  fname: "John",
  lname: "Doe",
  age: 30
};
var result = Object.keys(object1); //result:["fname","lname","age"]
```

## Timing Methods

```javascript
//setInterval example
function firstFunction() {
  setInterval(function() {
    alert("Impact Byte");
  }, 3000);
}
firstFunction();

function secondFunction() {
  setInterval(function() {
    alert("Hello");
  }, 3000);
}
secondFunction();
//setTimeout Example
```
