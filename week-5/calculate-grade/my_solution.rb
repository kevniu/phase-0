# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) Letter grade as string
# What are the steps needed to solve the problem?
# Sum values of array elements
# Divide by number of elements to get average
# Return grade based on average


# 1. Initial Solution
# def get_grade(array)
#   average = 0
#   sum = 0
#   array.each do |i|
#     sum += i
#   end
#   average = sum / array.length

#   if average >= 90
#     return 'A'
#   elsif average >= 80
#     return 'B'
#   elsif average >= 70
#     return 'C'
#   elsif average >= 60
#     return 'D'
#   else
#     return 'F'
#   end
# end

# 3. Refactored Solution
def get_grade(array)
  average = array.inject {|sum, i| sum + i} / array.size
  if average >= 90
    return 'A'
  elsif average >= 80
    return 'B'
  elsif average >= 70
    return 'C'
  elsif average >= 60
    return 'D'
  else
    return 'F'
  end
end


# 4. Reflection