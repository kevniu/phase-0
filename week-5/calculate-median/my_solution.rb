# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? Array of numbers
# What is the output? (i.e. What should the code return?) Returns median (middle number)
# What are the steps needed to solve the problem?
# Sort numbers in array from smallest to largest
# Select middle number
# If there are two middle numbers take the average


# 1. Initial Solution
# def median(array)
#   sorted_array = array.sort
#   size = array.size
#   if array.size % 2 == 0
#     median = (sorted_array[size / 2 - 1] + sorted_array[size /2]) / 2.0
#     return median
#   else
#     median = sorted_array[(size-1) / 2]
#     return median
#   end
# end

# 3. Refactored Solution
def median (array)
    sorted_array = array.sort
    size = array.size
    if array.size.even?
      return (sorted_array[size / 2 - 1] + sorted_array[size /2]) / 2.0
    else
      return sorted_array[(size-1) / 2]
    end
end

# 4. Reflection