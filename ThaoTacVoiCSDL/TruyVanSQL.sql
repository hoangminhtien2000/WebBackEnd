CREATE DATABASE truyvandata;
USE truyvandata;
CREATE TABLE truyvandata.table1(
id INT PRIMARY KEY,
name VARCHAR(255),
age INT,
id_table2 INT,
FOREIGN KEY (id_table2) REFERENCES table2(id)
);

CREATE TABLE truyvandata.table2(
id INT PRIMARY KEY,
address VARCHAR(255),
gender BIT
);

INSERT INTO table1 VALUE(0,'tien',22,0);
INSERT INTO table1 VALUE(1,'phuong',27,1);
INSERT INTO table2 VALUE(0,'Nguyen Co Thach',TRUE);
INSERT INTO table2 VALUE(1,'Ha Noi',TRUE);

DROP TABLE table2;

SELECT * FROM table1;
SELECT * FROM table2;
SELECT table1.id, table1.name,table1.age, table2.address, table2.gender
FROM table1
JOIN table2 ON table1.id_table2=table2.id;