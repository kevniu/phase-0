// Design Basic Game Solo Challenge

// This is a solo challenge
/*
Write an outline of your overall mission and the goals that will indicate you've completed your mission as comments in the game.js file.

Who/what are the main characters/things in your game? They will be objects. What properties should they have? Write these as comments in the description section.

Remember, you need to have at least two objects defined and used in this challenge.

Write at least two functions you'll need to manipulate your objects to complete your goals as well.

*/

// Your mission description:
// Overall mission: Survive and get to the end to save Princess Peach
// Goals: Reach Princess Peach and dodge the turtle
// Characters: Mario (player), turtle, and Princess Peach.
// Objects: Mario (position, health), turtle, peach.
// Functions: move right, left, up (jump), and down.

// Pseudocode
// Create the Mario object (position, health, win).
// Add the functions for the player (move right/left/up or jump/down).
// Create the turtle object and have it appear randomly along the path.
// Check to see if player has encountered a turtle and needs to jump to avoid losing health
// If health reaches 0, player dies
// Check to see if the player has reached the end of the path (saves princess)

// Initial Code
// var mario = {
//   posX: 0,
//   posY: 0,
//   health: 100,
//   win: false,
//   // Move property for player
//   move: function(direction) {
//     if (direction === "forward") {
//       mario.posX += 10;
//     }
//     else if (direction === "backward") {
//       mario.posX -= 10;
//     }
//     else if (direction === "up") {  // jump over turtles
//       mario.posY += 10;
//     }
//     else if (direction === "down") {
//       mario.posY -= 10;
//     }
//     if (mario.posX < 100) {
//       console.log("Your current position:");
//       console.log("X Position: " + mario.posX + ", Y Position: " + mario.posY);
//       console.log("Turtle's X position: " + turtle.posX + "\n");
//     }
//     if (turtle.posX === mario.posX) {
//       console.log("You encountered a turtle! You should jump!");
//       mario.health -= 10;
//       console.log("Health: " + mario.health);
//     }
//     if (mario.posX > turtle.posX && mario.posY < 10) {
//       mario.health -= 10;
//       console.log("You did not jump over the turtle! You got hurt!");
//       console.log("Health: " + mario.health + "\n");
//       if (mario.health === 0) {
//         console.log("You died, Game Over!" + "\n");
//       }
//     }
//     if (mario.posX >= peach.posX) {
//       win = true;
//       console.log("Congratulations! You reached Princess Peach! You win!" + "\n");
//     }
//   }
// };

// var turtle = {
//   health: 100,
//   posX: Math.floor(Math.random()*100)
// };

// var peach = {
//   posX: 100,
// };

// console.log("Welcome to Mario! Find Princess Peach and rescue her!");
// console.log("Be sure to jump over the turtles!\n");
// console.log("Your current status is ...");
// console.log("Health: " + mario.health);
// console.log("X Position: " + mario.posX + ", Y Position:" + mario.posY);
// console.log("The turtle is curently at X position " + turtle.posX + "\n");
// mario.move("forward");
// mario.move("forward");
// mario.move("forward");
// mario.move("forward");
// mario.move("forward");
// mario.move("forward");
// mario.move("forward");
// mario.move("forward");
// mario.move("forward");
// mario.move("up");
// mario.move("down");
// mario.move("forward");

// Refactored Code
var mario = {
  posX: 0,
  posY: 0,
  health: 100,
  win: false,
  // Move property for player
  move: function(direction) {
    if (direction === "forward") {
      mario.posX += 10;
    }
    else if (direction === "backward") {
      mario.posX -= 10;
    }
    else if (direction === "up") {
      mario.posY += 10;
    }
    else if (direction === "down") {
      mario.posY -= 10;
    }
    checkTurtlePos();
    checkMissionComplete();
  },
};

var turtle = {
  health: 100,
  posX: Math.floor(Math.random()*100)
};

var peach = {
  posX: 100
};

var startMission = function() {
    console.log("Welcome to Mario! Find Princess Peach and rescue her!");
    console.log("Be sure to jump over the turtle to avoid getting hurt!\n");
    console.log("Your current status:");
    console.log("Health: " + mario.health);
    console.log("X Position: " + mario.posX + ", Y Position:" + mario.posY);
    console.log("The turtle is curently at X position " + turtle.posX + "\n");
};

var checkTurtlePos = function() {
  if (mario.posX > turtle.posX && mario.posY < 10) {
    mario.health -= 10;
    console.log("You did not jump over the turtle! You got hurt");
    console.log("Health: " + mario.health + "\n");
    if (mario.health === 0) {
      console.log("You died, Game Over!");
    }
  }
};

var checkMissionComplete = function() {
  if (mario.posX >= peach.posX) {
    mario.win = true;
    console.log("Congratulations! You reached Princess Peach! You win!");
  }
  else {
  console.log("Your current position:");
  console.log("X position " + mario.posX + ", Y Position " + mario.posY);
  console.log("Turtle's X position: " + turtle.posX + "\n");
  }
};

// Driver code
startMission();
mario.move("forward");
mario.move("up")
mario.move("down")
mario.move("forward");

// Reflection
/*
What was the most difficult part of this challenge?
This was a difficult challenge for me, it took me awhile to come up with a game idea that could be easily implemented and within the limits of my ability. I decdied to go with a Mario game taking some inspiration from the dragon game example.
What did you learn about creating objects and functions that interact with one another?
This lesson reinforced the function syntax of JS that you need a parentheses at the end.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I didn't really use any new built-in methods in my refactored solution but I refactored my code readability and made reduced the amount of if statements in my move property and defined some new functions instead.
How can you access and manipulate properties of objects?
Accessing and manipulating properties of objects is ver similar to accessing and manipulaing keys and hashes in Ruby.
*/