# frozen_string_literal: false

require 'securerandom'

# Creating Vehicle class
class Vehicle
  attr_reader :id, :wheels, :color, :brand, :price, :total_price

  @@vehicles = []

  def initialize(arg = {})
    @id = SecureRandom.uuid
    @wheels = arg[:wheels]
    @color = arg[:color]
    @brand = arg[:brand]
    @price = arg[:price]
    @extras = Hash.new(0)
    @total_price = @price
    @@vehicles << self
  end

  def self.create(number, brands)
    i = 0
    vehicles = []
    colors = %w[white black gray silver red blue brown green beige orange gold yellow purple]
    while i < number
      properties = Hash.new(0)
      properties[:wheels] = (rand(2..6) * 2)
      properties[:color] = colors[rand(0...colors.length)]
      properties[:brand] = brands[rand(0...brands.length)]
      properties[:price] = (rand(10..200) * 1000)
      vehicles << properties
      i += 1
    end
    vehicles.map { |instance| self.new(instance) }
  end

  def extras
    puts
    puts '   EXTRAS:'
    puts
    if @extras == {}
      return puts "\tThere are no any extras."
    end

    @extras.each { |key, value| puts "\t#{key}\t: $#{value}.00" }
  end

  def add_extras(extras)
    extras.each do |key, value|
      @extras[key] = value
      @total_price += value
    end
  end

  def self.inherited(subclass)
    self.methods(false).each do |m|
      subclass.instance_eval { eval("undef :#{m}") }
    end
  end

  def self.get_vehicles
    @@vehicles
  end

  def self.remove_vehicle(index)
    @@vehicles.delete_at(index)
  end

  def self.add_vehicle(vehicle)
    @@vehicles << vehicle
  end
end
