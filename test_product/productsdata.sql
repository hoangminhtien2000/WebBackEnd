CREATE DATABASE productsdata;
use productsdata;

create table products(
product_id int AUTO_INCREMENT PRIMARY key,
product_name varchar(255),
img LONGTEXT,
price DOUBLE,
status INT,
size varchar(255),
color varchar(255),
type varchar(255)
);

INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Infinity Flex Bra','https://www.victoriassecret.com/p/760x1013/tif/0e/f0/0ef0f5781d9f43b1952bf9889afcf22a/112061464SHM_OM_F.jpg',1044.95,1,'S','Purple','Sexy');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Infinity Flex Bra', 'https://www.victoriassecret.com/p/760x1013/tif/d0/01/d00191a833e3474db318c0fdd41dda25/1120614654A2_OM_F.jpg', '1044.95', '1', 'M', 'Black', 'Sexy');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Infinity Flex Bra', 'https://www.victoriassecret.com/p/760x1013/tif/2c/93/2c936fa8bcc448d9bc925028e295ead3/112061463XY0_OM_S.jpg', '1044.95', '1', 'L', 'Brown', 'Sexy');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Shine Strap Lace Garter Belt', 'https://www.victoriassecret.com/p/760x1013/tif/3d/4b/3d4b6677fccc4704bc2793d72cdfd5f1/1118830754A2_OM_F.jpg', '2500', '1', 'S', 'Black', 'Quần sọt');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Shine Strap Lace Garter Belt', 'https://www.victoriassecret.com/p/760x1013/tif/c5/3f/c53f8ae224d44e85a61134676f9a83a1/111883074UXK_OF_F.jpg', '2500', '1', 'M', 'Purple', 'Quần sọt');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Shine Strap Lace Garter Belt', 'https://www.victoriassecret.com/p/760x1013/tif/67/ad/67ad93c558394099ae730d7aefd5ac05/1118830786Q4_OM_F.jpg', '2500', '1', 'L', 'Red', 'Quần sọt');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Plush Long Robe', 'https://www.victoriassecret.com/p/760x1013/tif/ae/c5/aec54e870a2d4e538027038e6ae28f45/1117613054A2_OM_F.jpg', '3068.95', '1', 'S', 'Black', 'Váy');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Plush Long Robe', 'https://www.victoriassecret.com/p/760x1013/tif/c9/cd/c9cd12b308a84054b25db5de6599eeb8/1117613093S0_OM_F.jpg', '3068.95', '1', 'M', 'Pink', 'Váy');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Plush Long Robe', 'https://www.victoriassecret.com/p/760x1013/tif/ae/c5/aec54e870a2d4e538027038e6ae28f45/1117613054A2_OM_F.jpg', '3068.95', '1', 'L', 'Black', 'Váy');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Essential Scoop One-Piece Swimsuit', 'https://www.victoriassecret.com/p/760x1013/tif/95/26/9526534ae257418296f1a4b866c7396a/1119317058KC_OM_F.jpg', '1569.95', '1', 'S', 'White', 'Lưng cao');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Essential Scoop One-Piece Swimsuit', 'https://www.victoriassecret.com/p/760x1013/tif/9a/d9/9ad9509b00ef46c38ab99611496cfce6/112045045M4A_OM_F.jpg', '1569.95', '1', 'M', 'Pink', 'Lưng cao');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Essential Scoop One-Piece Swimsuit', 'https://www.victoriassecret.com/p/760x1013/tif/d8/eb/d8ebc03e6c9f41bf902457d8f2c5c88a/112005670RI2_OM_B.jpg', '1569.95', '1', 'L', 'Purple', 'Lưng cao');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Aristino ASU00302', 'https://aristino.com/Data/ResizeImage/images/product/bo-suit/asu00302/Bo-vest-nam-ASU00302-den-4-x900x900x4.webp', '4000', '1', 'S', 'Black', 'Kèm áo choàng');
INSERT INTO products(product_name,img,price,status,size,color,type) VALUE('Aristino ASU00302', 'https://aristino.com/Data/ResizeImage/images/product/bo-suit/asu00302/Bo-vest-nam-ASU00302-tim-than-4-x900x900x4.webp', '4000', '1', 'M', 'Purple', 'Kèm áo choàng');