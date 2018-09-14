# B-Amazon-MySQL
Amazon type application that runs on node JS and a MySQL backend
# Node.js & MySQL

## Overview

In this application, you get an Amazon-like storefront with the MySQL. The app takes in orders from customers and depletes stock from the store's inventory. As a bonus the app can track product sales across the store's departments and then provide a summary of the highest-grossing departments in the store.

* Include screenshots (or a video) of typical user flows through your application (for the customer and if relevant the manager/supervisor). This includes views of the prompts and the responses after their selection (for the different selection options).

* Include any other screenshots you deem necessary to help someone who has never been introduced to your application understand the purpose and function of it. This is how you will communicate to potential employers/other developers in the future what you built and why, and to show how it works. 

* Because screenshots (and well-written READMEs) are extremely important in the context of GitHub, this will be part of the grading.

If you haven't written a markdown file yet, [click here for a rundown](https://guides.github.com/features/mastering-markdown/), or just take a look at the raw file of these instructions.


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

![Image Initial Customer App Launch](https://github.com/jhwillia7/B-Amazon-MySQL/blob/master/images/Customer_View_initial.PNG)

 5. Once you have placed the order, the application checks if the store has enough of the product to meet the request.

   * If not, the app logs a phrase like `Insufficient quantity!`, and then prevent the order from going through.

8. However, if the store _does_ have enough of the product, we fulfill the your order.
   * This means updating the SQL database to reflect the remaining quantity.
   * Once the update goes through, show the customer the total cost of their purchase.

---
### Customer Experience Video

https://drive.google.com/file/d/1Avh-fMCkhjeisYv6qhIcQAwTjUk1TxEb/view

---

### Challenge #2: Manager View (Next Level)

* I created a new Node application called `bamazonManager.js`. Running this application will:

  * List a set of menu options:

    * View Products for Sale
    
    * View Low Inventory
    
    * Add to Inventory
    
    * Add New Product

  * If you as a manager select `View Products for Sale`, the app will list every available item: the item IDs, names, prices, and quantities.

  * If you as a manager select `View Low Inventory`, the app will list all items with an inventory count lower than five.

  * If you as a manager select `Add to Inventory`, the app will display a prompt that will let the manager "add more" of any item currently in the store.

  * If you as a manager select `Add New Product`, the app allow the manager to add a completely new product to the store.

- - -

### Manager Experience Video

https://drive.google.com/file/d/15oYwrmHhH86Ov1-B21UEJEYXjfCvYo3w/view

- - -


### Add To Your Portfolio

After completing the homework please add the piece to your portfolio. Make sure to add a link to your updated portfolio in the comments section of your homework so the TAs can easily ensure you completed this step when they are grading the assignment. To receive an 'A' on any assignment, you must link to it from your portfolio.

- - -
