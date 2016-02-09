# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------
=begin
"Screw you guys " + "I'm going home." = cartmans_phrase
=end
# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The error is occuring in the errors.rb file
# 2. What is the line number where the error occurs?
# The error occurs on line 170
# 3. What is the type of error message?
# This is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# the interpreter says it did not expect end-of-input and is expecting keyword end
# 5. Where is the error in the code?
# There is an end line missing from the method.
# 6. Why did the interpreter give you this error?
# The method body doesn't have a closing end.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# The error occurs on line 35
# 2. What is the type of error message?
# Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#  basic Object main does not have a variable south_park defined (NameError)
# 4. Where is the error in the code?
# The error is in the improper declaration of south_park as a local variable.
# 5. Why did the interpreter give you this error?
# south_park has nothing assigned to it as a local variable.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# The error occurs on line 50
# 2. What is the type of error message?
# Undefined method
# 3. What additional information does the interpreter provide about this type of error?
# basic Object main does not have a cartman method
# 4. Where is the error in the code?
# The error because cartman is not properly defined.
# 5. Why did the interpreter give you this error?
# The method cartman is not defined.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# The error occurs on line 65
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# cartmans_phrase should be called with 0 arguments instead of 1 from line 69
# 4. Where is the error in the code?
# The error is from line 69 where the method is called with the wrong argument
# 5. Why did the interpreter give you this error?
# The method cartmans_phrase is called with the wrong number of arguments (1 instead of 0)

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# Error occurs on line 84
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# cartman_says is called with wrong number of arguments (0 instead of 1) on line 88
# 4. Where is the error in the code?
# Line 88 where the cartman_says method is called incorrectly.
# 5. Why did the interpreter give you this error?
# The method cartman_says is called with the wrong number of arguments (0 instead of 1)



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# Error occurs on line 105
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# cartmans_lie is called iwth the wrong number of arguments (1 instead of 2) on line 109
# 4. Where is the error in the code?
# Line 109 where the cartmans_lie method is called incorrectly
# 5. Why did the interpreter give you this error?
# The method cartmans_lie is called with the wrong number of arguments. (1 instead of 2)

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Error occurs on line 124
# 2. What is the type of error message?
# String can't be coerced into Fixnum (TypeError)
# 3. What additional information does the interpreter provide about this type of error?
# String can't * with 5 as it is not a Fixnum
# 4. Where is the error in the code?
# 5 is a Fixnum and "Respect my authority" is a string and can't be combined by * in that order.
# 5. Why did the interpreter give you this error?
# Fixnum and strings are different types, you can't multiply 5 by a string number of times. If they were switched, the code would work by multiply "Respect my authority" 5 times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Error occurs on line 139
# 2. What is the type of error message?
# divded by zero (ZeroDivisonError)
# 3. What additional information does the interpreter provide about this type of error?
# Can't be divided by zero
# 4. Where is the error in the code?
# 20 cannot be divided by 0
# 5. Why did the interpreter give you this error?
# Dividing by 0 results in an infinite number.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Error occurs on line 155
# 2. What is the type of error message?
# Cannot load such file (Load Error)
# 3. What additional information does the interpreter provide about this type of error?
# require_relative cannot load the file "cartmans_essay.md"
# 4. Where is the error in the code?
# The error in the code is that cartmans_essay.md does not exist
# 5. Why did the interpreter give you this error?
# The variable require_relative is trying to load a file that does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The error that was most difficult to read was the syntax error for cartman_hates.

How did you figure out what the issue with the error was?
The line number for the error threw me off quite a bit as it referred to the last line of the code. This helped me see that the method body was never closed with an "end"

Were you able to determine why each error message happened based on the code?
Yes, it was easy to analyze the code from the error message.

When you encounter errors in your future code, what process will you follow to help you debug?
I'll look at the error message and look at all the information it gives me including the line number, error message type, and another other information it may provide.

=end