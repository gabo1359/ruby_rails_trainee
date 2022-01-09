require_relative './view.rb'

class Array
  def to_histogram
    hash = Hash.new(0)
    self.each { |element| hash[element] += 1 }
    hash
  end
end

# Testing our new method for Array class
test_array = [1, 4, 2, 2, 2, 3, 3, 1, 1, 2, 4, 2, 3, 3, 3, 3]
view(test_array)
