create database bigburger;
use bigburger;

CREATE TABLE items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Orders (
    oid INT AUTO_INCREMENT PRIMARY KEY,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    itemname varchar(100),
    quantity int
);

CREATE TABLE userIng (
    uid INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(100),
    email varchar(100),
    message text
);