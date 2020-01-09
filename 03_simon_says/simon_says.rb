# frozen_string_literal: true

def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, repeats = 2)
  ("#{input} " * repeats).strip!
end

def start_of_word(word, numCharacters)
  word[0..numCharacters - 1]
end

def first_word(sentence)
  words = sentence.split
  words[0]
end

def titleize(title)
  littleWords = %w[a the or and over in of an]
  words = title.split
  puts words[0]
  capitalized_title_words = []
  words.each do |word|
    if !(littleWords.include? word) || ((littleWords.include? word) && word == words[0] && !(capitalized_title_words.include? word.capitalize))
      capitalized_title_words.push word.capitalize
    else
      capitalized_title_words.push word
    end
  end
  capitalized_title = capitalized_title_words.join(' ')
  capitalized_title
end
