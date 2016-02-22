# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer called answer
# Output: Return a symbol either :high, :correct, or :low
# Steps:
# Create instance method guess
#   - If guess is more than correct answer, return high
#   - If guess is less than correct answer, retrun low
#   - If guess is equal to correct answer, return correct
# Create instance method solved? returns true if guess is correct, false otherwise


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def answer
#     @answer
#   end

#   def guess(guess)
#     @guess = guess
#     if @guess > @answer
#       return :high
#     elsif @guess < @answer
#       return :low
#     else
#       return :correct
#     end
#   end

#   def solved?
#     if @guess == @answer
#       return true
#     else
#       return false
#     end
#   end
# end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  attr_reader :answer

  def guess(guess)
    @guess = guess
    if @guess > @answer
      :high
    elsif @guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Classes can be used to represent any collection of objects in the real world such as people, plants, animals etc. The instance variables are like the object's attributes and the methods are like the object's behavior.
When should you use instance variables? What do they do for you?
Instance variables should be used when you need to reference them in multiple instance methods. They eliminate the need to input or hard code values into your methods since they can be referenced anywhere in the class.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control was fairly easily to implement here. I used conditionals to evaluate the possible outcomes between the @guess instance variable and the @answer instance variable and what to return for the solved? method.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Unlike strings, you cannot modify a symbol, which makes them useful as identifiers. This allows symbols to load faster and lets the program run more efficiently.
=end