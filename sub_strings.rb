# sub_strings.rb

def substrings(word, subs)
#require 'pry'; binding.pry # pry break point
  substring_counts = subs.reduce(Hash.new(0)) do |counter, substring|
    if word.include?(substring)
      counter[substring] = word.scan(/(?=#{substring})/).count
	end
    counter
  end
  return substring_counts
end

word = "BeLowlow"
dictionary = %w(below down go going horn how howdy it i low own part partner sit)

p substrings(word.downcase, dictionary)
