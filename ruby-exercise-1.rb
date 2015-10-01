poem = File.read('the-man-from-snowy-river.txt')
lines = poem.lines

#/\W+/ is a "regular expression" - a text-searching pattern.
#/\s+/ The slashes start and end the pattern. 
#\W means "any non-alphabetic character" and + means "repeated one or more times"

words = poem.split /\W+/

#Example
puts "There are #{words.count} words"
puts
puts "There are #{words.uniq.count} different words" 
puts 
#uniq removes duplicates

#Exercises
puts "The second through sixth words are #{words[1,5]}"
puts

firstline = lines[0]

firstlinewords = firstline.split /\W+/

puts "The first line has #{firstlinewords.count} words in it"
puts
first_stanza_lines = lines[0,8]

first_stanza = first_stanza_lines.join

first_stanza_words = first_stanza.split /\W+/

puts "The first stanza has #{first_stanza_words.count} words in it"
puts 

poem_shuffle = lines.shuffle

puts "Here is the poem with its lines randomly rearranged:  #{poem_shuffle.join}"