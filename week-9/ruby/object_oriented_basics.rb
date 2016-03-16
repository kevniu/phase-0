# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    sum = 0
    scores.each do |score|
      sum += score
    end
    sum / scores.length
  end

  def letter_grade
    if average >= 90
      "A"
    elsif average >= 80
      "B"
    elsif average >= 70
      "C"
    elsif average >= 60
      "D"
    else
      "E"
    end
  end

  def linear_search(array, name)
    index = -1
    array.each do |student|
      if student.first_name == name
        index = array.index(student)
      end
    end
    index
  end

# Pseudocode
# 1. Add an index key to every object in the array
# 2. Sort the array alphabetically into a new array

#  If the array is empty, return -1

# Write a binary_search (Links to an external site.) method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1. You can write a iterative (or recursive, if you are comfortable with that) version of binary_search.

#   def binary_search(sorted_array)
#     mid = sorted_array.length / 2
#     if sorted_array.length > 0
#       case sorted_array[mid] == name

#       case sorted_array[mid]

#       case sorted_array[mid]

#     else
#       -1
#     end
#   end

# end

students = [
  Student.new('Alex', [100, 100, 100, 0, 100]),
  Student.new('Bill', [93, 96, 99, 89, 95]),
  Student.new('Chris', [82, 84, 88, 86, 88]),
  Student.new('David', [70, 73, 65, 79, 75]),
  Student.new('Edward', [62, 65, 68, 54, 70])
]
# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection