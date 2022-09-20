create database qa_restaurant;
USE qa_restaurant;
CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
phone_number CHAR(11) NOT NULL,
PRIMARY KEY(cust_id));

SHOW TABLES; #display all the tables in the database you're in (READ - DDL)

DESCRIBE customers; #display the details of the tables
DROP TABLE customers; #deletes a table (DELETE - DDL)
DROP DATABASE qa_restaurant; #delete a database (DELETE - DDL)