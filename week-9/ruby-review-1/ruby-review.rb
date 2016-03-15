# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# 1. Create a method that accetps an integer as an argument
# 2. Create an intial array containing starting fibonnaci numbers 0 and 1
# 3. Create a sum variable
# 4. Use a while loop that runs while sum is less than the argument number
# 5. Sum the last two array numbers together for each loop and then add the sum to the back of the initial array for each loop.
# 7. Exit loop if the sum is equal to or greater than the argument. If they are equal return true, else return false.


# Initial Solution
def is_fibonacci?(num)
  fibonacci = [0,1]
  sum = 0
  while sum < num
    sum = fibonacci[-1] + fibonacci[-2]
    fibonacci.push(sum)
  end
  num == sum
end



# Refactored Solution
def is_fibonacci?(num)
  fibonacci = [0,1]
  sum = 0
  while sum < num
    sum = fibonacci[-1] + fibonacci[-2]
    fibonacci.push(sum)
  end
  num == sum
end





# Reflection
=begin
What concepts did you review in this challenge?
I reviewed looping in ruby and negative array indexes.
What is still confusing to you about Ruby?
This challenge was fairly straightforward, I'll probably review classes in Ruby more.
What are you going to study to get more prepared for Phase 1?
I'll try to do more of the ruby review exercises and continue to get better with JS.
=end