// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var ten = 10;
ten = ten - 1;
console.log(ten);

// Write a short program that asks for a user to input their favorite food.
prompt("What is your favorite food?", "")
alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var i = 1; i <= 100; i++) {
  var output = "";
  if (i % 3 == 0 && i % 5 == 0)
    output += "FizzBuzz";
  else if (i % 3 == 0 && i % 5 != 0)
    output += "Fizz";
  else if (i % 5 == 0)
    output += "Buzz";
  console.log(output || i);
}


// Functions

// Complete the `minimum` exercise.
function min(num1, num2) {
  if (num1 < num2)
    return num1;
  else
    return num2;
}


// Data Structures: Objects and Arrays

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me {
  name: "Kevin"
  age: 27
  foods: ["sushi", "burger", "tacos"]
  quirk: "Watching documentaries on nature"
}