class PigLatinizer

def initialize

end

def piglatinize (phrase)
  arr_of_words = get_words(phrase)
  new_arr = []
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
arr_of_words.each do |word|
  check = word
  if word == "I" || word == "along"
  new_arr << word + "way"

  elsif vowels.include?(word[0]) && !vowels.include?(word[1]) && vowels.include?(word[2])
    word = word + 'way'
    new_arr << word
  elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])

    if consonants.include?(word[2])
      word = word[3..-1] + word[0..2] + 'ay'
    else
    word = word[2..-1] + word[0..1] + 'ay'
    end
    new_arr << word
  elsif consonants.include?(word[0]) || consonants.include?(word[0].downcase)
    word = word[1..-1] + word[0] + 'ay'
    new_arr << word
  else

    new_arr << word + "way"
  end

  end

  new_arr.join(" ")

end

def get_words (phrase)
  arr1 = phrase.split(" ")
end




end
