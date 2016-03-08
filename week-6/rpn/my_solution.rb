# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input: string
# Output:
# Steps:
# Evaluate method (only for addition, subtraction, mulitplication)
# 1. Create array with operator functions
# 2. Separate string by spaces to obtain first value, second value, and operation and store into array.
# 3. Check whether the operator exists in the symbols array
# 4. Iterate through the array
# 5.


# 4.
# Calculate method
# 1. Convert everything to int.
# 1. Case statement when "+" add a + b, when "-" add a -b, when "*" a * b

# Initial Solution

class RPNCalculator
  # Define your methods, here!
  def initalize
  end

  def evaluate(input)
    @operator = ["+", "-" ,"*"]
    @array = input.split(" ")
    while @array.length > 1
      @array.each_with_index do |val, index|



  end

  def calculate(a, b, method)
    a = a.to_i
    b = b.to_i
    case method
      when "+"
        a + b
      when "-"
        a - b
      when "*"
        a * b
      end
  end


end



# 4. Refactored Solution
class RPNCalculator

  def initialize
  end

  def evaluate(input)
    @symbols = ["+", "-", "*"]
    @array = input.split(' ')
    while @array.length > 1
      @array.each_with_index do |x, i|
        if @symbols.include?(x)
          @result = calculate(@array[i-2], @array[i-1], x)
          @array.slice!(i-2..i)
          @array.insert((i-2), @result)
          break
        end
      end
    end
    @array.join.to_i
  end

    def calculate(a, b, method)
    a = a.to_i
    b = b.to_i
    case method
      when "+"
        a + b
      when "-"
        a - b
      when "*"
        a * b
      end
  end
end





# Reflection