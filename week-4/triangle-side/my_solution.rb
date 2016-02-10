
# I worked on this challenge [by myself, with: Leo Kukhar].


# Your Solution Below

def valid_triangle?(a, b, c)
 if a == 0 || b == 0 || c == 0
   return false
 else
   if (a ** 2 + b **2 == c ** 2) || (b ** 2 + c ** 2 == a ** 2) || (a ** 2 + c ** 2 == b ** 2)
     return true
   elsif a == b && b == c
     return true
   elsif a + b <= c || b + c <= a || a + c <= b
     return false
   elsif a == b || b == c || a == c
     return true
   else
     return false
   end
 end
end