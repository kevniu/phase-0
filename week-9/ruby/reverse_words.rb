# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.
# In this challenge, you will write a method that takes a sentence as a string and reverses each word in the sentence.

# Pseudocode
# Input: a sentence (string)
# Output: string with all words from input sentence reversed.
# Split string by spaces into an array
# Iterate through the array
# Reverse each string in the array
# Concatenate array into a string separated by spaces and return.


# Initial Solution
def reverse_words(sentence)
  sentence_array = sentence.split(" ")
  reversed_sentence = ""
  sentence_array.each do |word|
    reversed_sentence += "#{word.reverse!} "
  end
  reversed_sentence[0...-1]
end

# Refactored Solution





# Reflection