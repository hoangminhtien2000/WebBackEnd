CREATE DATABASE productdata;
use productdata;

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20),
img VARCHAR(255),
price INT
);

INSERT INTO product(name,img,price) VALUE('Iphone','https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-tim-thumb-600x600.jpg',33000000);
INSERT INTO product(name,img,price) VALUE('K40Gaming','https://cdn.tgdd.vn/Products/Images/42/238046/xiaomi-redmi-k40-game-enhanced-edition-600x600.jpg',8000000);
SELECT * FROM product;
DROP TABLE product;


CREATE TABLE account(
id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(20) UNIQUE,
password VARCHAR(20),
name VARCHAR(20),
img VARCHAR(255),
role VARCHAR(10)
);

INSERT INTO account(username,password,name,img,role) VALUE('admin','admin123','ADMIN','https://i.pinimg.com/564x/c6/e5/65/c6e56503cfdd87da299f72dc416023d4.jpg','admin');
SELECT * FROM account;
DROP TABLE account;