#READ from tables to view the records:
#- SELECT * FROM table_name;
#- SELECT col1, col2, col4 FROM table_name;
#WHERE clause
# - SELECT * FROM table_name WHERE col_name=value;
SELECT * FROM order_items WHERE order_id=2;#filtering what you see

#OPERATORS
# = equals to...
# > - exclusive
# < - excluding
# !=
# >= - inclusive 
# <= - inclusive
SELECT * FROM items;
SELECT * FROM items WHERE item_price>5.00;
SELECT * FROM items WHERE item_price!=5.00;
SELECT * FROM items WHERE item_price>1.00 AND price<5.00;
SELECT * FROM items WHERE item_price BETWEEN 1.00 AND 5.00; #INCLUSIVE RANGE - includes the numbers stated
# search for patterns - text data
SELECT * FROM items WHERE item_name LIKE "%y"; # finds any item_name that ends with y
SELECT * FROM items WHERE item_name LIKE "c%"; #finds any item_ name that begins with c

SELECT DISTINCT ord_id from order_items;#selects unique values in the stated column of chosen table

#ORDERING DATA - any type of data
SELECT * FROM items ORDER BY item_name ASC; # item_name in ascending order
SELECT * FROM items ORDER BY item_name DESC; # item_name in descending order

#LIMITING DATA - any type of data
SELECT * FROM items LIMIT 2;# first 2 records
SELECT * FROM items ORDER BY item_id DESC LIMIT 2; #last 2 records
SELECT * FROM items ORDER BY item_name DESC LIMIT 3; #last 2 records