CREATE DATABASE employedata;
USE employedata;

CREATE TABLE department(
department_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255)
);


CREATE TABLE employe(
	id INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(10),
    salary DOUBLE,    
    department_id INT DEFAULT 1,
    FOREIGN KEY(department_id) REFERENCES department(department_id)
);

INSERT INTO department(name) VALUE("C09");
INSERT INTO department(name) VALUE("C10");

INSERT INTO employe(name,email,address,phone,salary,department_id) VALUE('Hoàng Minh Tiến','tien@gmail.com','Bắc Ninh','0987612345',5000,1);
INSERT INTO employe(name,email,address,phone,salary,department_id) VALUE('Nguyễn Tuấn','tuan@gmail.com','Hà Nội','0988882345',3000,2);

-- update employe set name = 'tien' ,email = 'tien@' ,address = 'tienhn',phone = '09977654', salary = 100000, department_id = 1 where id = 1;

SELECT employe.*, Department.name as classname 
FROM employe 
JOIN department USING(department_id)
WHERE employe.name LIKE "t%";

SELECT employe.*, Department.name as classname 
FROM employe 
JOIN department USING(department_id);

