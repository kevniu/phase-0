// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Leo Kukhar.

// Pseudocode
// Input: integer
// Output: Comma seperated string
// Convert the integer to string
// Reverse the string
// Seperate into  groups of three
// Join with comma in between every group of three

// Initial Solution
function separateComma(integer) {
  var inputString = integer.toString().split("").reverse();
  for (var i = 3; i < inputString.length; i += 4) {
    inputString.splice(i, 0, ",");
  };
  var output = inputString.reverse().join("")
  console.log(output)
};



// Refactored Solution
// We thought our initial solution was good enough.



// Your Own Tests (OPTIONAL)
separateComma(112233445)
separateComma(1122)


// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
I think the last time I did challenge I approached the problem a different way than what my partner did. After he explained to me his thought process, it made a lot of sense and we decided to try and tackle it the way he solved it last time.
What did you learn about iterating over arrays in JavaScript?
We used a for loop in this case as we found it useufl to iterate over every group of three numbers so as to only stop at the indexes we needed to insert a comma at.
What was different about solving this problem in JavaScript?
Javascript has a different set of built-in methods, there were some methods we were able to use in Ruby that we weren't able to use here. I think we just needed to be more aware of the object type when we were working thorugh the problem.
What built-in methods did you find to incorporate in your refactored solution?
We didn't really find any more methods to refactor our solution. We used a number of them in our initial including split, reverse, splice, and join.
*/