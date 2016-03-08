// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Emily Osowski
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution
// for (var students in votes) {
//   if (voteCount.president.hasOwnProperty(votes[students].president)) {
//     // if candidate exists, add count
//     voteCount.president[votes[students].president] += 1;
//   }
//   else {
//     // if candidate doesn't exist, intialize with count of 1
//     voteCount.president[votes[students].president] = 1;
//   }
// }

// for (var students in votes) {
//   if (voteCount.vicePresident.hasOwnProperty(votes[students].vicePresident)) {
//     // if candidate exists, add count
//     voteCount.vicePresident[votes[students].vicePresident] += 1;
//   }
//   else {
//     // if candidate doesn't exist, intialize with count of 1
//     voteCount.vicePresident[votes[students].vicePresident] = 1;
//   }
// }

// for (var students in votes) {
//   if (voteCount.secretary.hasOwnProperty(votes[students].secretary)) {
//     // if candidate exists, add count
//     voteCount.secretary[votes[students].secretary] += 1;
//   }
//   else {
//     // if candidate doesn't exist, intialize with count of 1
//     voteCount.secretary[votes[students].secretary] = 1;
//   }
// }

// for (var students in votes) {
//   if (voteCount.treasurer.hasOwnProperty(votes[students].treasurer)) {
//     // if candidate exists, add count
//     voteCount.treasurer[votes[students].treasurer] += 1;
//   }
//   else {
//     // if candidate doesn't exist, intialize with count of 1
//     voteCount.treasurer[votes[students].treasurer] = 1;
//   }
// }

// console.log(voteCount);

// for (var title in voteCount) {
//   var highestVote = 0;
//     for (var name in voteCount[title]) {
//       if (voteCount[title][name] > highestVote) {
//         highestVote = voteCount[title][name];
//         officers[title] = name;
//       }
//     }
// }

// console.log(officers);


// __________________________________________
// Refactored Solution
for (var students in votes) {
  for (var title in votes[students]) {
    if (voteCount[title].hasOwnProperty(votes[students][title])) {
      voteCount[title][votes[students][title]] += 1;
    }
    else {
      voteCount[title][votes[students][title]] = 1;
    }
  }
}
console.log(voteCount);

for (var title in voteCount) {
  var highestVote = 0;
    for (var name in voteCount[title]) {
      if (voteCount[title][name] > highestVote) {
        highestVote = voteCount[title][name];
        officers[title] = name;
      }
    }
}

console.log(officers);




// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
It's similar to iterating over nested hashes in Ruby as you can chain deeper levels together. In JS, you can use either a dot or bracket notation. The dot notation is useful for accessing/modifying nested parts of an object if you know the key of the inner nested object exists already. The bracket notation is more flexible allows you to modify/access an existing nested object or can be used as a placeholder for key names, the same way that variables are used.
Were you able to find useful methods to help you with this?
We used hasOwnProperty to return a boolean value to check whether the candidate is already a property under each officer in voteCount.
What concepts were solidified in the process of working through this challenge?
Accessing the correct nested layer of each object's property was probably the most difficult portion of completing this challenge. There was a lot of thinking involved with making sure we were accessing the correct nested layer.
*/



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)