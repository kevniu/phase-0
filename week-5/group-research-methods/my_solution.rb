# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Convert all the elements inside the array to strings using map otherwise you'll get errors.
# Then use select method to return an array. Use it to search for what you are looking for.
# Search each elelment in the array using the include? method which will determine whether the letter is a substring of each elelment.
def my_array_finding_method(source, thing_to_find)
  array_of_strings = source.map {|element| element.to_s}
  array_of_strings.select {|element| element.include?(thing_to_find)}
end

# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Create a new hash using the select method
# Select will go through each item in the hash and return a new hash that only includes what we searched for, in this case values matching age.
# The new hash now has the key value pairs of the pets matching the age, but we only want to return the pet name (keys).

def my_hash_finding_method(source, thing_to_find)
  match_age = source.select {|key, value| value == thing_to_find}
  match_age.keys
end

# Identify and describe the Ruby method(s) you implemented.
#.map - Iterates through an array and returns a new array where each element has been modified based on the command. I used it to make all the elements in the array strings.
#.select - Iterates through an array and returns a new array based on your selection.
#.include? - Searches a string for a substring
#.keys - Returns the keys of a hash as an array


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# Researching was fairly simple after writing out some pseudocode. Once you figure out what you are trying to do each step, it makes it easy to google for methods in ruby docs that could work with each step.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


