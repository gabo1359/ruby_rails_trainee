# frozen_string_literal: false

def view(array)
  title(array)
  print '> Select one option (1 - 4): '
  option = gets.chomp.to_i
  while option <= 0 || option > 4
    puts "\nIncorrect! Select an option between 1 and 4:"
    print '> '
    option = gets.chomp.to_i
  end
  puts
  response(option, array)
end

def title(array)
  puts
  puts '***********************************************'
  puts '*                  Problem 3                  *'
  puts '***********************************************'
  puts
  puts "> Your data is: #{array}"
  puts
  options_panel
end

def options_panel
  puts 'What option do you want to see?'
  puts
  puts '1. Mean'
  puts '2. Median'
  puts '3. Mode'
  puts '4. Mean, median and mode'
  puts
end

def response(option, array)
  case option
  when 1 then puts "-> MEAN: #{mean(array)}"
  when 2 then puts "-> MEDIAN: #{median(array)}"
  when 3 then puts "-> MODE: #{mode(array)}"
  when 4
    puts "-> MEAN  : #{mean(array)}"
    puts "-> MEDIAN: #{median(array)}"
    puts "-> MODE  : #{mode(array)}"
  end
  puts
end
