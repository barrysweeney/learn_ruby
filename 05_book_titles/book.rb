# frozen_string_literal: true

# applies appropriate capitalization to book titles
class Book
  attr_reader :title
  def title=(name)
    littleWords = %w[a the or and over in of an]
    words = name.split
    puts words[0]
    capitalized_title_words = []
    words.each do |word|
      if !(littleWords.include? word) || ((littleWords.include? word) && word == words[0] && !(capitalized_title_words.include? word.capitalize))
        capitalized_title_words.push word.capitalize
      else
        capitalized_title_words.push word
      end
    end
    @title = capitalized_title_words.join(' ')
  end
end
