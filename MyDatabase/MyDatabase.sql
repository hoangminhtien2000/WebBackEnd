CREATE DATABASE mydata;
CREATE TABLE mydata.student(
id INT PRIMARY KEY,
name VARCHAR(255),
age INT,
gender BIT,
id_class INT,
FOREIGN KEY(id_class) REFERENCES class(id)
);

CREATE TABLE mydata.class(
id INT PRIMARY KEY,
name VARCHAR(255)
);

INSERT INTO student VALUE(0,'Hoang Tien',22,TRUE,1);
INSERT INTO student VALUE(1,'Mai Phuong',27,TRUE,2);
INSERT INTO student VALUE(2,'Cuong',23,FALSE,3);
INSERT INTO student VALUE(3,'Cuong12',23,FALSE,1);

INSERT INTO class VALUE(1,"C09");
INSERT INTO class VALUE(2,"C07");
INSERT INTO class VALUE(3,"C010");

ALTER TABLE mydata.student
ADD COLUMN address VARCHAR(20);
UPDATE student SET address='Nguyễn Cơ Thạch' WHERE id=0;

UPDATE student SET age=18 WHERE id=2;

ALTER TABLE mydata.student 
MODIFY COLUMN gender VARCHAR(10);

DELETE FROM student WHERE id=3;
DROP TABLE mydata.student;

DROP TABLE mydata.class;

SELECT * FROM student;
SELECT * FROM student LIMIT 2;
SELECT age FROM student;

SELECT * FROM class;