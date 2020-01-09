# frozen_string_literal: true

# translates words to pig latin
$vowels = %w[a e i o u]

def translate(words)
  words_to_translate = words.split
  translated_words = []

  words_to_translate.each do |word|
    firstLetter = word[0]
    secondLetter = word[1]
    thirdLetter = word[2]
    letters = word.split

    translated_words.push word += 'ay' if isVowel firstLetter

    if (firstLetter == 'q') && (secondLetter == 'u')
      word = word[2..-1]
      translated_words.push word += "#{firstLetter}#{secondLetter}ay"

    elsif (isConsonant firstLetter) && (secondLetter == 'q') && (thirdLetter == 'u')
      word = word[3..-1]
      translated_words.push word += "#{firstLetter}#{secondLetter}#{thirdLetter}ay"

    elsif (isConsonant firstLetter) && (isConsonant secondLetter) && (isConsonant thirdLetter)
      word = word[3..-1]
      translated_words.push word += "#{firstLetter}#{secondLetter}#{thirdLetter}ay"

    elsif (isConsonant firstLetter) && (isConsonant secondLetter)
      word = word[2..-1]
      translated_words.push word += "#{firstLetter}#{secondLetter}ay"

    elsif isConsonant firstLetter
      word = word[1..-1]
      translated_words.push word += "#{firstLetter}ay"
    end
  end
  pig_latin_words = translated_words.join(' ')
  pig_latin_words
end

def isVowel(letter)
  if $vowels.include? letter
    true
  else
    false
  end
end

def isConsonant(letter)
  if !(isVowel letter)
    true
  else
    false
  end
end

