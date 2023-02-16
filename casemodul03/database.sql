create database shopdata;
use shopdata;

CREATE TABLE roles(
role_id int AUTO_INCREMENT PRIMARY key,
role_name varchar(255) UNIQUE not null
);

create table users(
user_id int AUTO_INCREMENT primary key,
email varchar(255) unique,
password VARCHAR(255),
first_name varchar(255),
last_name varchar(255),
phone_number VARCHAR(255),
address varchar(255),
role_id int DEFAULT 2,
foreign key (role_id) REFERENCES roles(role_id)
);

CREATE TABLE bills(
bill_id int AUTO_INCREMENT PRIMARY key,
user_id int not null,
date DATETIME DEFAULT now(),
foreign key (user_id) REFERENCES users(user_id)
);

create table sizes(
size_id int AUTO_INCREMENT PRIMARY key,
size_name VARCHAR(255) UNIQUE
);

create table colors(
color_id int AUTO_INCREMENT PRIMARY key,
color_name VARCHAR(255) UNIQUE
);

create table types(
type_id int AUTO_INCREMENT PRIMARY key,
type_name VARCHAR(255) UNIQUE
);

create table products(
product_id int AUTO_INCREMENT PRIMARY key,
product_name varchar(255),
price DOUBLE,
status INT DEFAULT 1,
size_id INT,
color_id INT,
type_id int,
FOREIGN KEY (size_id) REFERENCES sizes(size_id),
FOREIGN KEY (color_id) REFERENCES colors(color_id),
FOREIGN KEY (type_id) REFERENCES types(type_id)
);

create table imgs(
img_id int AUTO_INCREMENT PRIMARY key,
url_img LONGTEXT,
product_id int,
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

create TABLE warehouses(
warehouse_id  int AUTO_INCREMENT PRIMARY key,
product_id int,
quantity int,
FOREIGN KEY  (product_id) references products(product_id)
);

CREATE table billdetails(
bill_id int,
FOREIGN KEY (bill_id) REFERENCES bills(bill_id),
product_id int,
FOREIGN KEY (product_id) REFERENCES products(product_id),
unit int
);

CREATE table comments(
comment_id int AUTO_INCREMENT PRIMARY key,
content longtext,
product_id int,
foreign key (product_id) references products(product_id),
user_id int,
foreign key (user_id) references users(user_id)
);

INSERT INTO roles(role_name) VALUE("admin");
INSERT INTO roles(role_name) VALUE("user");

INSERT INTO users(email,password,first_name,last_name,phone_number,address,role_id) VALUE("admin@gmail.com","admin123","PTTT","ADMIN","0965347621","HaNoi","1");
INSERT INTO users(email,password,first_name,last_name,phone_number,address) VALUE("tien@gmail.com","tien123","Tien","Hoang","0937347699","BacNinh");
INSERT INTO users(email,password,first_name,last_name,phone_number,address) VALUE("phuong@gmail.com","phuong123","Phuong","Mai","0988347799","HaNoi");
INSERT INTO users(email,password,first_name,last_name,phone_number,address) VALUE("tuan@gmail.com","tuan123","Tuan","Pocy","0966778844","HaNoi");
INSERT INTO users(email,password,first_name,last_name,phone_number,address) VALUE("sirobon@gmail.com","sirobon123","Tuan","Sirobon","0933995577","HaNoi");

INSERT INTO bills(user_id) VALUE("2");
INSERT INTO bills(user_id,date) VALUE("3","2022/12/29");
INSERT INTO bills(user_id,date) VALUE("4","2022/12/30");
INSERT INTO bills(user_id,date) VALUE("5","2022/12/31");

INSERT INTO sizes(size_name) VALUE("S");
INSERT INTO sizes(size_name) VALUE("M");
INSERT INTO sizes(size_name) VALUE("L");
INSERT INTO sizes(size_name) VALUE("XL");
INSERT INTO sizes(size_name) VALUE("XXL");

INSERT INTO colors(color_name) VALUE("Black");
INSERT INTO colors(color_name) VALUE("White");
INSERT INTO colors(color_name) VALUE("Pink");
INSERT INTO colors(color_name) VALUE("Red");
INSERT INTO colors(color_name) VALUE("Purple");
INSERT INTO colors(color_name) VALUE("Brown");

INSERT INTO types(type_name) VALUE("Sexy");
INSERT INTO types(type_name) VALUE("Quần sọt");
INSERT INTO types(type_name) VALUE("Váy");
INSERT INTO types(type_name) VALUE("Lưng cao");
INSERT INTO types(type_name) VALUE("Kèm áo choàng");

INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Infinity Flex Bra",1044.95,1,2,5,1);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Infinity Flex Bra",1044.95,1,3,1,1);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Infinity Flex Bra",1044.95,1,4,6,1);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Shine Strap Lace Garter Belt",2500,1,2,1,2);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Shine Strap Lace Garter Belt",2500,1,3,5,2);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Shine Strap Lace Garter Belt",2500,1,4,4,2);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Plush Long Robe",3068.95,1,2,1,3);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Plush Long Robe",3068.95,1,3,3,3);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Plush Long Robe",3068.95,1,4,1,3);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Essential Scoop One-Piece Swimsuit",1569.95,1,2,2,4);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Essential Scoop One-Piece Swimsuit",1569.95,1,3,3,4);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Essential Scoop One-Piece Swimsuit",1569.95,1,4,5,4);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Aristino ASU00302",4000,1,2,1,5);
INSERT INTO products(product_name,price,status,size_id,color_id,type_id) VALUE("Aristino ASU00302",4000,1,3,5,5);

INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/0e/f0/0ef0f5781d9f43b1952bf9889afcf22a/112061464SHM_OM_F.jpg",1);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/d0/01/d00191a833e3474db318c0fdd41dda25/1120614654A2_OM_F.jpg",2);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/2c/93/2c936fa8bcc448d9bc925028e295ead3/112061463XY0_OM_S.jpg",3);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/3d/4b/3d4b6677fccc4704bc2793d72cdfd5f1/1118830754A2_OM_F.jpg",4);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/c5/3f/c53f8ae224d44e85a61134676f9a83a1/111883074UXK_OF_F.jpg",5);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/67/ad/67ad93c558394099ae730d7aefd5ac05/1118830786Q4_OM_F.jpg",6);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/ae/c5/aec54e870a2d4e538027038e6ae28f45/1117613054A2_OM_F.jpg",7);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/c9/cd/c9cd12b308a84054b25db5de6599eeb8/1117613093S0_OM_F.jpg",8);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/ae/c5/aec54e870a2d4e538027038e6ae28f45/1117613054A2_OM_F.jpg",9);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/95/26/9526534ae257418296f1a4b866c7396a/1119317058KC_OM_F.jpg",10);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/9a/d9/9ad9509b00ef46c38ab99611496cfce6/112045045M4A_OM_F.jpg",11);
INSERT INTO imgs(url_img,product_id) VALUE("https://www.victoriassecret.com/p/760x1013/tif/d8/eb/d8ebc03e6c9f41bf902457d8f2c5c88a/112005670RI2_OM_B.jpg",12);
INSERT INTO imgs(url_img,product_id) VALUE("https://aristino.com/Data/ResizeImage/images/product/bo-suit/asu00302/Bo-vest-nam-ASU00302-den-4-x900x900x4.webp",13);
INSERT INTO imgs(url_img,product_id) VALUE("https://aristino.com/Data/ResizeImage/images/product/bo-suit/asu00302/Bo-vest-nam-ASU00302-tim-than-4-x900x900x4.webp",14);

INSERT INTO warehouses(product_id,quantity) VALUE(1,5);
INSERT INTO warehouses(product_id,quantity) VALUE(2,5);
INSERT INTO warehouses(product_id,quantity) VALUE(3,5);
INSERT INTO warehouses(product_id,quantity) VALUE(4,5);
INSERT INTO warehouses(product_id,quantity) VALUE(5,5);
INSERT INTO warehouses(product_id,quantity) VALUE(6,5);
INSERT INTO warehouses(product_id,quantity) VALUE(7,5);
INSERT INTO warehouses(product_id,quantity) VALUE(8,5);
INSERT INTO warehouses(product_id,quantity) VALUE(9,5);
INSERT INTO warehouses(product_id,quantity) VALUE(10,5);
INSERT INTO warehouses(product_id,quantity) VALUE(11,5);
INSERT INTO warehouses(product_id,quantity) VALUE(12,5);
INSERT INTO warehouses(product_id,quantity) VALUE(13,5);
INSERT INTO warehouses(product_id,quantity) VALUE(14,5);

INSERT INTO billdetails(bill_id,product_id,unit) VALUE(1,13,2);
INSERT INTO billdetails(bill_id,product_id,unit) VALUE(2,14,1);

INSERT INTO comments(content,product_id,user_id) VALUE("Good",13,1);
INSERT INTO comments(content,product_id,user_id) VALUE("Very Good",14,2);
 
SELECT products.product_id, products.product_name, imgs.url_img, products.price, warehouses.quantity, products.status,sizes.size_name,colors.color_name,types.type_name  
FROM imgs
JOIN products USING(product_id) 
JOIN sizes USING(size_id)
JOIN colors USING(color_id)
JOIN types USING(type_id)
JOIN warehouses USING(product_id)
ORDER BY product_id;

SELECT * FROM products;
SELECT * FROM imgs;
SELECT * FROM warehouses;

-- select * from imgs where url_img = 'https://www.victoriassecret.com/p/760x1013/tif/0e/f0/0ef0f5781d9f43b1952bf9889afcf22a/112061464SHM_OM_F.jpg' and product_id =1;
-- select * from warehouses where warehouse_id =1 and product_id = 1;
-- select * from products where product_id =1;

-- insert into imgs(url_img,product_id) value ('https://cdn.tgdd.vn/Products/Images/42/238046/xiaomi-redmi-k40-game-enhanced-edition-600x600.jpg',2);
-- insert into warehouses(product_id,quantity) value (15,3);
-- update products set product_name='a', price=123,size_id=1,color_id=1,type_id=1  where product_id=1;
-- UPDATE imgs set url_img='https://cdn.tgdd.vn/Products/Images/42/238046/xiaomi-redmi-k40-game-enhanced-edition-600x600.jpg',product_id=4 WHERE url_img ='https://www.victoriassecret.com/p/760x1013/tif/2c/93/2c936fa8bcc448d9bc925028e295ead3/112061463XY0_OM_S.jpg' and  product_id=3;
-- UPDATE warehouses SET quantity=?,product_id=? WHERE warehouse_id=?; 
 -- delete from imgs where url_img ='https://www.victoriassecret.com/p/760x1013/tif/0e/f0/0ef0f5781d9f43b1952bf9889afcf22a/112061464SHM_OM_F.jpg' and product_id =1;
--  delete from warehouses where quantity =5 and product_id =1;
--  delete from products where product_id =1;