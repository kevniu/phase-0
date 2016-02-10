# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(year)
  if (year % 100 == 0 && year % 400 == 0)
    # Leap years are years divisible by 4
    # Leap years are divisible by 100 are not unless they are also divisible by 400
    return true
  elsif year % 100 == 0
    return false
  elsif year % 4 == 0
    return true
  else
    return false
  end
end