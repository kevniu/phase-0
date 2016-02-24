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
  #fill in the outline here
  #

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call_bingo_number
    # return letter and number
    @random_number = rand(1..100)
    @random_bingo_letter = rand(0..@bingo_board.size)

  end

  # def check_number
    #
  #def confirm_match

  def display_board(array)
  # puts "Bingo Board"
    index = 0
    while index < array.size
      print array[index]
      puts ""
      index += 1
    end
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


# new_game.display_board(board)
#Reflection