# Challenge Week 3

## 1 - Database basics

### Using the [inventory.png](https://applaudostudios.sharepoint.com/:i:/r/sites/RubyonRailsTraineeProgram/Shared%20Documents/Execution/week-2/homework/inventory.png?csf=1&web=1&e=ZflPlo)  database diagram

- Replicate the DB Schema from the image in your DBMS using migrations
- Make sure to create the relations trough the tables
- Insert at least 20 products, 5 customers, 10 orders with their order details. to do this use seeders
  - for products
    - use stock between 1 and 25
    - Price should be between 10 and 100

#### When the database is populated

##### Make the following queries using active record

- Select from what line an order belongs
- Select All orders from an Order line
- Select All orders that contains an `X` product
- Select the total of sales of X product
- Select All the customers who bought a product with price greater than $60, sorted by product name (include customer, product and order information)
- Select All orders between dates X and Y
- Count the total of customer who buy a product, with the amount of product ordered desc by total customer,
- Select All the products a X Customer has bought ordered by date
- Select the total amount of products a X customer bought between 2 dates
- Select what is the most purchased product
- Update products stock to 10 when stock is smaller than 3

##### Make the following using models scope

- Select All orders between dates `X` and `Y` for X Customer
- Create filter name (default), and by price.
- Select what is the most purchased product
- Search product that contains words greater than two letters
  
##### Add model validation use some custom errors message for stock and name for product

##### Test validation

- Create one product without name
- Update a product without price
- Create user without name

<hr/>

![logo](https://cdn-assets-cloud.frontify.com/s3/frontify-cloud-files-us/eyJwYXRoIjoiZnJvbnRpZnlcL2FjY291bnRzXC9kYlwvMTcwODAwXC9wcm9qZWN0c1wvMjA4ODIwXC9hc3NldHNcLzA3XC80NTQ2OTk2XC9mY2UwOTQ5ZjhkMzZhMWRhNmQ5YzYyMWE2Zjg3YjEwYS0xNTk0ODYwMDIzLnBuZyJ9:frontify:mJqQOmVZ9oqFYzejiZy5xX9TWc5XwEbLlGNN7-ooJ7s?width=200)