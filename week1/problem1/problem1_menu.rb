def problem1_menu(total_elements, alphabetical_increase)
  title()
  elements = asked_for_elements(total_elements)
  response(alphabetical_increase, elements)
end

def title
  puts
  puts "***********************************************"
  puts "*                  Problem 1                  *"
  puts "***********************************************"
  puts
end

def asked_for_elements(total_elements)
  puts "How many elements do you want to see (1 - #{total_elements})?"
  print ">> "
  elements = gets.chomp.to_i
  while elements <= 0 || elements > total_elements
    puts
    puts "Incorrect! Write a number between 1 and #{total_elements}:"
    print ">> "
    elements = gets.chomp.to_i
  end
  elements
end

def response(alphabetical_increase, elements)
  showed_elements = alphabetical_increase[0..(elements - 1)].join(", ") << "."
  puts
  puts "Showing #{elements} element#{"s" if elements > 1}: #{showed_elements}"
  puts
end
