#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def to_words s
  s.split /[\W]+/
end

def starts_with_vowel s
  #FIXME Errors on an empty string
  #w{a e i o u} is a quick way of writing ['a', 'e', 'i', 'o', 'u']
  %w{a e i o u}.include? s[0].downcase #Can you see why we use downcase here?
end

snowy = File.read 'the-man-from-snowy-river.txt'

snowy = snowy.gsub "\n\n", "\n"
snowy_lines = snowy.lines
snowy_words = to_words snowy

#Example
puts "Here are the lines of Snowy that start with a vowel:"
puts

snowy_lines.each do |line|
  puts line if starts_with_vowel line
end

puts
puts "Here are the lines of Snowy that have an odd number of words:"
#hint: a % b is the remainder after you divide a by b (called "mod" or "modulus")
# for example 17 % 2 == 1
puts

snowy_lines.each do |line|
    sl = (to_words line).count
    puts line if (sl % 2) == 1 
end

puts
puts "Here are all the rhyming pairs from the ends of the Snowy lines:"
puts
i = 0
while i < snowy_lines.count
    snowy_lines_last_word = (to_words snowy_lines[i]).last
    puts snowy_lines_last_word
    i += 2
end

