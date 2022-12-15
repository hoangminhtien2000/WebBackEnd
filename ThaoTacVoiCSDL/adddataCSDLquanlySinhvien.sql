CREATE DATABASE CSDLQuanlySV;
use CSDLQuanlySV;

CREATE TABLE class(
classId INT PRIMARY KEY,
className VARCHAR(5),
startDate DATE,
status BOOLEAN
);

CREATE TABLE student(
studentId INT PRIMARY KEY AUTO_INCREMENT,
studentName VARCHAR(20),
address VARCHAR(20),
phone VARCHAR(12),
status BOOLEAN,
classId INT,
FOREIGN KEY(classId)REFERENCES class(classId)
);

CREATE TABLE subject(
subId INT PRIMARY KEY,
subname VARCHAR(20),
credit INT,
status BOOLEAN
);

CREATE TABLE mark(
markId INT PRIMARY KEY AUTO_INCREMENT,
subId INT,
studentId INT,
mark INT,
examTimes INT,
FOREIGN KEY (subId) REFERENCES subject(subId),
FOREIGN KEY (studentId) REFERENCES student(studentId)
);

ALTER TABLE mark
ADD FOREIGN KEY (subId) REFERENCES subject(subId);
ALTER TABLE mark
ADD FOREIGN KEY (studentId) REFERENCES student(studentId);
ALTER TABLE mark
ADD PRIMARY KEY (markId) ;
ALTER TABLE mark MODIFY COLUMN markId INT AUTO_INCREMENT;

INSERT INTO class VALUE(1,'A1','2008-12-20',1);
INSERT INTO Class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);

INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);

SELECT * FROM class;
SELECT * FROM mark;

DROP TABLE mark;
DROP TABLE student;
DROP TABLE class;
DROP TABLE subject;

