# Challenge Week 2

## 1 - Database basics

### Using the [inventory.png](https://applaudostudios-my.sharepoint.com/:i:/r/personal/cmedrano_applaudostudios_com/Documents/Rails%20TP/week-2/homework/inventory.png?csf=1&web=1&e=ttfUoS) database diagram

- Create the SQL Queries required to replicate the DB Schema from the image in your DBMS
- Make sure to create the relations trough the tables
- Insert at least 20 products, 5 customers, 10 orders with their order details. Make sure to populate the database with random (but realistic) data!

#### When the database is populated, make the following queries

- Select All Products
- Select All Clients
- Select from what line an order belongs
- Select All orders from an Order line
- Select All orders a product has
- Select the total of sales of X product
- Update a Product price by 1.5
- Select All the customers who bought an X product
- Select All orders between dates X and Y
- Select All products with price greater than 4.5
- Select All the products a Customer has bought
- Select the total amount of products a X customer bought between 2 dates
- Select what is the most purchased product
- Delete an order

## 2 - Car sales store (POO)

Requirements:

### Vehicles

1. Create the following vehicle types: `Car` and `Truck`.

2. Each type should share common attributes as:

   - Wheels number
   - Color
   - Brand
   - Price

3. Also include a method to build 5 vehicles of each type.

### Extras

1. Create a method to list vehicle extras.
2. Create a method to import extras to a vehicle (each one with price).
   - Radio
   - AC
   - Sunroof
   - Leather seats
   - Power windows

### Store

1. It should have a method which lists all vehicles from the store.
2. Additional methods to add/remove vehicles from the store (no duplicated vehicle identifier are allowed).
3. Print vehicle features and extras (like an order detail). This method should receive a car object and an extras collection.

Example output:

```ruby
Detail:


      Quote for the car: 44820416-cb16-44d9-bd51-4bac87ae2a4c

      Features

      color: black

      brand: Mercedes

      wheels:

      price: $42000.00


------------------------------------------------------------
Extras:

      Leather Seats ($900.00)


      AC ($500.00)


      Radio ($64.00)


------------------------------------------------------------
      Total: $43464.00

```

<hr/>

![logo](https://cdn-assets-cloud.frontify.com/s3/frontify-cloud-files-us/eyJwYXRoIjoiZnJvbnRpZnlcL2FjY291bnRzXC9kYlwvMTcwODAwXC9wcm9qZWN0c1wvMjA4ODIwXC9hc3NldHNcLzA3XC80NTQ2OTk2XC9mY2UwOTQ5ZjhkMzZhMWRhNmQ5YzYyMWE2Zjg3YjEwYS0xNTk0ODYwMDIzLnBuZyJ9:frontify:mJqQOmVZ9oqFYzejiZy5xX9TWc5XwEbLlGNN7-ooJ7s?width=200)
