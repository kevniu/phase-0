# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Milorad Felbapov].
# I spent 2 hours on this challenge.

# Pseudocode


# Input: 16 digit number
# Output: true or false
# Steps:
# Raise Argument error if number is not 16 digits
# Separate out digits by space or comma
# Convert into an array
# Starting from the second to last digit:
#  1. Double every other digit (-2, -4, etc.) until you reach the first digit
# Split all the doubled digits i.e. 10 becomes 1 + 0
# Sum all the digits together
# Check if the modulus of 10 is 0
# Return true or false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    @card_number = card_number.to_s
    if @card_number.length != 16
      raise ArgumentError.new("I'm sorry that's not a valid cc number.")
    end
  end

  def separate_double_digits
    @digit_array = @card_number.split(//)
    @digit_array.map! { |value| value.to_i }
    @digit_array.each_index do |i|
      if i.even?
        @digit_array[i] *= 2
      end
    end
    @digit_array
  end

  def split_double_digits
    @new_array = separate_double_digits
    @new_array.each_index do |i|
      if i % 2 == 0 && @new_array[i] > 9
        @new_array[i] -= 10
        @new_array << 1
      end
    end
    @new_array
  end

  def get_sum
    @sum = 0
    split_double_digits.each do |i|
      @sum += i
    end
    @sum
  end

  def check_card
    if get_sum % 10 == 0
      return true
    else
      return false
    end
  end


end

# Refactored Solution
# I think our original solution is good enough


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
We had separated out separating digits and doubling them into two separate methods but kept getting an undefined method that we couldn't figure out how to solve, possibly something wrong with the returned array. But combining them seemed to solve our dilemma. Aside from that, I would say just working out the lgoic for those methods and how to split the numbers greater than 10 that were doubled.
What new methods did you find to help you when you refactored?
Didn't really use any new methods for this challenge, but it helped reinforce a lot of concepts with arrays and object type.
What concepts or learnings were you able to solidify in this challenge?
I definitely solidified my understanding of manipulating arrays and iterating through arrays as well as instance methods and variables for classes.
=end