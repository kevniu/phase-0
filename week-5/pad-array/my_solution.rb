# Pad an Array

# I worked on this challenge by myself, with: Jon Norstrom

# I spent 1 hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Original array, the size of the array that should be returned, and value of padding
# What is the output? (i.e. What should the code return?) Return either a modified version of the original array with new padding or a new array modified with the specified padding.
# What are the steps needed to solve the problem?
# (Destructive) Check and see original size of array
# Modify array if necessary based on min_size
# Add value to end of array if specified.

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    difference = min_size - array.length
    for i in 1..difference
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  new_array = array.clone
  if min_size <= array.length
    return new_array
  else
    difference = min_size - array.length
    for i in 1..difference
      new_array.push(value)
    end
    return new_array
  end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  new_array = array.clone
  new_array.fill(value, array.length...min_size)
end
# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes, writing out the pseudocode helped give us an idea of how to code the problem.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes, the most difficult part was just figuring out what the problem was asking and what if/else checks we needed to make.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Yes our initial solution was successful at passing the tests. The problem that took us longest to figure out was making the pad method non-destructive. It took us aawhile to figure out how to make a new array that was based on the original array.
When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes, we found a method fill that is basically a built-in method for adding padding to an array.
How readable is your solution? Did you and your pair choose descriptive variable names? We didn't have many new variables but I think the names we chose made sense.
What is the difference between destructive and non-destructive methods in your own words?
Destructive modifies the original data structure while non-destructive creates a new data structure to modify and returns that in lieu of the original.
=end