# frozen_string_literal: false

require_relative './vehicle'

# Creating Car class
class Car < Vehicle
  @@brands = %w[Tesla Mazda BMW Subaru Porsche Honda Lexus Toyota Hyundai Audi Nissan Volkswagen]

  def initialize(arg = {})
    super(arg)
    @wheels = 4
  end

  def self.create(number = 5)
    super(number, @@brands)
  end
end
