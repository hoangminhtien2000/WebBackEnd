CREATE DATABASE Forum;
use Forum;
CREATE TABLE chude(
maCD VARCHAR(10) PRIMARY KEY,
tenCD VARCHAR(20)
);
CREATE TABLE thanhvien(
maTV VARCHAR(10) PRIMARY KEY,
tenTV VARCHAR(20),
matma VARCHAR(10)
);
CREATE TABLE baiviet(
maBV VARCHAR(10) PRIMARY KEY,
tieude VARCHAR(20),
noidung LONGTEXT,
maCD VARCHAR(10),
maTV VARCHAR(10),
FOREIGN KEY(maCD)REFERENCES chude(maCD),
FOREIGN KEY(maTV)REFERENCES thanhvien(matv),
maBaiVietThaoLuan VARCHAR(10),
FOREIGN KEY(maBaiVietThaoLuan) REFERENCES baiviet(maBV)
);
ALTER TABLE baiviet ADD mabaivietthaoluan VARCHAR(10);
SELECT * FROM baiviet;
SELECT * FROM thanhvien;
SELECT * FROM chude;

DROP TABLE baiviet;
DROP TABLE thanhvien;
DROP TABLE chude;

