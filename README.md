# B-Amazon-MySQL
Amazon type application that runs on node JS and a MySQL backend
## Technologies used: Node.js, MySQL, Inquirer, Cli-Table

## Overview

In this application, you get an Amazon-like storefront with the MySQL. The app takes in orders from customers and depletes stock from the store's inventory. As a bonus the app can track product sales across the store's departments and then provide a summary of the highest-grossing departments in the store.

* I have included and two video for the first two challenges, I chose not to complete the third challenge.


### Challenge #1: Customer View (Minimum Requirement)

1. I leverage a MySQL Database called `bamazon`.

2. I created a Table inside of that database called `products`.

3. The products table should have each of the following columns:

   * item_id (unique id for each product)

   * product_name (Name of product)

   * department_name

   * price (cost to customer)

   * stock_quantity (how much of the product is available in stores)

 4. Upon launching the bamazonCustomer.js file the app prompts users with two messages.

   * The first asks you to select the product you would like to buy.
   * The second message asks how many units of the product you would like to buy.

---
![Image Initial Customer App Launch](https://github.com/jhwillia7/B-Amazon-MySQL/blob/master/images/Customer_View_initial.PNG)
---

 5. Once you have placed the order, the application checks if the store has enough of the product to meet the request.

   * If not, the app logs a phrase like `Insufficient quantity!`, and then prevent the order from going through.

---
   ![Image Customer Making Purchase Insufficient Qty Shown](https://github.com/jhwillia7/B-Amazon-MySQL/blob/master/images/insufficient_quantity.PNG)

---

8. However, if the store _does_ have enough of the product, we fulfill the your order.
   * This means updating the SQL database to reflect the remaining quantity.
   * Once the update goes through, show the customer the total cost of their purchase.

---
   ![Image Customer Making Purchase Successfully Cost Shown](https://github.com/jhwillia7/B-Amazon-MySQL/blob/master/images/Customer_Buy_Nike.PNG)

---
### Customer Experience Video

https://drive.google.com/file/d/1Avh-fMCkhjeisYv6qhIcQAwTjUk1TxEb/view

---

### Challenge #2: Manager View (Next Level)

* I created a new Node application called `bamazonManager.js`. Running this application will:

  * List a set of menu options:

    * View Products for Sale

---
   ![Image Manager View Product For Sale](https://github.com/jhwillia7/B-Amazon-MySQL/blob/master/images/managerview_prod_4sale.PNG)

---
    
    * View Low Inventory

---
   ![Image Manager View Product with Low Inventory](https://github.com/jhwillia7/B-Amazon-MySQL/blob/master/images/managerview_low_invent.PNG)

---
    
    * Add to Inventory

---
   ![Image Manager Action Add to Inventory](https://github.com/jhwillia7/B-Amazon-MySQL/blob/master/images/add_to_invetn.PNG)

---
    
    * Add New Product

---
   ![Image Manager Action Add New Product](https://github.com/jhwillia7/B-Amazon-MySQL/blob/master/images/addnew_prod.PNG)

---

  * If you as a manager select `View Products for Sale`, the app will list every available item: the item IDs, names, prices, and quantities.

  * If you as a manager select `View Low Inventory`, the app will list all items with an inventory count lower than five.

  * If you as a manager select `Add to Inventory`, the app will display a prompt that will let the manager "add more" of any item currently in the store.

  * If you as a manager select `Add New Product`, the app allow the manager to add a completely new product to the store.

- - -

### Manager Experience Video

https://drive.google.com/file/d/15oYwrmHhH86Ov1-B21UEJEYXjfCvYo3w/view

- - -

