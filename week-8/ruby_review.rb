# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # this creates an array of the characters (lowercase) of coded_message
#   decoded_sentence = [] # decoded_sentence = empty array.
#   cipher = {"e" => "a",   # Creates a hash that shifts 4 letters down.
#             "f" => "b",
#             "g" => "c",  # and the chr method for integers
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # For each character "x" of the array "input" do
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? # If its true, then there's a cypher match for the character
#     cipher.each_key do |y| # For each key "y" in the dictionary cypher, do
#       if x == y  # If the array character equals the dictionary cypher
#         decoded_sentence << cipher[y] # Push the corresponding value for y key to decoded sentence
#         found_match = true # Set variable found_match to true
#         break  # Break from the cycle through cipher hash.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #If x equals any of these characters
#         decoded_sentence << " " # Add a space to the decoded sentence.
#         found_match = true # Set variable found_match to true
#         break # Break from the cycle through cipher hash.
#       elsif (0..9).to_a.include?(x) # If the character "x" is a number 0-9.
#         decoded_sentence << x # Push that digit into the decoded sentence
#         found_match = true # Set variable found_match to true
#         break # Break from the cycle through cipher hash.
#       end # End for if statements
#     end # End for each cipher key.
#     if not found_match  # What is this looking for? # If it hasn't found the characters through any of the above if statements.
#       decoded_sentence << x #then just push the character into the decoded setence
#     end # End for if
#   end #End for each character in input
#   decoded_sentence = decoded_sentence.join("")
#   # What is this method returning? decoded sentence.join Returns decoded_array, joined back as a string.
# end


# Your Refactored Solution
=begin
Refactor to remove the hard-coded hash. Can you create a simple algorithm instead? The original shift was by 4 characters. What would happen if it was changed to 10? Would your code be able to handle that change easily?
Change the variable names so they make sense. You should always know what something is without needing a mental dictionary to understand it. (Who knows what x and y are anyway?)
Simplify the logic in the each and each_key loops.
=end

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Create an array of the characters of coded_message in lowercase only
  decoded_sentence = [] # decoded_sentence intialize as empty array.
  input.each do |char| # For each character of the array input do
      if ('a'..'z').to_a.include?(char)  # If it's a character from a-z, decrypt by shifting 4 letters down.
        ordvalue_cipher = char.ord - 4 # Decrypt by shifting 4 letters down using ordinal value
        if ordvalue_cipher < 97 # If it's below the ordinal value for "a"
          ordvalue_cipher += 26 # Add 26 so it loops around the alphabet.
        end
        decoded_sentence << ordvalue_cipher.chr # Convert back to character and add to decoded_sentence
      elsif char == "@" || char == "#" || char == "$" || char == "%"|| char == "^" || char == "&"|| char =="*" #if char equals any of these characters
        decoded_sentence << " " # Add a space to the decoded sentence.
      elsif (0..9).to_a.include?(char) # If the character "x" is a number.
        decoded_sentence << char # Push that digit into the decoded sentence
      else
        decoded_sentence << char # Otherwise push the character into the decoded sentence
      end
  end
  decoded_sentence.join("") # Return decoded_array, joined back as a string.
end




# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
=begin
What concepts did you review or learn in this challenge?
I reviewed looping again and accessing elements in a hash. I learned about using ordinal values in the refactor so we didn't have to hardcode the hash.
What is still confusing to you about Ruby?
I think what was confusing was just going back to Ruby syntax after working in JS for awhile.
What are you going to study to get more prepared for Phase 1?
I will work on some more of the Ruby review challenges if I have the time.
=end