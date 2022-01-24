# MAKE THE FOLLOWING QUERIES USING ACTIVE RECORD

# Select from what line an order belongs
order_id = 1
OrderLine.where('order_id = ?', order_id)

# Select All orders from an Order line
order_line_id = 1
OrderLine.find(order_line_id)

# Select All orders that contains an X product
product_name = 'Awesome Leather Lamp'
Order.joins(order_lines: :product).where('products.name = ?', product_name)

# Select the total of sales of X product
product_name = 'Practical Copper Watch'
Product.joins(:order_lines).group('products.name').where('products.name = ?', product_name).sum('order_lines.total')

# Select All the customers who bought a product with price greater than $60, sorted by product name (include customer, product and order information)
Customer.joins(orders: [{ order_lines: :product }]).select('customers.first_name, products.name, orders.status').where('products.price > 60').order('products.name')

# Select All orders between dates X and Y
start_date = '2022-01-19'
end_date = '2022-01-21'
Order.where('date > ? AND date < ?', start_date, end_date)

# Count the total of customer who buy a product, with the amount of product ordered desc by total customer
product_name = 'Fantastic Bronze Coat'
Customer.joins(orders: [{ order_lines: :product }]).select('customers.first_name, sum(order_lines.quantity) as amount').group('products.name').where('products.name = ?', product_name).order('amount DESC')

# Select All the products a X Customer has bought ordered by date
customer_first_name = 'Hobert'
Customer.joins(orders: [{ order_lines: :product }]).select('products.name, orders.date').where('customers.first_name = ?', customer_first_name).order('orders.date')

# Select the total amount of products a X customer bought between 2 dates
customer_first_name = 'Rima'
start_date = '2022-01-01'
end_date = '2022-01-10'
Customer.joins(orders: [{ order_lines: :product }]).select('products.name, sum(order_lines.quantity) as total_amount, orders.date').group('customers.first_name').where('customers.first_name = ? AND orders.date > ? AND orders.date < ?', customer_first_name, start_date, end_date)

# Select what is the most purchased product
Product.joins(:order_lines).select('products.name, sum(order_lines.quantity) as total').group('products.name').order('total DESC').first

# Update products stock to 10 when stock is smaller than 3
Product.where('stock < 3').update_all(stock: 10)

# TEST VALIDATION

# Create one product without name
product = Product.new({
  sku: "1234-ABC",
  # name: ,
  description: "Some description",
  price: rand(10..100),
  stock: rand(1..25)
})
product.save!

# Update a product without price
product = Product.find(1)
product.update()

# Create user without name
product = Customer.new({
  # first_name: ,
  last_name: 'Last Name',
  address: '123 Street',
  phone: '123.456.7890'
})
product.save!
