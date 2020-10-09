# sub_strings.rb

#def substrings(word, subs)
#require 'pry'; binding.pry # pry break point
#  subs.reduce(Hash.new(0)) do |counter, substring|
#    counter[substring] += 1
#  end
#  return counter
#end

#word = "below"
#dictionary = 

#p substrings(word, dictionary)
dictionary = %w(below down go going horn how howdy it i low own part partner sit below)

substring_counts = dictionary.reduce(Hash.new(0)) do |counter, substring|
  counter[substring] += 1
  counter
end

p substring_counts
