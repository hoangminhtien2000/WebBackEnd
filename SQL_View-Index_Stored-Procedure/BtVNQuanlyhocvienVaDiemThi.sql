CREATE DATABASE hocviendiemthi;
use hocviendiemthi;

CREATE TABLE test(
testId INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20)
);

CREATE TABLE student(
rn INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20),
age INT,
status VARCHAR(10) DEFAULT NULL
);

CREATE TABLE studenttest(
rn INT,
testId INT,
date DATETIME DEFAULT CURRENT_TIMESTAMP,
mark DOUBLE,
FOREIGN KEY(rn) REFERENCES student(rn),
FOREIGN KEY(testId) REFERENCES test(testId),
CONSTRAINT rn_testId PRIMARY KEY(rn,testId)
);

DROP TABLE studenttest;
DROP TABLE student;
DROP TABLE test;

INSERT INTO student(name,age) VALUE('Nguyen Hong Ha',20);
INSERT INTO student(name,age) VALUE('Truong Ngoc Anh',30);
INSERT INTO student(name,age) VALUE('Tuan Minh',25);
INSERT INTO student(name,age) VALUE('Dan Truong',22);

INSERT INTO test(name) VALUE('EPC');
INSERT INTO test(name) VALUE('DWMX');
INSERT INTO test(name) VALUE('SQL1');
INSERT INTO test(name) VALUE('SQL2');

INSERT INTO studenttest(rn,testId,date,mark) VALUE(1,1,'2006/7/17',8);
INSERT INTO studenttest VALUE(1,2,'2006/7/18',5);
INSERT INTO studenttest VALUE(1,3,'2006/7/19',7);
INSERT INTO studenttest VALUE(2,1,'2006/7/17',7);
INSERT INTO studenttest VALUE(2,2,'2006/7/18',4);
INSERT INTO studenttest VALUE(2,3,'2006/7/19',2);
INSERT INTO studenttest VALUE(3,1,'2006/7/17',10);
INSERT INTO studenttest VALUE(3,3,'2006/7/18',1);

-- Cau 2 Hiển thị danh sách các học viên đã tham gia thi, các môn thi được thi bởi các học viên đó, điểm thi và ngày thi
SELECT student.name as 'Student Name',test.name as 'Test Name',st.mark as 'Mark',st.date as'Date' 
FROM studenttest  as st
JOIN student USING(rn)
JOIN test USING(testId);

-- Cau 3 Hiển thị danh sách các bạn học viên chưa thi môn nào
SELECT student.*
FROM studenttest as st
RIGHT JOIN student USING(rn)
WHERE st.rn is null;

-- Cau 4 Hiển thị danh sách học viên phải thi lại, tên môn học phải thi lại và điểm thi(điểm phải thi lại là điểm nhỏ hơn 5)
SELECT student.name as 'Student Name', test.name as 'Test Name', mark as 'Mark', date as 'Date'
FROM studenttest as st
JOIN student USING(rn)
JOIN test USING(testId)
WHERE mark<5;

-- Cau5 Hiển thị danh sách học viên và điểm trung bình(Average) của các môn đã thi. Danh sách phải sắp xếp theo thứ tự điểm 
-- trung bình giảm dần(nếu không sắp xếp thì chỉ được ½ số điểm)
SELECT student.name as 'Student Name',avg((mark)) AS 'Average'
FROM studenttest as st
JOIN student USING(rn)
WHERE mark
GROUP BY rn
ORDER BY Average DESC;

-- Cau 6 Hiển thị tên và điểm trung bình của học viên có điểm trung bình lớn nhất:
SELECT student.name as 'Student Name',max(avg((mark)) ) AS 'Average'
FROM studenttest as st 
JOIN student USING(rn)
WHERE mark
GROUP BY rn;

select student.name,avg(StudentTest.Mark) from
StudentTest join student on StudentTest.RN = student.RN
group by student.name
Having avg(StudentTest.Mark) >= all (select avg(StudentTest.Mark) from StudentTest group by studentTest.RN);

-- Cau 7:Hiển thị điểm thi cao nhất của từng môn học. Danh sách phải được sắp xếp theo tên môn học:
SELECT test.name as 'Test Name',max(mark) AS 'Max Mark'
FROM studenttest as st
JOIN test USING(testId)
GROUP BY test.name
ORDER BY test.name;

-- Cau 8 Hiển thị danh sách tất cả các học viên và môn học mà các học viên đó đã thi nếu học viên chưa thi môn nào thì phần tên môn học để Null
SELECT student.name AS 'Student Name',test.name AS 'Test Name'
FROM studenttest as st
RIGHT JOIN student USING(rn)
LEFT JOIN test USING(testId);

-- Cau 9 Sửa (Update) tuổi của tất cả các học viên mỗi người lên một tuổi.
SET SQL_SAFE_UPDATES = 0;
UPDATE student
set age=age+1;
SELECT * FROM student;

-- Cau 10: Thêm trường tên là Status có kiểu Varchar(10) vào bảng Student
ALTER TABLE student ADD Status VARCHAR(10);

-- Cau 11: Cập nhật(Update) trường Status sao cho những học viên nhỏ hơn 30 tuổi sẽ nhận giá trị ‘Young’, 
-- trường hợp còn lại nhận giá trị ‘Old’ sau đó hiển thị toàn bộ nội dung bảng Student
SET SQL_SAFE_UPDATES = 0;
UPDATE student 
SET status=(CASE
WHEN age<30 THEN 'YOUNG'
ELSE 'OLD'
END);

-- Câu 12: Tạo view tên là vwStudentTestList hiển thị danh sách học viên và điểm thi, dánh sách phải sắp xếp tăng dần theo ngày thi
CREATE VIEW vwStudentTestList AS
SELECT student.name as 'Student Name', test.name as 'Test Name', mark as 'Mark', date as 'Date'
FROM studenttest as st
JOIN student USING(rn)
JOIN test USING(testId)
order by date asc;

SELECT * FROM vwStudentTestList;

-- Câu 13: Tạo một trigger tên là tgSetStatus sao cho khi sửa tuổi của học viên thi trigger này sẽ tự động cập nhật status theo quy tắc sau:
-- 		Nếu tuổi nhỏ hơn 30 thì Status=’Young’
-- 		Nếu tuổi lớn hơn hoặc bằng 30 thì Status=’Old’
DELIMITER //
CREATE TRIGGER tgSetStatus
 BEFORE UPDATE ON student
 FOR EACH ROW
 BEGIN 
SET new.status=(CASE WHEN new.age<30 THEN 'YOUNG' ELSE 'OLD'END);
 END//
DELIMITER ;

DROP TRIGGER tgSetStatus;

-- Câu 14 Tạo một stored procedure tên là spViewStatus, stored procedure này nhận vào 2 tham số:	
-- 		Tham số thứ nhất là tên học viên					
-- 		Tham số thứ 2 là tên môn học
-- Nếu tên học viên hoặc tên môn học không tìm thây trong cơ sở dữ liệu thì hiện ra màn hình thông báo: ‘Khong tim thay’
-- Trường hợp còn lại thi hiển thị trạng thái của học viên đó với môn học đó theo quy tắc sau:
-- 		Hiển thị ‘Chua thi’ nếu học viên đó chưa thi môn đó
-- 		Hiển thị ‘Do’ nếu đã thi rồi và điểm lơn hơn hoặc bằng 5
-- 		Hiển thị ‘Trượt’ nếu đã thi rồi và điểm thi nhỏ hơn 5

DELIMITER $$
create procedure spViewStatus (tenhv varchar(30), tenmh varchar(30), out ketqua varchar(30))
begin
    set @demsinhvien = (select count(rn) from student where name = tenhv);
    set @demmonhoc = (select count(testid) from test where name = tenmh);

    if @demsinhvien = 0 or @demmonhoc = 0 then 
		set ketqua = 'Khong tim thay';
	else
		set @diem = (select mark
		from student join studenttest on student.rn = studenttest.rn
			join test on test.testid = studenttest.testid
		where student.name = tenhv and test.name = tenmh);
        
        if @diem >= 5 then
			set ketqua = 'Do';
		else if @diem < 5 then
			set ketqua = 'Truot';
		else 
			set ketqua = 'Chua thi';
            end if;
		end if;
	end if;
end$$
DELIMITER ;

set @ketqua = '';
call spViewStatus ("Nguyen Hong Ha", "SQL2", @ketqua);
select(@ketqua)










