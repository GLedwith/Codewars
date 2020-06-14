=begin

inputs: string

outputs: boolean true of false

problem:

Given a string, detect whether or not it is a pangram. Return True if it is, False if not.
Ignore numbers and punctuation.

rules:
case is irrelevant
ignore numbers and punctuation.
it uses the letters A-Z at least once

data structures:
string
array
CONSTANT

pseudo code
create a constant called alphabet and set it to all the "a".."z"

panagram method
=================
convert input string into an array of lowercase chars and set it to a variable called letters
delete all non alpha numeric characters
create a variable called results and set it to an empty array
iterate through the letters array one by one
push all characters to the results array
if letters array includes every letter in the alphabet
sort results array and remove duplicates and convert to a string
sort alphabet array and convert into a sting
compare both strings to see if they match
if they match return true
otherwise return false

=end

ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z).freeze

def panagram?(string)
  letters = string.downcase.delete("^a-z").chars
  results = []

  letters.each do |letter|
    results << letter
  end

  results.sort.uniq.join == ALPHABET.join
end

#

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
