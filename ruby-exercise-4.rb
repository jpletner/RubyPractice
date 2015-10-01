#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def last_word line
  line.split(/[\W]+/).last
end


snowy = File.read 'the-man-from-snowy-river.txt'


snowy = snowy.gsub "\n\n", "\n"

snowy_lines = snowy.lines

snowy_lines.each_slice(4) do |n|
    puts "#{last_word (n[0])}, #{last_word (n[2])}"
    puts "#{last_word (n[1])}, #{last_word (n[3])}"
end
               #####explanation####
#n is a new array of created by splitting up snowy_lines into sections of 4 (lines 0,1,2,&3)
#put the last word of the first and 3rd lines and the 2nd and 4th lines
#this will iterate through each section of 4 until complete


snowy_lines.each_slice(4) do |a| 
    lastword_array = a.map {|b| last_word(b)}
    puts "#{lastword_array[0]}, #{lastword_array[2]}"
    puts "#{lastword_array[1]}, #{lastword_array[3]}"
end

=begin

puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0

#rewrite this to use map and each rather than while
#note: you will find each_slice useful
while i < snowy_lines.count
  [0, 1, 4, 5].each do |n|
    first_word = last_word snowy_lines[i + n]
    second_word = last_word snowy_lines[i + n + 2]
    puts "#{first_word}, #{second_word}"
  end
  puts

  i += 9 # This is a short way of writing i = i + 1
end
=end