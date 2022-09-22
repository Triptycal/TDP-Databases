CREATE TABLE order_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
order_id INT NOT NULL,
item_id INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY(oi_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
FOREIGN KEY (item_id) REFERENCES items(item_id) ON DELETE CASCADE);

INSERT INTO order_items(order_id, item_id,quantity) VALUES
(1,2,3), #(CREATE -DML)
(1,5,1),
(2,6,1),
(2,4,2),
(3,6,2),
(3,2,1),
(4,1,5),
(4,4,1),
(5,5,1);

;

SELECT * FROM order_items; #(READ - DML)