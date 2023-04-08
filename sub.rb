dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it","i","low","own","part","partner","sit"]

#next time just manke the array with %w and type normally because it will automaticly consider arrays with teh %w to be an array of strings automaticly split my spaces

def substrings(text, dictionary)
  text = text.downcase.split

  substrings_words = []

  #this parts goes through each of the words provided by the user *text
  text.each do |word_text|
    #takes the words in dictionary that are substrings of word_text
    #what .select does is it returns the values that are evaluated to be true, for example
=begin

even_numbers = []

[1,2,3,4,5,6].each do |n|
  if n.even?
    even_numbers.push(n)
  end
end

even_numbers

or you could use select:

[1,2,3,4,5,6].select { |n| n.even? }

=end

substrings_words += dictionary.select { |word| word_text.include?(word) }
end

#makes the hash
substring_hash = Hash.new(0)
substrings_words.each do |word|
  substring_hash[word] += 1
end

puts("#{substring_hash}")
end

substrings("Howdy partner, sit down! How's it going?", dictionary)