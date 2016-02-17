# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? positive integer as input
# What is the output? (i.e. What should the code return?) comma separated integer as string
# What are the steps needed to solve the problem?
# Convert number to string
# Determine how many digits there are
# If number is longer than 3 digits, determine how many commas are needed
# Insert comma after 3 characters from right
# If the number of digits is divisible by 3, do not insert commma after last 3 digits
# Return the string with commas


# 1. Initial Solution
def separate_comma(number)
  string_array = number.to_s.split(//)
  num_commas = string_array.size / 3
  if string_array.size < 4
    p number.to_s
  elsif string_array.size % 3 == 0
    position = -4
    (num_commas.to_i - 1).times do |i|
      string_array.insert(position, ',')
      position -= 4
    end
  p string_array.join("")
  else
    position = -4
    num_commas.to_i.times do |i|
      string_array.insert(position, ',')
      position -= 4
    end
  p string_array.join("")
  end
end


# 2. Refactored Solution
def separate_comma(number)
  string_array = number.to_s.split(//)
  num_commas = string_array.size / 3
  if string_array.size < 4
    p number.to_s
  else
    position = -4
    num_commas.to_i.times do |i|
      string_array.insert(position, ',')
      position -= 4
    end
  string_array.delete_at(0) if string_array[0] == ','
  p string_array.join("")
  end
end

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I first looked at what the input and output were and knew that I should end with a string. I then thought about how I could go about inserting commas into a string and whether or not I could use an organized data structure like an array to help me out with that process or whether there might be a method I could use to directly modify the string.

Was your pseudocode effective in helping you build a successful initial solution?
The pseudocode was helpful, it helped me come up with different methods or data structures I could potentially use in my solution and helped paint a map of what my code needed to check.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I found the delete_at method used with arrays. So I decided I could take out the elsif statement for when the number of digits was divisible by 3 since most of the code is the same as the other else condition. And just use delete_at at the end to check if there was a comma inserted at the beginning of the array.

How did you initially iterate through the data structure?
I determined the number of commas needed and then used times to insert commas as needed after each third position.

Do you feel your refactored solution is more readable than your initial solution? Why?
I think not having the extra elsif makes the code more readable since those blocks were about the same and it could take people awhile to differentiate what each one is doing.
=end