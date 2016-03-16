# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.
# Multiples of 3 should be replaced with the string "Fizz"
# Multiples of 5 should be replaced with the string "Buzz"
# Multiples of 15 should be replaced with the string "FizzBuzz"

# Pseudocode



# Initial Solution
def super_fizzbuzz(array)
  array.each_index do |i|
    if array[i] % 15 == 0
      array[i] = "FizzBuzz"
    elsif array[i] % 3 == 0
      array[i] = "Fizz"
    elsif array[i] % 5 == 0
      array[i] = "Buzz"
    end
  end
  return array
end


# Refactored Solution






# Reflection
