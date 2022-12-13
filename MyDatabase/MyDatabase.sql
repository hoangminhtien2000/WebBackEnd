CREATE DATABASE mydata;
CREATE TABLE mydata.student(
id INT ,
name  VARCHAR(255),
age INT,
gender BOOLEAN
);

ALTER TABLE mydata.student
CHANGE COLUMN id id INT NOT NULL,
ADD PRIMARY KEY (id);

ALTER TABLE mydata.student
ADD COLUMN gender BOOLEAN;
ALTER TABLE mydata.student 
DROP COLUMN gender;

INSERT INTO student VALUE (0,'Hoàng Minh Tiến', 22,TRUE);
INSERT INTO student VALUE (2,'Mai Minh Phương', 27,TRUE);
INSERT INTO student VALUE (1,'Tiến', 27,TRUE);

UPDATE student SET age=27 WHERE id=1;
DELETE FROM student 
WHERE id=0;
Drop table student;
delete from student;

SELECT * FROM student;
SELECT id FROM student;
SELECT * FROM student LIMIT 1;






