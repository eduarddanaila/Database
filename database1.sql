CREATE DATABASE qa_restaurant;

USE qa_restaurant;

CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
phone_no CHAR(11) NOT NULL,
PRIMARY KEY(cust_id));