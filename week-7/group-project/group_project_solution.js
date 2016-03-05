/*
Based on the tests, write user stories that describe what the code needs to do. User stories take the following format:

As a user, I want to...

The user stories should be easily translated into pseudocode by the next person in your group. However, a user story is NOT pseudocode -- it should describe the experience of someone using the function. Words like array or loop or any word not known to a non-technical person should not be used. You can specify the function name.
*/

// Sum User Story:
//
// As a user, I want to be able to calculate the sum of a group of numbers.
//
// ------------------------------------------------------------------------
//Sum Pseudocode:
//
// Define a function that takes an array of numbers as an argument.
// Set a variable total equal to 0.
// Add each integer in the array to the total.
// Once all numbers have been added return the total as the Sum.

function sum(num_array){
  var total = 0;
  for (counter = 0 ; counter < num_array.length ; counter++ ) {
    total = total + num_array[counter];
  }
  return total;
}

// Mean User Story:
//
// As a user, I want to be able to calculate the mean value of a group of numbers.
//
// ------------------------------------------------------------------------
// Mean Pseudocode:
//
// Define a function that takes an array of numbers as an argument.
// Set a variable total equal to 0.
// Add each integer in the array to the total.
// Divide the total by the number of numbers in the array.
// Return the results of the division as the Mean.

function mean(num_array){
  total = 0;
  for ( counter = 0 ; counter < num_array.length ; counter++ ) {
    total = total + num_array[counter];
  }
  return total/num_array.length;
}

// Median User Story:
//
// As a user, I want to be able to find the median in a group of numbers.
//
// ------------------------------------------------------------------------
// Median Pseudocode:
//
// Define a function that takes an array of numbers as an argument.
// Sort the numbers by value (least to greatest or greatest to least).
  // IF the length of the number array is odd (not divisible by 2),
    // Find middle number in sorted array:
      // Divide array length by 2 and round up to next largest whole number (this will be the index of the Median number)
    // Return the number at that index as the median of array.
  // ELSE IF the length of the number array is even (divisible by 2),
    // Find the two middle numbers in sorted array:
      // Divide array length by 2.
      // Round division results down to get the index of first middle number and round up to get the index of second middle number.
    // Add the two middle numbers and divide that sum by 2.
    // Return the result of the division as the Median.


// function median(num_array) {
//   num_array.sort();
//   if (num_array.length % 2 == 1) {
//     medianIndex = Math.ceil(num_array.length/2);
//     return num_array[medianIndex];
//   } else if (num_array.length % 2 == 0) {
//     medianIndex = (num_array.length/2);
//     medianIndex1 = Math.floor(medianIndex);
//     medianIndex2 = Math.ceil(medianIndex);
//     return( (num_array[medianIndex1] + num_array[medianIndex2]) / 2 );
//   }
// }

// ------------------------------------------------------------------------

// Person 4. Refactor and tell user story.
// As a user, I want to be able to call this function, median, and then I want to  be able to put a list of numbers in and have it tell me the median value.

function median(num_array) {
  num_array.sort();
  if (num_array.length % 2 == 0) {
    lowBound = (num_array.length/2) - 1;
    highBound = (num_array.length/2);
    return( (num_array[lowBound] + num_array[highBound]) / 2 );
} else {
    medianIndex = Math.floor(num_array.length/2);
    return num_array[medianIndex];
  }
}

// ------------------------------------------------------------------------

// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)
