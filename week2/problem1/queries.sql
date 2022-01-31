-- 1) Select All Products
SELECT * FROM products LIMIT 5;

-- 2) Select All Clients
SELECT * FROM customers;

-- 3) Select from what line an order belongs
SELECT orders.id AS order_id, order_lines.id AS order_line_id
FROM orders
JOIN order_lines
ON orders.id = order_lines.order_id
WHERE orders.id = 7;

-- 4) Select All orders from an Order line
SELECT order_lines.id AS order_line_id, orders.id AS order_id, orders.status
FROM orders
JOIN order_lines
ON orders.id = order_lines.order_id
WHERE order_lines.id = 5;

-- 5) Select All orders a product has
SELECT products.name AS product_name, orders.id AS order_id, orders.status
FROM orders
JOIN order_lines
ON orders.id = order_lines.order_id
JOIN products
ON order_lines.product_id = products.id
WHERE products.name = 'Motorola G Power';

-- 6) Select the total of sales of X product
SELECT products.sku, products.name AS product_name, SUM(order_lines.total) AS total_sales
FROM products
JOIN order_lines
ON products.id = order_lines.product_id
GROUP BY products.sku, products.name
HAVING products.name = 'Google Pixel 5';

-- 7) Update a Product price by 1.5
SELECT * FROM products WHERE id = 10;
UPDATE products SET price = (SELECT price FROM products WHERE id = 10) * 1.5;
-- UPDATE products SET price = price * 1.5 WHERE id = 10;
SELECT * FROM products WHERE id = 10;

-- 8) Select All the customers who bought an X product
SELECT customers.first_name, customers.last_name, products.name AS product_name
FROM customers
JOIN orders
ON orders.customer_id = customers.id  
JOIN order_lines
ON order_lines.order_id = orders.id
JOIN products
ON order_lines.product_id = products.id
WHERE products.name = 'Motorola G Power';

-- 9) Select All orders between dates X and Y
SELECT * FROM orders WHERE date BETWEEN DATE('2022-01-15') and DATE('2022-01-17'); 

-- 10) Select All products with price greater than 4.5 (200)
SELECT * FROM products WHERE price > 200 LIMIT 5;

-- 11) Select All the products a Customer has bought
SELECT customers.first_name, customers.last_name, products.name AS product_name
FROM customers
JOIN orders
ON orders.customer_id = customers.id  
JOIN order_lines
ON order_lines.order_id = orders.id
JOIN products
ON order_lines.product_id = products.id
WHERE customers.first_name = 'Kasha';

-- 12) Select the total amount of products a X customer bought between 2 dates
SELECT customers.first_name, SUM(order_lines.quantity) AS total_products
FROM customers
JOIN orders
ON orders.customer_id = customers.id  
JOIN order_lines
ON order_lines.order_id = orders.id
WHERE date BETWEEN DATE('2022-01-15') and DATE('2022-01-17')
GROUP BY customers.first_name
HAVING customers.first_name = 'Jhon';

-- 13) Select what is the most purchased product
SELECT order_lines.product_id, products.name, SUM(order_lines.quantity) AS total_quantity 
FROM order_lines
JOIN products
ON products.id = order_lines.product_id
GROUP BY product_id, products.name
ORDER BY total_quantity DESC LIMIT 1;

-- 14) Delete an order
SELECT * FROM orders;
DELETE FROM orders WHERE id = 2;
SELECT * FROM orders;
