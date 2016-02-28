# Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].

# Psudocode
# What is the input? Original array, the size of the array that should be returned, and value of padding
# What is the output? (i.e. What should the code return?) Return either a modified version of the original array with new padding or a new array modified with the specified padding.
# What are the steps needed to solve the problem?
# (Destructive) Check and see original size of array
# Modify array if necessary based on min_size
# Add value to end of array if specified.


# First Person's solution I liked
#    What I learned from this solution
# Copy solution here:
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    difference = min_size - array.length
    for i in 1..difference
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  new_array = array.clone
  if min_size <= array.length
    return new_array
  else
    difference = min_size - array.length
    for i in 1..difference
      new_array.push(value)
    end
    return new_array
  end
end




# Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# My original solution:
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    difference = min_size - array.length
    for i in 1..difference
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  new_array = array.clone
  if min_size <= array.length
    return new_array
  else
    difference = min_size - array.length
    for i in 1..difference
      new_array.push(value)
    end
    return new_array
  end
end


# My refactored solution:
def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  new_array = array.clone
  new_array.fill(value, array.length...min_size)
end



# 5. Reflection