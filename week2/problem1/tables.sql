DROP TABLE customers, orders, products, order_lines;
DROP TYPE status_type;

CREATE TABLE customers (
  id          SERIAL PRIMARY KEY,
  first_name  VARCHAR (50) NOT NULL,
  last_name   VARCHAR (50) NOT NULL,
  address     VARCHAR (100) NOT NULL,
  phone       VARCHAR (100) UNIQUE NOT NULL
);

INSERT INTO customers (first_name, last_name, address, phone)
  VALUES ('Debra', 'Burks', '9273 Thome Ave.', '(916) 381-6003');
INSERT INTO customers (first_name, last_name, address, phone) 
  VALUES ('Kasha', 'Todd', '910 Vine Street', '(716) 986-3359');
INSERT INTO customers (first_name, last_name, address, phone) 
  VALUES ('Tameka', 'Fisher', '107 River Dr.', '(801) 211-0634');
INSERT INTO customers (first_name, last_name, address, phone) 
  VALUES ('Daryl', 'Spence', '15 Brown St.', '(721) 143-8462');
INSERT INTO customers (first_name, last_name, address, phone) 
  VALUES ('Jhon', 'Newman', '8550 Spruce Drive', '(752) 649-0583');

CREATE TYPE status_type AS ENUM ('delivered', 'not delivered');

CREATE TABLE orders (
  id          SERIAL PRIMARY KEY,
  date        DATE DEFAULT CURRENT_DATE,
  customer_id INTEGER,
  total       DECIMAL,
  status      status_type,
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO orders (customer_id, total, status) VALUES (1, 1000.00, 'delivered');
INSERT INTO orders (customer_id, total, status) VALUES (5, 990.99, 'not delivered');
INSERT INTO orders (customer_id, total, status) VALUES (2, 1540.56, 'delivered');
INSERT INTO orders (customer_id, total, status) VALUES (4, 2050.65, 'delivered');
INSERT INTO orders (customer_id, total, status) VALUES (5, 560.65, 'delivered');
INSERT INTO orders (customer_id, total, status) VALUES (2, 470.50, 'not delivered');
INSERT INTO orders (customer_id, total, status) VALUES (3, 1840.87, 'delivered');
INSERT INTO orders (customer_id, total, status) VALUES (2, 3950.90, 'not delivered');
INSERT INTO orders (customer_id, total, status) VALUES (1, 1010.25, 'not delivered');
INSERT INTO orders (customer_id, total, status) VALUES (4, 2290.67, 'not delivered');

CREATE TABLE products (
  id          SERIAL PRIMARY KEY,
  sku         VARCHAR (9) UNIQUE NOT NULL,
  name        VARCHAR (50) NOT NULL,
  description VARCHAR (100) NOT NULL,
  price       DECIMAL NOT NULL,
  stock       INTEGER NOT NULL
);

INSERT INTO products (sku, name, description, price, stock)
  VALUES ('1010-MIW', 'iPhone 12', 'Pro Max 128GB', 759.05, 10);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('7384-HSY', 'iPhone 11', '64GB 8GB RAM', 332.10, 7);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('2630-RET', 'iPhone XR', '64GB Unlocked', 264.60, 2);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('0923-HYG', 'iPhone 8', '128GB Unlocked', 151.05, 25);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('6456-VBN', 'iPhone 9', 'Plus 64GB', 208.05, 4);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('7356-PLO', 'iPhone SE', '2nd Gen 64GB', 194.00, 1);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('4567-YTR', 'iPhone XS', 'Max 128GB', 300.90, 6);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('9578-EWS', 'Galaxy S8', 'SM-G950V 64GB', 139.00, 18);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('2536-FST', 'Galaxy S7', 'SM-G930V 32GB', 84.00, 15);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('7865-MNB', 'Google Pixel 2', '128GB Unlocked', 89.00, 13);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('3456-KYD', 'Galaxy Note 8', 'SM-N950V 64GB', 154.00, 14);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('9037-VFC', 'Google Pixel 5', 'XL 128GB', 499.00, 9);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('6483-UHB', 'LG G7', 'ThinQ 32GB', 73.00, 7);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('6785-OJR', 'OnePlus 7T', '64GB Unlocked', 129.00, 2);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('6409-QWS', 'Motorola G7', 'Power 32GB', 65.00, 7);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('3564-UCZ', 'LG Stylo 6', '32GB Unlocked', 99.00, 8);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('2673-TGB', 'Galaxy S20', 'FE 5G 128GB', 290.00, 11);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('5342-JHT', 'LG Velvet', '5G 674GB', 148.00, 3);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('1324-ASZ', 'Google Pixel 3a', 'XL 32GB', 88.00, 16);
INSERT INTO products (sku, name, description, price, stock)
  VALUES ('6389-HGF', 'Motorola G Power', '64GB Unlocked', 105.00, 8);

CREATE TABLE order_lines (
  id          SERIAL PRIMARY KEY,
  order_id    INTEGER NOT NULL,
  product_id  INTEGER NOT NULL,
  quantity    INTEGER NOT NULL,
  price       DECIMAL NOT NULL,
  total       DECIMAL NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (1, 20, 3, 105.00, 315.00);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (3, 1, 2, 759.05, 1518.10);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (6, 2, 4, 245.00, 980.00);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (10, 17, 5, 75.50, 377.50);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (1, 6, 1, 987.54, 987.54);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (2, 9, 9, 99.00, 891.00);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (6, 12, 5, 365.89, 1829.45);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (8, 5, 4, 87.99, 351.96);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (3, 3, 2, 545.00, 1090.00);
INSERT INTO order_lines (order_id, product_id, quantity, price, total)
  VALUES (7, 20, 7, 56.90, 398.30);
