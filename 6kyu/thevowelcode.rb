# inputs: 2 string

# Outputs: string

# Rules:
# replace all the lowercase vowels in a given string with numbers

# Pseudo code
# create a hash named vowels and set it to the problems patterns

# encode method
# =====================
# convert input string into an array of characters
# set the return value to a variable called encoded
# create an variable called results and set it to an empty array
# iterate through the encoded array
# if character equals a vowel then replace vowel with corresponding value in the vowels hash
# move results to the results array
# convert results array into a string and return string

# decode method
# =====================
# convert input string into an array of characters and set the return value to a variable called decoded
# create an variable called results and set it to an empty array
# iterate through the decoded array
# if character equals a value in the VOWELS hash then return the corresponding key
# else return character
# move results to the results array
# convert results array into a string and return string

# code
VOWELS = { "a" => 1, "e" =>  2, "i" => 3, "o" => 4, "u" =>  5 }.freeze
VOWELS_1 = { "1" => "a", "2" => "e", "3" => "i", "4" => "o", "5" => "u" }.freeze

def encode(s)
  encoded_chars = s.chars
  results = []

  encoded_chars.each do |char|
    if VOWELS.include?(char)
      results << VOWELS[char]
    else
      results << char
    end
  end

  results.join
end

def decode(s)
  decoded_chars = s.chars
  results = []

  decoded_chars.each do |char|
    if VOWELS_1.include?(char)
     results << VOWELS_1[char]
    else
     results << char
    end
  end

  results.join
end

# Test cases:

p encode('hello') == 'h2ll4'
p decode('h2ll4')
