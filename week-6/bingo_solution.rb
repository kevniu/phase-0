# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Pick a random number between 0 (inclusive) and 5 (exclusive) to represent the 5 letters in BINGO
  # If number is 0, letter is B
  # If number is 1, letter is I
  # If number is 2, letter is N
  # If number is 3, letter is G
  # If number is 4, letter is O
  # Pick a random number between 1 and 100 (inclusive)

# Check the called column for the number called.
  # Get letter-name of column from number that corresponds with letter name
  # If column is B, get all first elements in each row (sub array)
  # If column is I, get all second elements in each row (sub array)
  # If column is N, get all third elements in each row (sub array)
  # If column is G, get all fourth elements in each row (sub array)
  # If column is O, get all fifrth elements in each row (sub array)
  # Check if random number called matches any nth elements from those sub arrays

# If the number is in the column, replace with an 'X'
  # If one of the numbers in the column matches the number called, change number to X

# Display a column to the console
  # From letter name, display corresponding column (nth element of each row)

# Display the board to the console (prettily)
  # Put each letter (B I N G O) across board top
  # Display one sub array on each row

# Initial Solution

class BingoBoard

  attr_accessor :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def call_bingo_number
    @random_number = rand(1..100)
    @random_bingo_number = rand(0..4) # selects number from 0-4 corresponding to letters B I N G O
  end

  def get_letter(rand_number)
    if rand_number == 0
      return 'B'
    elsif rand_number == 1
      return 'I'
    elsif rand_number == 2
      return 'N'
    elsif rand_number == 3
      return 'G'
    elsif rand_number == 4
      return 'O'
    else
      raise ArgumentError.new("I'm sorry that's an invalid Bingo letter.")
    end
  end

  def display_bingo_number
    "#{get_letter(@random_bingo_number)} #{@random_number}"
  end

  def display_column
    @selected_column = Array.new
    @bingo_board.each_index { |row|
      @selected_column << @bingo_board[row][@random_bingo_number] }
    puts "Bingo column #{get_letter(@random_bingo_number)} has numbers #{@selected_column}"
    @selected_column
  end

  def check_column
    if @selected_column.include?(@random_number)
      row = @selected_column.index(@random_number)
      @bingo_board[row][@random_bingo_number] = 'X'
      @match = true
    else
      @match = false
    end
  end

  def display_match_result
    if @match
      puts "Match found! Mark #{display_bingo_number} with an X."
    else
      puts "No match, try again."
    end
  end

  def display_board(array)
    puts "B   I   N   G   O"
    index = 0
    while index < array.size
      print array[index]
      puts ""
      index += 1
    end
  end

end

# Refactored Solution
class BingoBoard

  attr_accessor :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def call_bingo_number
    @random_number = rand(1..100)
    @random_bingo_number = rand(0..4) # selects number from 0-4 corresponding to letters B I N G O
  end

  def get_letter(rand_number)
    case rand_number

    when 0
      return 'B'
    when 1
      return 'I'
    when 2
      return 'N'
    when 3
      return 'G'
    when 4
      return 'O'
    else
      raise ArgumentError.new("I'm sorry that's an invalid Bingo letter.")
    end
  end

  def display_bingo_number
    "#{get_letter(@random_bingo_number)} #{@random_number}"
  end

  def display_column
    @selected_column = Array.new
    @bingo_board.each_index { |row|
      @selected_column << @bingo_board[row][@random_bingo_number] }
    puts "Bingo column #{get_letter(@random_bingo_number)} has numbers #{@selected_column}"
    @selected_column
  end

  def check_column
    if @selected_column.include?(@random_number)
      row = @selected_column.index(@random_number)
      @bingo_board[row][@random_bingo_number] = 'X'
      @match = true
    else
      @match = false
    end
  end

  def display_match_result
    if @match
      puts "Match found! Mark #{display_bingo_number} with an X."
    else
      puts "No match, try again."
    end
  end

  def display_board(array)
    puts "B   I   N   G   O"
    index = 0
    while index < array.size
      print array[index]
      puts ""
      index += 1
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

bingo_game = BingoBoard.new(board)
p bingo_game.display_board(board)
bingo_game.call_bingo_number
p bingo_game.display_bingo_number
bingo_game.display_column
bingo_game.check_column
p bingo_game.display_match_result
p bingo_game.display_board(board)

# new_game.display_board(board)
#Reflection

# REFLECTION
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
I think I have a tendency to use coding terms when I pseudocode, I'm trying to be more conscious of that and refrain from it.
What are the benefits of using a class for this challenge?
The benefits of using a class for this challenge is that the board will retain its current state as long as the instance of the object of the class exists.
How can you access coordinates in a nested array?
Accessing coordinates in a nested array is fairly straightforward. Your first index inside [] is for the first layer, the second [] is for the next nest, and so on and so forth.
What methods did you use to access and modify the array?
I used each_index, include? and index() to access and modify the array.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
include?() checks if the array contains specified element.
.index() returns index of specified element
How did you determine what should be an instance variable versus a local variable?
If a variable needs to be accessed by other methods, I make it an instance variable. If it only the method in which a variable is created in needs the variable, then I keep it as a local variable.
What do you feel is most improved in your refactored solution?
I didn't do too much with my refactored solution, I just changed my multiple elsif statments into a case for my random number generator.
=end