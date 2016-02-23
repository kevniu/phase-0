# Your Names
# 1) Kevin Niu
# 2) Alana Farkas

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

def serving_size_calc(item_to_make, num_of_ingredients)

  bakery = {"cookie" => 1, "cake" =>  5, "pie" => 7} #rename bakery

  if bakery.has_key?(item_to_make) == false #if they don't have the item, raises error message
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  ingredients_needed = bakery[item_to_make] #accessing hash's values by key
  remaining_ingredients = num_of_ingredients % ingredients_needed
  string = "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}"

  if remaining_ingredients == 0# change to if/else statement
    #when number of ingredients can be divided evenly by the serving size
    # output = "You can't make anything else"
    return string
  else
    if remaining_ingredients >= 5
      output = "You can bake a cake"
    else
      output = "You can make some cookies"
    end
    return string + ", you have #{remaining_ingredients} leftover ingredients. #{output}"
    #Suggested baking items: TODO: MAKE THIS FEATURE"
    #IF remaining_ingredients >= 5 "you can make a cake" ELSE "can make at least one cookie"

  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
It's extremely important to make code readable so people can go back and decipher what you were trying to do. This includes getting rid of unnessary code and paying attention to what you name your variables.
Did you learn any new methods? What did you learn about them?
I didn't learn any new methdos, but I learned some good practices about making sure you DRY and deleting any code that isn't necessary.
What did you learn about accessing data in hashes?
I didn't learn any new concepts regarding accessing data in hashes, but the challenge helped reinforce my previous understanding in accessing values or searching through keys.
What concepts were solidified when working through this challenge?
Refactoring for dryness was heavily emphasized in our discussion and gave me some ideas to keep in mind for the future when writing code.
=end