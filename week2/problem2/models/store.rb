# frozen_string_literal: false

require_relative './vehicle'
require_relative './car'
require_relative './truck'

# Creating Store class
class Store
  def show
    puts
    puts '*****************************************************'
    puts '*          Available vehicles in the store          *'
    puts '*****************************************************'
    puts
    Vehicle.get_vehicles.each_with_index do |vehicle, index|
      puts "#{index + 1}) VEHICLE ID -> #{vehicle.id}\n\n"
      features(vehicle)
      puts
    end
  end

  def add
    type = ask_for_type
    puts "\nInsert the features for the #{type}:\n\n"
    properties = ask_for_features
    if type == 'truck'
      print "\tWheels > "
      wheels = gets.chomp.to_i
      properties[:wheels] = wheels
    end
    type == 'truck' ? Truck.new(properties) : Car.new(properties)
    puts "\n-> The vehicle was added!\n\n"
  end

  def remove
    show
    election = ask_for_election - 1
    Vehicle.remove_vehicle(election)
    puts
    puts "-> The chosen vehicle was removed!\n\n"
  end

  def order(object, extras = {})
    object.add_extras(extras)
    puts "\n**************************************************"
    puts '*                  Order detail                  *'
    puts "**************************************************\n\n"
    puts "Vehicle ID -> #{object.id}"
    puts "--------------------------------------------------\n\n"
    features(object)
    puts '--------------------------------------------------'
    object.extras
    puts "--------------------------------------------------\n\n"
    puts "   \tTOTAL\t: $#{object.total_price}.00\n\n"
  end

  private

  def features(vehicle)
    puts '   FEATURES:'
    puts
    puts "\tType\t: #{vehicle.class}"
    puts "\tBrand\t: #{vehicle.brand}"
    puts "\tColor\t: #{vehicle.color}"
    puts "\tWheels\t: #{vehicle.wheels}"
    puts "\tPrice\t: $#{vehicle.price}.00"
  end

  def ask_for_election
    puts "Which vehicle do you want to remove (1 - #{Vehicle.get_vehicles.length})?"
    print '> '
    number = gets.chomp.to_i
    while number < 1 || number > Vehicle.get_vehicles.length
      puts
      puts 'Incorrect! You should choose a correct number'
      print '> '
      number = gets.chomp.to_i
    end
    number
  end

  def ask_for_type
    puts
    puts 'What type of vehicle do you want to add (Car - Truck)?'
    print '> '
    type = gets.chomp.downcase
    while type != 'car' && type != 'truck'
      puts "\nIncorrect! You should choose a correct type"
      print '> '
      type = gets.chomp.downcase
    end
    type
  end

  def ask_for_features
    properties = Hash.new(0)
    print "\tBrand > "
    properties[:brand] = gets.chomp
    print "\tColor > "
    properties[:color] = gets.chomp
    print "\tPrice > "
    properties[:price] = gets.chomp.to_i
    properties
  end
end
