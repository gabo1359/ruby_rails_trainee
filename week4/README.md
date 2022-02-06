# Challenge Week 4

## Store WEB coding challenge

This challenge is designed to put your skills to the test designing and building an app to manage a small snacks store. You can reuse the past weeks code, create views to render information.
You will need to add extra fields or tables on your database schema to match with the requirements

## Requirements

The app should allow:

* Admin:
  * Adding/Removing products and set their stock quantity.
  * Modify the price of the products.

* Frontend:
  * Buy a product.
  * Buying a product should reduce its stock.
  * Keep a log of all the purchases.
  * Like a product.
  * Obtain a list of all the available products.
  * Product search by name.

## Security requirements

### Add devise gem for authentication

* Only logged in users can add reviews on products.
* Everyone (logged in or not logged in) can add products to the cart.
* Only logged in  users can buy a product.
* Only logged in users could *like* a product.
* Everyone (logged in or not logged in) can get a list of all the products.
* Everyone (logged in or not logged in) can use the search feature.

### Keep in mind

* Structure your controllers by roles.
* You can use any gems you like as long as you can justify their use.
* You may use any kind of database you like, our recommendation is to use PostgreSQL.
* Use git and do small commits to facilitate the evaluation of progress.
* Include a *readme.md* file with instructions on how to setup your project locally to test it.
* Upload your solution to Bitbucket.
* Upload your solution to Heroku.
* You can use [Faker](https://github.com/faker-ruby/faker) to generate the data.
* If a product is added a second time, quantity should be sum and not replaced.
* Use css libraries to beautify your views.
* **Don't use scaffold**.
  
<hr/>

![logo](https://cdn-assets-cloud.frontify.com/s3/frontify-cloud-files-us/eyJwYXRoIjoiZnJvbnRpZnlcL2FjY291bnRzXC9kYlwvMTcwODAwXC9wcm9qZWN0c1wvMjA4ODIwXC9hc3NldHNcLzA3XC80NTQ2OTk2XC9mY2UwOTQ5ZjhkMzZhMWRhNmQ5YzYyMWE2Zjg3YjEwYS0xNTk0ODYwMDIzLnBuZyJ9:frontify:mJqQOmVZ9oqFYzejiZy5xX9TWc5XwEbLlGNN7-ooJ7s?width=200)