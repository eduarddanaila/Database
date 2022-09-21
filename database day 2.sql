CREATE DATABASE kfc;

USE kfc;

CREATE TABLE customers(
c_id INT UNIQUE NOT NULL AUTO_INCREMENT,
c_name VARCHAR(100) DEFAULT "unknown",
phone_number VARCHAR(11) NOT NULL,
over_18 BOOLEAN NOT NULL,
points DECIMAL(6,2), 
PRIMARY KEY(c_id));

SHOW TABLES;

DESCRIBE customers;

DROP TABLE items;

ALTER TABLE customers ADD age INT NOT NULL;
ALTER TABLE customers DROP COLUMN over_18;
ALTER TABLE customers MODIFY C_name VARCHAR(50) DEFAULT"N/A";

CREATE TABLE customers(
c_id INT UNIQUE NOT NULL AUTO_INCREMENT,
c_name VARCHAR(100) NOT NULL,
c_email VARCHAR(50) NOT NULL, 
c_phone_no VARCHAR(11) DEFAULT "Unknown",
over_18 BOOLEAN NOT NULL, 
c_postcode VARCHAR(11) DEFAULT "Unknown",
PRIMARY KEY (c_id));

CREATE TABLE items(
i_id INT UNIQUE NOT NULL AUTO_INCREMENT,
i_description VARCHAR(50) NOT NULL,
allergens VARCHAR(50) DEFAULT "No Allergens",
sit_in_only BOOLEAN, 
PRIMARY KEY(i_id));

ALTER TABLE customers MODIFY c_phone_no VARCHAR(11) DEFAULT "Unknown" UNIQUE;

SHOW TABLES;

DESCRIBE customers;

SELECT * FROM items;

INSERT INTO customers(c_name, c_phone_no, c_email, over_18) VALUES("ed", "12345678913", "abcd@asdf.com", "1");

DELETE FROM customers WHERE c_id=4;

SELECT c_id, c_name FROM customers;
SELECT * FROM customers;


DESCRIBE items;
UPDATE customers set c_name="DIANA" WHERE c_id=4;
UPDATE customers SET over_18="1" WHERE c_id=1;
ALTER TABLE items DROP COLUMN sit_in_only;
INSERT INTO items(i_description, allergens) values("fruit juice", "none");
UPDATE items SET i_description="fruit juice" WHERE i_id=4;

DELETE FROM customers WHERE c_id=3;

SELECT c_name FROM customers;

CREATE TABLE items(
item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item_name VARCHAR(20),
price DECIMAL(6,2),
PRIMARY KEY (item_id));

SELECT * FROM items;

CREATE TABLE orders(
order_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_id INT NOT NULL,
total_price DECIMAL(6,2),
PRIMARY KEY(order_id),
FOREIGN KEY (cust_id) REFERENCES customers(c_id));

SELECT * FROM orders;
DESCRIBE orders;
CREATE TABLE order_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
ord_id INT NOT NULL,
i_id INT NOT NULL,
quantity INT,
PRIMARY KEY (oi_id),
FOREIGN KEY(ord_id) REFERENCES orders(order_id),
FOREIGN KEY(i_id) REFERENCES items(item_id));

SHOW tables;
ALTER TABLE orders ADD order_date DATETIME NOT NULL;
INSERT INTO items(item_name, price, i_description) VALUES("food5", "50.00", "sdaFTGDYR");