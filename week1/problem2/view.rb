require 'ascii_charts'

def view(array)
  title()
  puts "> Your array is: #{array}"
  puts
  hash = array.to_histogram
  my_histogram(hash)
  puts
  ascii_charts_histogram(hash)
end
  
def title
  puts
  puts "***********************************************"
  puts "*                  Problem 2                  *"
  puts "***********************************************"
  puts
end

def my_histogram(hash)
  sorted_hash = hash.sort
  puts "> Its histogram is: #{hash}"
  puts
  sorted_hash.each { |key,value| puts "#{key}\t| #{"*" * value}"}
end

def ascii_charts_histogram(hash)
  puts "> With ASCII Charts its histogram is:"
  puts AsciiCharts::Cartesian.new(hash.sort, :bar => true, :hide_zero => true).draw
end
