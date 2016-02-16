# Calculate the mode Pairing Challenge

# I worked on this challenge with: Charlie Lee

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array of numbers or strings

# What is the output? (i.e. What should the code return?)
# Array containing the most frequently used elements from the input array

# What are the steps needed to solve the problem?
# 1. Create a new hash
# 2. Iterate through the the original array
# 3. For each element in the array, check if there is a matching key in the hash
#   a. If the key does not exist, create a new key with a value = 1 (this represents the count)
#   b. If the key does exist, increase the key's value by 1
# 4. Find what is the highest count
# 5. Return an array with all keys whose value equals the highest count

# 1. Initial Solution
def mode(input_array)
  counts = Hash.new
  input_array.each do |element|
    if counts.has_key?(element)
      counts[element] += 1
    else
      counts[element] = 1
    end
  end

  max = 0
  counts.each do |key, value|
    if value > max
      max = value
    end
  end

  output_array = Array.new
  counts.each do |word, count|
    if count == max
      output_array.push(word)
    end
  end
  return output_array
end
# 3. Refactored Solution
def mode(input_array)
  counts = Hash.new(0)
  input_array.each do |element|
      counts[element] += 1
  end

  output_array = Array.new

  counts.each do |word, count|
    if count == counts.values.max
      output_array << word
    end
  end
  return output_array
end

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We chose to implement a Hash because we thought using the key values would be a good way to track each element in the array along with the number of times each appears.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes, we were able to write out our pseudocode fairly quickly.
What issues/successes did you run into when translating your pseudocode to code?
We were fairly successful in translating the pseudocode, we only referred to the Hash doc to find a method to check if our hash already has an existing key value.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used .each to iterate through the array and hashses. When we were refactoring we found that initalizing the Hash with a default value of zero helped to remove some lines of code. We also found a built in values and max method that helped simplify our original code.
=end