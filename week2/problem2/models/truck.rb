# frozen_string_literal: false

require_relative './vehicle'

# Creating Truck class
class Truck < Vehicle
  @@brands = %w[Toyota Chevrolet Ford Nissan Mercedes-Benz Ram GMC Isuzu Volvo Freightliner]

  def self.create(number = 5)
    super(number, @@brands)
  end
end
