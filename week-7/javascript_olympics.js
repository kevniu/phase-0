// JavaScript Olympics

// I paired [Leo Kukhar, with:] on this challenge.

// This challenge took me 1 hour.


// Warm Up




// Bulk Up
function addWin(array) {
for (var i = 0; i < array.length; i++){
  array[i].win = array[i].name + " won the " + array[i].event + ".";
}
return array;
};

var array = [{name: "Leo", event: "sprint"}, {name: "Kevin", event: "jump"}];
console.log(addWin(array));



// Jumble your words
function jumble(string) {
  var reverseString = string.split("").reverse().join("");
  return reverseString;
};

var string = "Jumble your words!";
console.log(jumble(string));



// 2,4,6,8
function evenNumbers(array){
var evenArray = [];
for (var i=0; i < array.length; i++) {
    if (array[i] % 2 === 0){
    evenArray.push(array[i]);
    }
}
return evenArray;
};

var array = [1, 2, 3, 4, 5, 6, 7, 8];
console.log(evenNumbers(array));


// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
I solidified in this challenge my knowledge of accessing/modifying nested arrays/objects, string methods, the object constructor, and using the "this" keyword.
What are constructor functions?
Constructor functions are functions that have the keyword "this" in front of the name of the local variable and allows for pseudo classes in JavaScript which you can use to create objects of the same type.
How are constructors different from Ruby classes (in your research)?
Ruby classes need an intialize method, while JavaScript constructors do not, so every function is potentially a constructor. In Ruby, classes are a special kind of object that create new instances. JavaScript does not have classes, they have prototypes which are objects, but do not have special methods/properties associated with them.
*/