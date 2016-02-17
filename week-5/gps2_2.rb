# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Initalize new list with items and respective quantities
  # set default quantity as 0 for each item
  # print the list to the console [can you use one of your other methods here?] call print a list method that we will create
# output: [what data type goes here, array or hash?] Return a hash of the grocery list with items as keys and quantities as values

def create_list(items)
  item_array = items.split
  grocery_hash = Hash.new
  item_array.each do |i|
    grocery_hash[i] = 1
  end
  p grocery_hash
end

cool_groceries = create_list("apples bananas cake")
p cool_groceries

# Method to add an item to a list
# input: list, item name and optional quantity
# steps: If there is no list, than call method to create one
# Check if item is already on list, increase quantity if it exists
# Add item along with option associated quantity
# output: Print revised list with added item

def add_item(list_name, item_name, quantity = 1)
  if list_name.has_key?(item_name)
    list_name[item_name] += quantity
  else
    list_name[item_name] = quantity
  end
end

add_item(cool_groceries, "strawberries", 4)
p cool_groceries

# Method to remove an item from the list
# input: List, item name
# steps: Check if item is already on the list, delete item
# If item doesn't exist, print error message
# Print out revised list
# output: Revised list with deleted items

def remove_item(list_name, item_name)
  if list_name.has_key?(item_name)
    list_name.delete(item_name)
  else
    p "Item is not on the list"
  end
end

remove_item(cool_groceries, "apples")
p cool_groceries

# Method to update the quantity of an item
# input: Item, quantity
# steps: Check if item is already on the list, if it is revise quantity to new quantity input
# If it doesn't exist, add the item along with the quantity
# output: Revised list with items along with new associated quantities

def update_item(list_name, item_name, quantity)
    list_name[item_name] = quantity if list_name.has_key?(item_name)
end

update_item(cool_groceries, "spinach", 2)
p cool_groceries

# Method to print a list and make it look pretty
# input: List
# steps: Take every item and quantity and print with a colon in between, 1 item on each row
# output: Revised pretty list

def pretty_list(list_name)
  list_name.each do |key, value|
    p "#{key}: #{value}"
  end
end

pretty_list(cool_groceries)

=begin
What did you learn about pseudocode from working on this challenge?
I learned that pseudocode can help make it easier to write out your code as it makes you think through the logic of what needs to be done for each problem.

What are the tradeoffs of using Arrays and Hashes for this challenge?
The beneift of hash is that it allows you to store the items and quantities as keys and values, making it useful for accessing certain elements especially for the add, remove, and update methods. I think the only beneift of using an array would come in the create list method where you don't need to worry about quantitites.

What does a method return?
A method returns whatever you specify it to return.

What kind of things can you pass into methods as arguments?
You can pass in arrays, strings, integers, hashes, and pretty much any type of object.

How can you pass information between methods?
You can pass information between methods by calling the method and using the returns.

What concepts were solidified in this challenge, and what concepts are still confusing?
I definitely learned how to utilize arrays and hashes better and learned some new built-in methods associated with them.
=end







