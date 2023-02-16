CREATE DATABASE acountdata;
use acountdata;

CREATE TABLE account(
id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(20) UNIQUE,
password VARCHAR(20),
name VARCHAR(20),
img VARCHAR(255),
role VARCHAR(10)
);

INSERT INTO acount(username,password,name,img,role) VALUE('admin','admin123','ADMIN','https://i.pinimg.com/564x/c6/e5/65/c6e56503cfdd87da299f72dc416023d4.jpg','admin');
SELECT * FROM acount;
DROP TABLE acount;