CREATE TABLE orders(
order_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_id INT NOT NULL,
order_date DATE NOT NULL,
total_price DECIMAL(11,2) NOT NULL,
PRIMARY KEY(order_id),
FOREIGN KEY (cust_id) REFERENCES customers(cust_id));

INSERT INTO orders(cust_id, order_date,total_price) VALUES
(1,"2022-09-18",8.64), #(CREATE -DML)
(2,"2022-09-19",16.17), 
(4,"2022-09-19",7.23), 
(5,"2022-09-20",14.84), 
(6,"2022-09-21",1.29);

SELECT * FROM orders; #(READ - DML)