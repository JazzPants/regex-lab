def starts_with_a_vowel?(word)
  word.match(/^[aeiou]\w+/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].*[\.?!]$/) ? true : false
end

def valid_phone_number?(phone)
  if phone.match(
       /(\d *){10}|(\(\d{3}\))(\d{3})-(\d{4})|(\d{3}) (\d{3}) (\d{4})|(\(\d{3}\))(\d{7})/,
     )
    true
  else
    false
  end
end

words_string =
  'unassuming ambiguous understanding pomp circumstance uninteresting uncompromising grouchy corollary'
words_starting_with_un_and_ending_with_ing(words_string)

correct_punctuation = "I stepped on a Corn Flake, now I'm a cereal killer."
puts first_word_capitalized_and_ends_with_punctuation?(correct_punctuation)

# valid_numbers = ['2438894546', '(718)891-1313', '234 435 9978', '(800)4261134']
#need to use loop to go through array, lab test does it for us
# puts valid_phone_number?('2438894546')
