# sub_strings.rb

def count_substr_occurences(string, substring)
  return string.scan(/(?=#{substring})/).count
end

def substrings(word, subs)
#require 'pry'; binding.pry # pry break point
  return subs.reduce(Hash.new(0)) do |counter, substring|
    if word.include?(substring)
      counter[substring] = count_substr_occurences(word, substring)
    end
    counter
  end
end

word = "BeLowlow"
dictionary = %w(below down go going horn how howdy it i low own part partner sit)

p substrings(word.downcase, dictionary)
