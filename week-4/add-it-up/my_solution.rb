# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Kather Broner.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of the numbers
# Steps to solve the problem.
# Iterate through the array of numbers and add each number to a total sum

# 1. total initial solution
def total(list_of_numbers)
  sum = 0
  list_of_numbers.each do |numbers|
    sum = sum + numbers
  end
  return sum
end

# 3. total refactored solution
def total(list_of_numbers)
  return list_of_numbers.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: elements from array joined into a sentence
# Steps to solve the problem.
# Iterate through the array and add strings together to join into a sentence. Capitalize the first sentence, add spaces in between the strings, and add a period at the end.

# 5. sentence_maker initial solution
def sentence_maker (list_of_strings)
  sentence = ""
  list_of_strings.each do |string|
    string = string.to_s
    sentence = sentence + string + " "
  end
  return sentence.capitalize.chop + "."
end

# 6. sentence_maker refactored solution
def sentence_maker (list_of_strings)
  return  list_of_strings.join(' ').capitalize << "."
end
