// -----------------------------------------------------------------------------
// Declare Variables
// this is comment

/* This
is a comment too
*/

// Direct
a = 1;
var b = 2;
let c = 3;
const d = 4;

// Using another variables
let e = b + a; // 3
let f = "Hello"; // Hello
let g = "World"; // Wolrd
let h = "Hello" + " " + "World"; // Hello World
let i = `${f} ${g}`; // Hello World

// -----------------------------------------------------------------------------
// Variable Types

let j = 1; //Number
let k = "This is String"; //String you can use " , ' or `
let l = true; //Boolean
let m = undefined; //Undefined
let n = null; //null

// object and array

let o = ["a", 1, true, undefined, null]; //array

let p = {
  number: 1,
  string: "This is String",
  boolean: true,
  undefined: undefined,
  null: null,
  array: ["a", 1, true, undefined, null]
}; //object

let q = {
  number: j,
  string: k,
  boolean: l,
  undefined: m,
  null: n,
  array: o
};

// -----------------------------------------------------------------------------
// String

var first_name = "Muhammad";
var last_name = "Haekal";
let full_name = `${first_name} ${last_name}`; // Muhammad Haekal
full_name = first_name + " " + last_name; // Muhammad Haekal
