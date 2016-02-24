# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][1][0]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash [:outer][:inner]["almost"][3]



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! { |element|
  if element.kind_of?(Array)
    element.map!{ |subelement| subelement += 5 }
  else
    element += 5
  end
}
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! { |element|
  if element.kind_of?(Array)
    element.map! { |subelement|
      if subelement.kind_of?(Array)
        subelement.map! {|trielement| trielement+"ly"}
      else
        subelement+"ly"
      end
    }
  else
    element + "ly"
  end
}

p startup_names
# REFLECTION
=begin
What are some general rules you can apply to nested arrays?
I think the most important thing to remember is to make sure you are identifying the correct object type for the nested data structure. Once you have that straigtened out, you can easily manipulate that data structure just as you have been doing as long as you keep track of what nested level you are on.
What are some ways you can iterate over nested arrays?
We used map and then used a number of nested if/else statement depending on how many levels deep you need to go.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
The kind_of? method was useful for us when we were iterating through an array that has another array nested in it. With it, we can modify the nested array by using an if statement and checking the object type.
=end