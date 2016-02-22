# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: Sides instance should return number of sides, roll instance should return a random side from Die object
# Steps:
# If array is empty, raise argument error
# Otherwise, set input to instance variable
# Call instance variable that represents the input for sides instance method
# Pick random array element and return for roll instance method


# Initial Solution

# class Die
#   def initialize(labels)
#     if labels.empty?
#       raise ArgumentError.new("Array is empty")
#     else
#       @labels = labels
#     end
#   end

#   def labels
#     @labels
#   end

#   def sides
#     @sides = @labels.size
#     return @sides
#   end

#   def roll
#     @labels.sample
#   end
# end



# Refactored Solution
class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Array is empty")
    else
      @labels = labels
    end
  end

  attr_reader :labels

  def sides
    @sides = @labels.size
  end

  def roll
    @labels.sample
  end
end

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
In the last die class, the number of sides were defined explicitly so @sides could be easily created by jus taking the argument. In this case, the, the arugment is an array so you need to pull that info by getting the size of the array. Also, the roll method differentiated in that it didn't pick a random number from sides but instead a random element from the array.
What does this exercise teach you about making code that is easily changeable or modifiable?
It taught me that the class should be simple for reasuability, the class should do most of the work when creating a new object and minimize the amount the user needs to input.
What new methods did you learn when working on this challenge, if any?
I learned to use the sample method to ensure that roll returns every possible letter for a large number of rolls. I also used an attribute reader to help with the initalize method.
What concepts about classes were you able to solidify in this challenge?
I better understood the use of the attribute reader and decided to use it in my refactored solution for best practices with DRY. I also better understand how creating classes and instance methods helps to clean up the code so that methods don't need to be conitnuously called.
=end