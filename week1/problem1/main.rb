require_relative './view.rb'

alphabetical_increase =  ("aa".."zz").to_a
total_elements = alphabetical_increase.length

view(total_elements, alphabetical_increase)
