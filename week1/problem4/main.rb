# frozen_string_literal: false

puts
puts '***********************************************'
puts '*                  Problem 4                  *'
puts '***********************************************'
puts

# Reading and transforming the text
text = File.read('./strings.txt').squeeze(' ').gsub("\n\n", '@').gsub("\n", ' ')
text = text.gsub('@', "\n\n").gsub(' .', '.').gsub('..', '. ')
text = text[0...-1]

# Creating a new file with the correct text
File.write('new_strings.txt', text)
puts '> Congrats! The new file with the correct text was created.'
puts

# Creating the methods
def response(occurrences, pattern, string)
  downcase_occurrences = occurrences.map(&:downcase)
  hash = Hash.new(0)
  downcase_occurrences.each { |occurrence| hash[occurrence] += 1 }
  puts
  puts "> The string '#{pattern}' appeared #{occurrences.length} times at the #{string} of a word."
  puts "> There are #{hash.length} words that #{string} with '#{pattern}', these words are:\n\n"
  puts "#{hash.keys}\n\n"
end

def begin_occurences(text, pattern)
  auxiliar_string = "[#{pattern[0].downcase}#{pattern[0].upcase}]"
  occurrences = text.scan(/\b#{auxiliar_string}is\w+/)
  response(occurrences, pattern, 'start')
end

def end_occurrences(text, pattern)
  occurrences = text.scan(/\w+#{pattern}\b/)
  response(occurrences, pattern, 'end')
end

# Times when the word 'dis' is at the start of a word
begin_occurences(text, 'dis')
# Times when ing is at the end of a word
end_occurrences(text, 'ing')
