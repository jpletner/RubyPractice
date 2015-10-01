#Ruby Exercise #5

require "set"

snowy = File.read 'the-man-from-snowy-river.txt'
clancy = File.read 'clancy-of-the-overflow.txt'
words = File.read '/usr/share/dict/words'
snowy_words = snowy.split /[^\w']+/
clancy_words = clancy.split /[^\w']+/

#A set is a data structure that can have things added and removed, and you can ask if things are in it. You can make one from an array

dictionary = Set.new File.read('/usr/share/dict/words').lines.map{|w| w.chomp}

#We can treat arrays as sets, and use + for union, - for difference
puts "Words in snowy but not clancy:"
puts
puts (snowy_words.map{|a| a.downcase} - clancy_words.map{|a| a.downcase}).uniq.join ', '

puts
puts "... and the reverse:"
puts
puts (clancy_words.map{|a| a.downcase} - snowy_words.map{|a| a.downcase}).uniq.join ', '


#The above are great, but note that we get both 'There' and 'there' separately (and others). Fix that.

puts
puts "The longest word in snowy is:"

longest_snowy_word = snowy_words.max_by{|s| s.length }
longest_snowy_word2 = snowy_words.sort_by{|s| s.length}.last
snowy_long_word = snowy_words.max{|a, b| a.length <=> b.length}
clancy_long_word = clancy_words.max{|a, b| a.length <=> b.length}

puts longest_snowy_word

#Here, find the words that are in Snowy but not in the dictionary
puts

puts "Words in Snowy that are not in the dictionary: USING ARRAYS"

puts (snowy_words.map{|a| a.downcase} - dictionary.map{|a| a.downcase}).uniq.join ', '

puts

puts "Words in Snowy that are not in the dictionary: USING ARRAY & SETS"

dictionary_downcase = dictionary.map{|b| b.downcase}
snowy_words_downcase = snowy_words.map{|a| a.downcase}

not_in_dictionary =[]
snowy_words_downcase.each do |word| 
    not_in_dictionary.push(word) if not dictionary_downcase.include?(word)
end
puts not_in_dictionary.uniq.join(", ")

#Look up the documentation for Set to see how to test if a word is in it or not

puts
puts "Words in both Snowy and Clancy that are not in the dictionary:"

snowy_clancy = snowy_words + clancy_words

puts (snowy_clancy.map{|a| a.downcase} - dictionary.map{|a| a.downcase}).uniq.join ', '



#Change this so it uses an array rather than a set. Marvel at how much slower it is.
#You can time how long something takes to run in bash by doing time before the command. (Takes twice as long to convert a set to an array first before doing the comparison)
#So time ruby ruby-exercise-5.rb will tell you how long that took to run
