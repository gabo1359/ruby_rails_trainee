# frozen_string_literal: false

require_relative './models/store'
require_relative './models/car'
require_relative './models/truck'

car_properties = { color: 'red', brand: 'Tesla', price: 85_000 }
truck_properties = { wheels: 10, color: 'blue', brand: 'Volvo', price: 120_000 }

car = Car.new(car_properties)
truck = Truck.new(truck_properties)

# 1) Creating the vehicles
puts
p car
puts
p truck
puts

# 2) Creating random vehicles of each type
# puts
# p Car.create()
# puts
# p Truck.create(2)
# puts

# 3) Adding extras to a vehicle
# car.extras
# car_extras = { extra1: 1500, extra2: 500, extra3: 75 }
# car.add_extras(car_extras)
# car.extras
# puts

# 4) Listing all vehicles from the store
# store = Store.new()
# store.show
# Car.create(2)
# store.show

# 5) Adding vehicles from the store
# store = Store.new()
# store.show
# store.add
# store.show

# 6) Removing vehicles from the store
# store = Store.new()
# Car.create(2)
# store.remove
# store.show

# 7) Printing order detail
# store = Store.new()
# store.order(car)
# truck_extras = { extra1: 2500, extra2: 1000, extra3: 250 }
# store.order(truck, truck_extras)
