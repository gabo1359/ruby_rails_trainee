# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.destroy_all
Product.destroy_all
Order.destroy_all
OrderLine.destroy_all

10.times do |i|
  Customer.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.cell_phone
  })
end

sku_letters = ('AAA'..'ZZZ').to_a

20.times do |i|
  Product.create({
    sku: "#{rand(1000..9999)}-#{sku_letters[rand(0...sku_letters.length)]}",
    name: Faker::Commerce.product_name,
    description: Faker::Commerce.department,
    price: rand(10..100),
    stock: rand(1..25)
  })
end

10.times do |i|
  days = rand(1..23)
  Order.create({
    date: "2022-01-#{days < 10 ? "0#{days}" : days}",
    customer_id: rand(1..10),
    total: rand(100..999),
    status: ['delivered', 'undelivered'][rand(0..1)]
  })
end

15.times do |i|
  OrderLine.create({
    order_id: rand(1..10),
    product_id: rand(1..20),
    quantity: rand(1..5),
    price: rand(10..100),
    total: rand(100..999)
  })
end
