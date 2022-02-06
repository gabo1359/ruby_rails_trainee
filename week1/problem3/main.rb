# frozen_string_literal: false

require_relative './view'

def mean(array)
  array.sum.to_f / array.length
end

def median(array)
  sorted_array = array.sort
  len_array = array.length
  if len_array.odd?
    sorted_array[len_array / 2]
  else
    (sorted_array[len_array / 2] + sorted_array[len_array / 2 - 1]) / 2.0
  end
end

def mode(array)
  hash = Hash.new(0)
  array.each { |element| hash[element] += 1 }
  sorted_array = hash.sort_by { |_k, v| v }
  mode_elements = []
  max_count = sorted_array[-1][1]
  sorted_array.each { |k, v| mode_elements << k if v == max_count }
  mode_elements.join(' - ')
end

# Testing our new methods
test_array = [1, 1, 5, 2, 3, 4, 5, 1, 5]
view(test_array)
