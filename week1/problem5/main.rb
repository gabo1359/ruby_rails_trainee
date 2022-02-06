# frozen_string_literal: false

require 'csv'
require 'date'

valid_dates = []
invalid_dates = []
csv_file = CSV.open('./events.csv')

puts
puts '***********************************************'
puts '*                  Problem 5                  *'
puts '***********************************************'
puts

puts "> Parsing your csv file\n\n"
csv_file.each do |row|
  begin
    date = DateTime.parse("#{row[1]} EST")
    valid_dates << [row[0], date]
  rescue
    puts "Error! Invalid date at #{csv_file.lineno} row"
    invalid_dates << [csv_file.lineno, row[0], row[1]]
  end
end
csv_file.close
puts

sort_valid_dates = valid_dates.sort_by { |_val1, val2| val2 }

CSV.open('./valid_dates.csv', 'w') do |csv|
  csv << %w[name date]
  sort_valid_dates.each do |element|
    csv << [element[0], element[1].to_s]
  end
  csv << []
end
puts '> Congrats! Your file with valid dates was created.'

CSV.open('./invalid_dates.csv', 'w') do |csv|
  csv << %w[row_number name date]
  invalid_dates.each do |element|
    csv << [element[0], element[1], element[2]]
  end
end
puts '> Congrats! Your file with invalid dates was created.'
puts

total_dates = valid_dates.length + invalid_dates.length
puts 'RESUMEN'
puts
puts "Correct number of dates: #{valid_dates.length}\t#{valid_dates.length * 100.0 / total_dates}%"
puts "Incorrect number of dates: #{invalid_dates.length}\t#{invalid_dates.length * 100.0 / total_dates}%"
puts "\t\t\t\t-----"
puts "Total number of dates: #{total_dates}\t100.0%"
puts
