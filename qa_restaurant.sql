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

INSERT INTO customers(cust_name, phone_number) VALUES
("Amy","07946621661"),
("Becci","97946621111"),
("Cathy","97923621123"),
("Dean","97923622233"),
("Eddy","97924441123"); #(CREATE -DML)

UPDATE customers SET cust_name="Fred", phone_number="11233333333" WHERE cust_id=2;
UPDATE customers SET cust_name="Grace", phone_number="11255782333" WHERE cust_id=1;
DELETE FROM customers WHERE cust_id=3;
INSERT INTO customers(cust_name, phone_number) VALUES("Harry","97924141123");

SELECT * FROM customers; #(READ - DML)

CREATE TABLE items(
item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item_name VARCHAR(100) NOT NULL,
item_price float(8) NOT NULL,
PRIMARY KEY(item_id));

SHOW TABLES; #display all the tables in the database you're in (READ - DDL)

DESCRIBE items; #display the details of the tables

INSERT INTO items(item_name, item_price) VALUES
("Apple",0.65), #(CREATE -DML)
("Burger",1.84),
("Carrot",0.79),
("Duck",6.89),
("Elair",1.29);

UPDATE items SET item_name="Flour", item_price=2.45 WHERE item_id=2;
UPDATE items SET item_name="Grapes", item_price=1.59 WHERE item_id=1;
DELETE FROM items WHERE item_id=3;
INSERT INTO items(item_name, item_price) VALUES("Ham",2.39);

SELECT * FROM items; #(READ - DML)
SELECT item_id,item_price FROM items; #(READ - DML)