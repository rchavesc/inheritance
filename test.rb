puts 'Write a phrase, and we will tell you how many times each word was used.'

text = gets.chomp
words = text.split(' ')

frequencies = Hash.new(0)

words.each do |word|
  frequencies[word] += 1
end

frequencies = frequencies.sort_by { |key, count| count }
print frequencies
print frequencies.reverse!