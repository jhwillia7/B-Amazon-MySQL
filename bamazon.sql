DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(45) NULL,
    department_name VARCHAR (45) NULL,
    price DECIMAL (10,2) NULL,
    stock_quantity INT NULL,
    product_sales DECIMAL (10,2) NULL,
    PRIMARY KEY (item_id)
);

CREATE TABLE departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR (45) NOT NULL,
    over_head_costs DECIMAL (10,2),
    PRIMARY KEY (department_id)
);

INSERT INTO departments (department_name, over_head_costs)
VALUES ("Electronics", 12000), 
("Clothing and Shoes", 4000),
("Home and Garden and Kitchen", 8000),
("Beauty and Health", 9000);


INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales )
VALUES ("Samsung HD TV", "Electronics",750.00, 6, 13000),
("Canon Powershot", "Electronics", 75.00, 3, 12500),
("HP Office Pro Printer", "Electronics", 250, 7, 14000),
("Dell All-In-One PC", "Electronics", 550, 3, 12000),
("Shiatsu Vibra Chair", "Electronics", 150, 5, 12100);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales )
VALUES ("Nike Sneakers", "Clothing and Shoes",120.00, 3, 4400),
("NorthFace Rain Coat", "Clothing and Shoes", 275.00, 6, 4500),
("Patagonia Hiking Boots", "Clothing and Shoes", 175.00, 2, 4800),
("Columbia Sport Coat", "Clothing and Shoes", 375.00, 2, 5100);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales )
VALUES ("Vitamix Power Blender", "Home and Garden and Kitchen", 350.00, 3, 8400),
("Kitchen Aid Standing Mixer", "Home and Garden and Kitchen", 250.00, 3, 8600),
("Philips Air Fryer", "Home and Garden and Kitchen", 650.00, 2, 8400),
("ANOVA Sous Vide Wand", "Home and Garden and Kitchen", 150.00, 6, 8200);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales )
VALUES ("Nike 15lb Kettlebell", "Beauty and Health", 50.00, 6, 9000),
("Reprise Yoga Mat", "Beauty and Health", 20.00, 3, 9100),
("Medicine Ball", "Beauty and Health", 10.00, 7, 9100),
("Indian Charcoal Mud Mask", "Beauty and Health", 15.00, 2, 9200),
("Ultraviolet Teeth Whitening System", "Beauty and Health", 35.00, 2, 9200),
("Adjustable Dumb Bell", "Beauty and Health", 50.00, 3, 9300);

    SELECT B. department_id, A.department_name, b.over_head_costs, SUM(A.product_sales) AS Total_Sales_By_Dept, SUM(A.product_sales) - B.over_head_costs AS Profit
    FROM products A, departments B
    WHERE a.department_name = b.department_name
    GROUP BY department_name
    ORDER BY department_id;