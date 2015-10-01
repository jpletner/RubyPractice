snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines
split_pattern = /[\W]+/
snowy_words = snowy.split split_pattern


#Example
puts "Here are the lines of Snowy that start with a vowel:"

snowy_lines.each do |line|
  c = line[0].downcase
  puts '  ' + line if c == 'a' || c == 'e' || c == 'o' || c == 'u'
end

puts

#hint: a % b is the remainder after you divide a by b (called "mod" or "modulus")
# for example 17 % 2 == 1

puts "Here are the lines of Snowy that have an odd number of words:"

sl = (snowy_lines[0].split /\W+/).count
puts sl
puts sl.to_s + snowy_lines[0] if (sl % 2) == 0

puts 
snowy_lines.each do |line|
    sl = (line.split /\W+/).count
    puts line if (sl % 2) == 1 
end

puts "Here is Snowy double-spaced:"

snowy_lines.each do |line|
    puts line
    puts 
end

puts "Here is Snowy with extra spaces between the words:"
snowy_lines.each do |line|
    doublespace_sl = (line.split /\W+/).join('  ')
    puts doublespace_sl
end

puts
puts "Here are all the rhyming pairs from the ends of the Snowy lines:"

i = 0

while i < snowy_lines.count
    snowy_lines_last_word = (snowy_lines.each {|line| line.split /\W+/}).last
    puts snowy_lines_last_word
    i += 2
end
