# Input: list of students that are an array of strings
# Output: Arrays within an array that consist of 3-5 students each
# Steps
# Create a new array that will house multiple arrays of groups of students
# Push a random group of 5 students into the new array as an array
# Delete students from original array that got pushed.
# Continue pushing groups of 5 students into the array until there are 10 or less elements remaining in the original inputted array
# Push remaining students into arrays of 3-4, if they can't be grouped into groups of 5.

SF_rock_doves = ["Adam Pinsky", "Afaan Naqvi", "Alana Farkas", "Andrew Crowley", "Andrew Vathanakamsang", "Anna Lansfjord", "Blair White", "Brad Lindgren", "Brian Donahue", "Brittney Braxton", "Camila Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shapiro", "David Kaiser", "David Ramirez", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Gregory Toprak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jaclyn Feminella", "Jasmeet Chatrath", "Jason Allen", "Jon Norstrom", "Jonathan Nicolas", "Joseph Yoo", "Joshua Lugo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Leo Kukhar", "Li-Lian Ku", "Erica Lloyd", "Marita Deery", "Michael Verthein", "Milorad Felbapov", "Brian Mosley", "Nick Russo", "Noah Schutte", "Oscar Delgadillo", "Ryan Dempsey", "Ryan Wilkins", "Sami Zhang", "Sean Norton", "Shyh Hwang", "Sydney Rossman-Reich", "Theo Paul", "Tomasz Sok", "Wesley El-Amin"]

# def acct_groups(students)

#   cohort_array = Array.new
#   while students.size > 10
#     group_array = []
#     5.times do
#       index = rand(students.size)
#       group_array.push(students[index])
#       students.delete_at(index)
#     end
#     cohort_array.push(group_array)
#   end

#   # Pushes half/approx half the remaining students (10 or less) into a group array
#   group_array = Array.new
#   (students.size / 2).times do
#     index = rand(students.size)
#     group_array.push(students[index])
#     students.delete_at(index)
#   end
#   cohort_array.push(group_array)

#   # Pushes remainder of elements in students array into another group array
#   group_array = Array.new
#   students.size.times do
#     index = rand(students.size)
#     group_array.push(students[index])
#     students.delete_at(index)
#   end
#   cohort_array.push(group_array)

#   # p cohort_array

#   # Add for complexity, format printing
#   puts "Accountability Groups:"
#   index = 0
#   while index < cohort_array.length
#     puts "Accountability Group #{index + 1}:"
#     print cohort_array[index]
#     puts ""
#     index += 1
#   end
# end
# p acct_groups(SF_rock_doves)

# REFACTOR
def create_group(students, num_iterations)
  group_array = Array.new
  num_iterations.times do
    index = rand(students.size)
    group_array.push(students[index])
      tudents.delete_at(index)
  end
  return group_array
end

def print_format(cohort_array)
  puts "Accountability Groups:"
  index = 0
  while index < cohort_array.length
    puts "Accountability Group #{index + 1}:"
    print cohort_array[index]
    puts ""
    index += 1
  end
end

def acct_groups(students)
  cohort_array = Array.new
  while students.size > 10
    cohort_array.push(create_group(students, 5))
  end
  cohort_array.push(create_group(students, students.size / 2))
  cohort_array.push(create_group(students, students.size))
  print_format(cohort_array)
end
p acct_groups(SF_rock_doves)

#REFLECTION
=begin
What was the most interesting and most difficult part of this challenge?
The most difficult part of this challenge was how open-ended it was. I had a really difficult time in the beginining trying to figure out what I wanted my end product to look like and because of that it took me a really long time to write out the pseudocode for my logic as I had many ideas.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I think so, this one was more difficult because I wasn't sure what the best way was to look at the problem. But in general, I feel like writing out pseudocode is quite beneficial to the thought process.

Was your approach for automating this task a good solution? What could have made it even better?
I think my solution turned out well, it works well even when changing the number of students in the input array. There might be some methods that I don't know about that could really help to simplify some of my code as it's still pretty long.

What data structure did you decide to store the accountability groups in and why?
I decided to store the data into an array of arrays. I considered using a hash where the key was the group number and the value was an array of students but I thought that this was a simpler solution to implement and it still returns the same information that I wanted it to return.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I decided to create multiple methods and pass information between them, similar to what we did in GPS 2.2 this week. I thought this would make the code more readable, I didn't really change any of the methods used.
=end