#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: name
# Output: Greeting
# Steps:
# Create class NameData that gets name and stores in instance variable
# Create class Greetings
# Initialize class Greetings by creating instance of NameData
# Create hello instance method by calling gets name method on NameData instance
# Create new instance of Greetings class
# Call hello method on new instance

# Release 5
class NameData

  def what_is_name
    @name = "Kevin"
  end
end


class Greetings

  attr_reader :name_data

  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello #{@name_data.what_is_name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1
What are these methods doing?
The methods here are either getters or setters. The getters return the values outside the class. The setters allow the user to make changes to the instance variable attributes.
How are they modifying or returning the value of instance variables?
The getter method allows the instance variables to be invoked on the object and called outside the class. Setter methods allwow the instance variables to be called on the object and set outside of the class.

Release 2
What changed between the last release and this release?
In release 2, an attr_reader is used to create the method age instead of using a getter method what_is_age.
What was replaced?
The getter method what_is_age was replaced by an attr_reader method which creates the symbol :age.
Is this code simpler than the last?
Yes, the attr_reader makes the getter method unnecssary and makes the code easier to read.

Release 3
What changed between the last release and this release?
In release 3, an attr_writer method for age was added and the change_my_age setter method was deleted.
What was replaced?
The change_my_age setter was replaced.
Is this code simpler than the last?
Yes, the getter and setter methods for @age instance variable has changed to attr_reader and attr_writer methods. It makes it easier to invoke both methods when calling outside the class and invoking them as an instance of class. It also cleans up the code for readability.

Release 6
What is a reader method?
A reader method returns a value or state outside of the class, but does not change it.
What is a writer method?
A writer method can change the value of the variable outside of the class, but it is not readable.
What do the attr methods do for you?
The attr_methods eliminate the need for getter and setter methods.
Should you always use an accessor to cover your bases? Why or why not?
An accessor method is not always ideal as you don't necessarily want each instance variable to be mutable. In those cases, you can use an attr_reader method which will allow you to view and reference the attribute without being able to change it.
What is confusing to you about these methods?
This challenge helped solidify my understanding of these methods.
=end