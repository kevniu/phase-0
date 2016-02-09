puts 'Hello there, what\'s your first name?'
first_name = gets.chomp
puts 'Hello there, what\'s your middle name?'
middle_name = gets.chomp
puts 'Hello there, what\'s your last name?'
last_name = gets.chomp
puts 'Your name is ' + first_name + ' ' + middle_name + ' ' + last_name +'.'

puts 'What\'s your favorite number?'
better_number = gets.chomp.to_i + 1
puts 'Here\'s a better number: ' + better_number.to_s

=begin
How do you define a local variable?
Local variables are values that you can assign to a variable name that you can store in your computer's memory for use later in your program.

How do you define a method?
A method is a procedure that objects can call to have them behave in a certain way.

What is the difference between a local variable and a method?
A local variable stores a value or object while methods are called to perform an operation on an object.

How do you run a ruby program from the command line?
Type ruby followed by the file name of the ruby program.

How do you run an RSpec file from the command line?
Just type rspec followed by the spec file name.

What was confusing about this material? What made sense?
The material made sense for the most part, I think just making sure that your variable type is correct and is the proper type for the method you are trying to invoke, everything else will fall into place.

LINKS
https://github.com/kevniu/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/kevniu/phase-0/blob/master/week-4/math/my_solution.rb
=end

