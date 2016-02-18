# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: sides
# Output: Sides instance should return number of sides, roll instance should return a random number between 1 and number of sides
# Steps:
# Set input to instance variable
# Call instance variable that
# Call

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Number must be greater than 1")
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end
end



# 3. Refactored Solution
# Not sure what more I can do to refactor this

=begin
What is an ArgumentError and why would you use one?
ArgumentError is a subclass of the Exception class. It is raised when the arguments are wrong and there isn't a more specific exception class.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
Only new method would probably be rand(max). Nothing too challenging with it, just need to watch out since it's range starts from 0.
What is a Ruby class?
A Ruby class is a first class object, it is an instance object of Class class. Class is a bundle of methods and features, all instances of that class will have the same types of features and functions.
Why would you use a Ruby class?
You would use a ruby class if you have many objects with similar behaviors, you can use a class to help organize and simplify yoru code.
What is the difference between a local variable and an instance variable?
Local variables are variables define in a method and are not available outside the method. Instance variables are available across all methods for any particular instance or object.
Where can an instance variable be used?
They can be used in all instances of the same class where the instance variable is defined.
=end