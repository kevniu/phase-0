// # I worked on this challenge [by myself, with: ].
// # This challenge took me [#] hours.

// # Pseudocode
// # 1. Create a method that accetps an integer as an argument
// # 2. Create an intial array containing starting fibonnaci numbers 0 and 1
// # 3. Create a sum variable
// # 4. Use a while loop that runs while sum is less than the argument number
// # 5. Sum the last two array numbers together for each loop and then add the sum to the back of the initial array for each loop.
// # 7. Exit loop if the sum is equal to or greater than the argument. If they are equal return true, else return false.

function isFibonacci(num) {
  var fibonacci = [0, 1];
  var sum = 0;
  while (sum < num) {
    sum = fibonacci[fibonacci.length-1] + fibonacci[fibonacci.length-2];
    fibonacci.push(sum);
  }
  return num === sum;
}

console.log(isFibonacci(7));
console.log(isFibonacci(8));
console.log(isFibonacci(9));
console.log(isFibonacci(10946));

// Refactored



/*
Reflections
What concepts did you solidify in working on this challenge?
Looping and JS syntax compared to Ruby.

What was the most difficult part of this challenge?
Negative indexes don't work the same way in JS, so just needed to revise syntax compared to Ruby.

Did you solve the problem in a new way this time?
I solved it in a very similar manner this time.

Was your pseudocode different from the Ruby version? What was the same and what was different?
It was fairly similar.
*/