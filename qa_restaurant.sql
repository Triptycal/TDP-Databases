create database qa_restaurant;
USE qa_restaurant;
CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
phone_number CHAR(11) NOT NULL,
PRIMARY KEY(cust_id));

SHOW TABLES; #display all the tables in the database you're in (READ - DDL)

DESCRIBE customers; #display the details of the tables
DROP TABLE items; #deletes a table (DELETE - DDL)
DROP DATABASE qa_restaurant; #delete a database (DELETE - DDL)

INSERT INTO customers(cust_name, phone_number) VALUES("Amy","07946621661"); #(CREATE -DML)
INSERT INTO customers(cust_name, phone_number) VALUES("Becci","97946621111");
INSERT INTO customers(cust_name, phone_number) VALUES("Cathy","97923621123");

SELECT * FROM customers; #(READ - DML)

CREATE TABLE items(
item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item_name VARCHAR(100) NOT NULL,
item_price float(8) NOT NULL,
PRIMARY KEY(item_id));

SHOW TABLES; #display all the tables in the database you're in (READ - DDL)

DESCRIBE items; #display the details of the tables

INSERT INTO items(item_name, item_price) VALUES("Apple",0.65); #(CREATE -DML)
INSERT INTO items(item_name, item_price) VALUES("Burger",1.84);
INSERT INTO items(item_name, item_price) VALUES("Carrot",0.79);

SELECT * FROM items; #(READ - DML)