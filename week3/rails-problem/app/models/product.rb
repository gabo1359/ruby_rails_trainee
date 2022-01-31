class Product < ApplicationRecord
  has_many :order_lines

  validates :sku, presence: true, format: { with: /\b\d{4}-\D{3}\b/, message: "Wrong SKU" }, uniqueness: true     
  validates :name, presence: { message: "must be given please" }, length: { minimum: 3 }
  validates :description, presence: true
  validates :price, presence: true, :inclusion => 10..100
  validates :stock, presence: true, numericality: { only_integer: true }, inclusion: { in: (1..25).to_a,
    message: "%{value} is not a valid stock" }

  # Create filter name (default), and by price
  scope :filter_by_price, ->(option, price) { option == 'less' ? where('price < ?', price) : where('price > ?', price) }
  # TEST -> Product.filter_by_price('less', 50) // Product.filter_by_price('greater', 50)

  # Select what is the most purchased product
  scope :most_purchased, -> { joins(:order_lines).select('products.name, sum(order_lines.quantity) as total')
  .group('products.name').order('total DESC').first.name }
  # TEST -> Product.most_purchased

  # Search product that contains words greater than two letters
  scope :large_name, -> { all.select { |item| item.name.length > 2 } } # where.('name LIKE ?', '__%')
  # TEST -> Product.large_name
end
